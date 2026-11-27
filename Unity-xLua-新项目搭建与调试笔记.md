# Unity xLua 新项目搭建与调试笔记

这套流程用于在 Windows 上新建 Unity 项目，用 VS Code 编辑 C# 和 Lua，并分别验证两种断点。`Xlua背包` 跑通的环境是 Unity **2022.3.62f3**、Visual Studio Editor **2.0.22** 和 EmmyLua **0.9.41**。Lua 调试使用 **通过进程 ID 附加**。

## 1 安装 VS Code 扩展

| 扩展 | 用途 |
| --- | --- |
| **Unity**（`visualstudiotoolsforunity.vstuc`） | 微软的 Unity 扩展，负责附加到 Unity 编辑器进行 C# 调试。它会带上 C# Dev Kit 和 C#。确认这两个扩展都已启用。 [扩展说明](https://marketplace.visualstudio.com/items?itemName=VisualStudioToolsForUnity.vstuc) |
| **EmmyLua**（`tangzx.emmylua`） | 提供 Lua 补全、代码检查和断点调试。当前版本可以直接使用，无需为它安装 JDK 或配置 `JAVA_HOME`。 [扩展说明](https://marketplace.visualstudio.com/items?itemName=tangzx.emmylua) |
| **EmmyLuaUnity**（`CppCXY.emmylua-unity`） | 按需安装。**Pull Unity API** 可以导出 Unity C# API 定义，让 `CS.UnityEngine` 有补全提示。这个导出功能的文档要求 .NET SDK 8。 [扩展说明](https://marketplace.visualstudio.com/items?itemName=CppCXY.emmylua-unity) |
| **Chinese (Simplified)**（`ms-ceintl.vscode-language-pack-zh-hans`） | 按需安装，只负责 VS Code 中文界面。 [扩展说明](https://marketplace.visualstudio.com/items?itemName=MS-CEINTL.vscode-language-pack-zh-hans) |

已经用 EmmyLua 时，Lua Language Server（`sumneko.lua`）可以先跳过，两者的 Lua 编辑功能有重叠。旧教程里的 **Debugger for Unity** 可以由微软 Unity 扩展覆盖。注释模板、缺失 `using` 的快速修复和常用 Unity 回调补全也可以先用现有扩展。 [LuaLS 功能](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) · [C# 快速修复](https://code.visualstudio.com/docs/csharp/refactoring#_add-missing-usings-imports) · [XML 注释说明](https://marketplace.visualstudio.com/items?itemName=k--kato.docomment)

## 2 新建 Unity 项目并接通 C# 编辑

1. 在 Unity Hub 新建项目，用 Unity 打开项目和要测试的场景。
2. 在 Unity 打开 **Window → Package Manager**，确认 **Visual Studio Editor**（`com.unity.ide.visualstudio`）为 `2.0.20` 或更新版本。
3. 在 **Edit → Preferences → External Tools**，把 **External Script Editor** 设为 **Visual Studio Code**，再点 **Regenerate project files**。
4. 从 Unity 双击一个 `.cs` 脚本。确认 VS Code 打开的是带有 `Assets`、`Packages`、`ProjectSettings` 的项目根目录，根目录里也有 Unity 生成的 `.sln` 和 `.csproj`。
5. 在已有 `using UnityEngine;` 的脚本里输入 `Debug.`，能看到 `Log`、`LogWarning` 等成员就说明 C# 补全已工作。 [VS Code 的 Unity 开发指南](https://code.visualstudio.com/docs/other/unity)

## 3 导入 xLua 并跑通第一段脚本

从腾讯 xLua Releases 选带所需平台原生库的发行包，按原目录结构把包里的 `Assets` 内容合并到新项目的 `Assets`。这次 Windows x64 项目中的原生库位于 `Assets/Plugins/x86_64/xlua.dll`。等待 Unity 编译完成后再加下面两个文件。 [腾讯 xLua 安装说明](https://github.com/Tencent/xLua#安装) · [xLua Releases](https://github.com/Tencent/xLua/releases)

`Assets/Lua/Main.lua`

```lua
print("准备就绪")
```

`Assets/Scripts/LuaBootstrap.cs`

```csharp
using System.IO;
using UnityEngine;
using XLua;

public class LuaBootstrap : MonoBehaviour
{
    private LuaEnv luaEnv;

    private void Start()
    {
        luaEnv = new LuaEnv();
        luaEnv.AddLoader(LoadLuaFile);
        luaEnv.DoString("require('Main')");
    }

    private static byte[] LoadLuaFile(ref string moduleName)
    {
        string path = Path.Combine(Application.dataPath, "Lua", moduleName + ".lua");
        return File.Exists(path) ? File.ReadAllBytes(path) : null;
    }

    private void Update()
    {
        luaEnv?.Tick();
    }

    private void OnDestroy()
    {
        luaEnv?.Dispose();
        luaEnv = null;
    }
}
```

在场景里建一个启用的空物体，把 `LuaBootstrap` 挂上去，然后点 **Play**。Unity Console 出现「准备就绪」就说明 C# 创建了 Lua 环境，自定义加载器也找到了 `Main.lua`。

`Xlua背包` 把同样的流程拆在了 `Main.cs` 和 `LuaMgr.cs` 里。`Main.Start()` 调用 `LuaMgr`，`LuaMgr` 创建 `LuaEnv` 并通过 `require('Main')` 读取 `Assets/Lua/Main.lua`。示例里的文件加载路径用于本地编辑器验证。

## 4 保存两个调试配置

在新项目根目录创建 `.vscode/launch.json`。如果 Unity 已经生成了 **Attach to Unity**，就在它的 `configurations` 数组里追加 Lua 项，两项之间用逗号隔开。

```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Attach to Unity",
            "type": "vstuc",
            "request": "attach"
        },
        {
            "name": "通过进程ID附加",
            "type": "emmylua_attach",
            "request": "attach",
            "pid": 0,
            "processName": ""
        }
    ]
}
```

也可以在 VS Code 的 **运行和调试 → 添加配置** 中选 **EmmyLua: 通过进程 ID 附加**。保留 `pid: 0`，启动时让扩展查找进程，有多个候选时选择当前项目的 `Unity.exe`。这个模式要求目标进程能提供 Lua 符号。菜单里的 **EmmyLua New Debug** 是另一种连接方式，它使用项目内的 `emmy_core` 和 TCP 连接。 [EmmyLua 调试模式](https://github.com/EmmyLua/VSCode-EmmyLua#-debugging)

## 5 验证 C# 和 Lua 断点

### C# 断点

1. 在 Unity 编辑器右下角打开调试模式菜单，确认 **Mode: Debug**。如果是 **Release**，点击 **Switch to debug mode**，等脚本重新编译。[Unity 2022.3 调试文档](https://docs.unity3d.com/2022.3/Documentation/Manual/ManagedCodeDebugging.html#DebugInEditor)
2. 在 `LuaBootstrap.cs` 的 `Start()` 内给 `luaEnv = new LuaEnv();` 打断点。在原来的 `Xlua背包` 项目，可以给 `Main.Start()` 内的 `LuaMgr.GetInstance().Init();` 打断点。
3. 在 VS Code 选择 **Attach to Unity**，按 `F5`。确认调试工具栏出现后，再回 Unity 点 **Play**。
4. VS Code 停在断点上后，按 `F10` 单步执行，按 `F5` 继续运行。

### Lua 断点

1. 确认场景已经成功运行过一次 Lua。如果进程列表里暂时找不到可附加的 Unity，把场景运行到 Console 出现「准备就绪」后再尝试附加。
2. 在 VS Code 打开 `Assets/Lua/Main.lua`，在 `print("准备就绪")` 上打断点。
3. 选择 **通过进程ID附加** 并按 `F5`。如果出现进程选择器，选当前项目的 `Unity.exe`。
4. 让 Unity 再执行一次这行。`Main.lua` 由 `Start()` 加载，如果刚才已经跑完，就退出 Play 模式，再点一次 **Play**。
5. VS Code 停在 `.lua` 的断点处后，按 `F5` 继续。确认控制台打印「准备就绪」。

## 6 遇到问题先检查哪里

| 现象 | 检查方法 |
| --- | --- |
| `.cs` 输入 `Debug.` 没提示 | 在扩展页确认微软 **C#** 已启用。之前就遇到过扩展已安装但被全局禁用，导致 C# Dev Kit 无法启动。启用后重载 VS Code 窗口，并确认 Unity 的解决方案已加载。 |
| C# 调试器无法附加 | 确认 Unity 已切到 **Debug Mode**，并等重编译完成再试。之前的 Unity 会话仍报连接读取错误，重启 Unity 后重新附加成功。 |
| Unity 一直显示 `Waiting for Unity’s code to finish executing` | 切回 VS Code，看编辑器里有没有黄色箭头和暂停的调用堆栈。有的话，按 `F5` 继续。`Start()` 的断点会让 Unity 暂停在进入 Play 模式的过程中。 |
| Lua 断点没命中 | 确认选的是当前项目的 Unity 进程，再用 Console 日志验证 `Main.lua` 执行了。若顶层语句已经运行，重新进入 Play 模式触发 `Start()`。 |
| `CS.UnityEngine` 没 API 提示 | 在 EmmyLuaUnity 里执行 **Pull Unity API**，生成定义后再试。这个功能只影响代码提示，Lua 是否能运行可以单独从 Unity Console 判断。 |

## 7 把注释设成绿色

在 VS Code 按 `Ctrl+Shift+P`，打开 **用户设置 (JSON)**。如果设置文件只有空的 `{}`，用下面的完整内容。有现有设置时，只合并 `editor.tokenColorCustomizations` 这一项到最外层对象内，并在相邻设置间加逗号。[VS Code 配色文档](https://code.visualstudio.com/docs/configure/themes#_editor-syntax-highlighting)

```json
{
    "editor.tokenColorCustomizations": {
        "comments": "#6A9955"
    }
}
```
