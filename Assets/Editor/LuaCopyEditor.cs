using System.Collections.Generic;
using System.IO;
using Unity.VisualScripting.FullSerializer;
using UnityEditor;
using UnityEditor.Experimental.GraphView;
using UnityEngine;

public class LuaCopyEditor : Editor
{
    [MenuItem("XLua/自动生成txt后缀的Lua")]
    public static void CopyLuaToTxt()
    {
        //首先要找到 我们所有的Lua文件
        string path = Application.dataPath + "/Lua";
        //判断路径是否存在
        if(!Directory.Exists(path))
        return;
        //得到每一个lua文件的路径 才能进行迁移拷贝
        string[] strs = Directory.GetFiles(path,"*.lua");

        //然后把Lua文件拷贝到一个新的文件夹中
        //首先定义一个新的路径
        string newPath = Application.dataPath + "/LuaTxt";
        //判断新路径文件夹是否存在
        if(!Directory.Exists(newPath))
            Directory.CreateDirectory(newPath);
        else
        {
            //先清空文件
            string[] oldFileStrs = Directory.GetFiles(newPath,"*.txt");
            for(int i = 0; i < oldFileStrs.Length; ++i)
            {
                File.Delete(oldFileStrs[i]);
            }
        }

        List<string> newFileNames = new List<string>();
        string fileName;
        for(int i = 0; i < strs.Length; i++)
        {
            //得到新的文件路径 用于拷贝
            fileName = Path.Combine(newPath, Path.GetFileName(strs[i]) + ".txt");
            newFileNames.Add(fileName);
            File.Copy(strs[i], fileName, true);
        }

        //刷新
        AssetDatabase.Refresh();

        //刷新后，再来改变AB包
        for(int i = 0; i < newFileNames.Count; i++)
        {
            AssetImporter importer = AssetImporter.GetAtPath(newFileNames[i].Substring(newFileNames[i].IndexOf("Assets")));
            if(importer != null)
            importer.assetBundleName = "lua";
        }
    }
}
