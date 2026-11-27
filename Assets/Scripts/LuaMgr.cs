using System;
using System.IO;
using UnityEngine;
using XLua;
using XLua.LuaDLL;
/// <summary>
/// Lua管理器
/// 提供lua解析器，保证解析器的唯一性
/// </summary>
public class LuaMgr : BaseManager<LuaMgr>
{
    //执行Lua语言的函数
    //释放垃圾
    //销毁
    //重定向
    private LuaEnv luaEnv;

    /// <summary>
    /// 得到Lua中的_G
    /// </summary>
    public LuaTable Global  //_G表只是存储的Lua的全局变量
    {
        get
        {
            return luaEnv.Global;
        }
    }


    /// <summary>
    /// 初始化解析器
    /// </summary>
    public void Init()
    {
        if (luaEnv != null)
            return;
        //初始化
        luaEnv = new LuaEnv();

        //加载lua脚本重定向 //这里没有（），
        //实际上是等 Lua 执行 require("Main") 并需要加载这个模块时，xLua 才会调用这个方法，把 "Main" 传给它
        //luaEnv.AddLoader(MyCustomLoader);
        luaEnv.AddLoader(MyCustomABLoader);   //真正打包时再执行
    }
/// <summary>
/// 	从项目的 Assets/Learn_xlua/Lua/ 目录读 .lua 文件
/// </summary>
    private byte[] MyCustomLoader(ref string filePath)
    {
        //Application.dataPath ，它是 Unity 提供的属性，在编辑器里指向项目的 Assets 目录。
        // Assets/Learn_xlua/Lua/
        //filePath  这次运行时收到的值是require 请求的模块名。	"Main"
        //".lua" ：加载器补上的文件后缀。
        //path   本次值G:/UGit/2DTest/Assets/Learn_xlua/Lua/Main.lua。这是拼出来的完整文件路径。
        string path = Application.dataPath + "/Lua/" + filePath + ".lua";
        Debug.Log(path);

        //检查文件是否存在
        if (File.Exists(path))
        {   
            // `File.ReadAllBytes(path)` 读出文件内容，`return` 把这些字节交给 xLua
            return File.ReadAllBytes(path);
        }
        else
        {
            Debug.Log("MyCustomLoader重定向失败，文件名为：" + filePath);
        }
        return null;
    }

    //Lua脚本会放在AB包中
    //最终会通过加载AB包再加载其中的Lua脚本资源，来执行它
    //AB包中如果要加载本文，后缀名还是有一定的限制 .lua不能被识别
    //打包时要把lua文件后缀改为txt
    //重定向加载AB包中的Lua脚本
    /// <summary>
    /// 	通过 ABMgr 从名为 lua 的 AssetBundle 读取 TextAsset，然后返回 lua.bytes
    /// <summary>
    private byte[] MyCustomABLoader(ref string filePath)
    {
        // Debug.Log("进入AB包加载重定向");
        // //从AB包中加载lua文件
        // //加载AB包
        // string path = Application.streamingAssetsPath + "/lua";
        // AssetBundle ab = AssetBundle.LoadFromFile(path);

        // //从AB包中加载资源
        // TextAsset tx = ab.LoadAsset<TextAsset>(filePath + ".lua");
        // //加载Lua文件 byte数组
        // return tx.bytes;

        //通过我们的AB包管理器 加载lua脚本资源 
        Debug.Log("这里执行的AB包里的lua脚本资源");
        TextAsset lua = ABMgr.GetInstance().LoadRes<TextAsset>("lua",filePath + ".lua");
        if(lua != null)
        {
            return lua.bytes;
        }
        else
        Debug.Log("MyCustomABLoader重定向失败，文件名字为："+filePath);
        return null;
    }

    //传入lua文件名字
    //这里 fileName 的值是 "Main"
    public void DoLuaFile(string fileName)
    {
        string str = string.Format("require('{0}')",fileName);  // str 的值是 "require('Main')"
        DoString(str);  
    }

    /// <summary>
    /// 执行Lua语言
    /// str 的值是拼接好的 "require('Main')"
    /// </summary>
    /// <param name="str"></param>
    public void DoString(string str)    
    {
        if (luaEnv == null)
        {
            Debug.Log("解析器未初始化");
            return;    //没有return，代码继续往下跑
        }
        //luaEnv.DoString("require('Main')") 执行第一条 require。
        // xLua 调用 MyCustomLoader，这次 filePath 是 "Main"，于是加载器读取 Assets/Learn_xlua/Lua/Main.lua。
        //2. xLua 开始执行 Main.luaMain.lua。跑到第 14 行的 require("Lesson1_CallClass") 时，xLua 再次调用 MyCustomLoader，这次 filePath 是 "Lesson1_CallClass"。(是自动调用的。触发加载的是 require，决定用哪个自定义加载器的是之前的 AddLoader 注册。)
        //3. 同一行路径拼接得出 Assets/Learn_xlua/Lua/Lesson1_CallClass.lua。加载器把文件内容返回给 xLua，xLua 开始执行这节课Lesson1_CallClass的顶层代码。
        luaEnv.DoString(str);   //luaEnv.DoString("require('Main')")   xLua 的方法，执行这段 Lua 代码
        //require 提出“我要哪个模块”，你的 MyCustomLoader 负责“去哪儿拿文件内容”，Lua 运行时负责“执行拿到的代码”
    }


    /// <summary>
    /// 释放Lua垃圾
    /// </summary>
    public void Tick()
    {
        if (luaEnv == null)
        {
            Debug.Log("解析器未初始化");
            return;    //没有return，代码继续往下跑
        }
        luaEnv.Tick();
    }

    /// <summary>
    /// 销毁解析器
    /// </summary>
    public void DisPose()
    {
        if (luaEnv == null)
        {
            Debug.Log("解析器未初始化");
            return;    //没有return，代码继续往下跑
        }
        luaEnv.Dispose();
        luaEnv = null;
    }
}
