using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ABMgr : SingletonAutoMonoScripts<ABMgr>
{
    //AB包管理器 目的是
    //让外部更方便的进行 资源加载

    private AssetBundle mainAB = null;    //主包
    private AssetBundleManifest manifest = null;        //依赖包获取用的配置文件

    /// <summary>
    /// AB包的路径,AB包的存放路径，方便修改
    /// </summary>
    private string ABPath
    {
        get
        {
            return Application.streamingAssetsPath + "/";
        }
    }
    private string MainABName
    {
        get
        {
#if UNITY_ANDROID
                return "Android";
#elif UNITY_IOS
                return "IOS";
#else
            return "PC";
#endif
        }
    }

    //AB包不能重复加载，重复加载会返回报错
    //所以要用 字典 来存储起来 ，存储加载过的AB包
    private Dictionary<string, AssetBundle> abDic = new Dictionary<string, AssetBundle>();

    //初始化AB包管理器
    public void LoadAB(string abName)
    {
        //第一步 加载 AB包
        //这里需要知道哪些AB包需要加载，有哪些AB包的依赖关系
        //1.加载主包
        if (mainAB == null)
        {
            mainAB = AssetBundle.LoadFromFile(ABPath + MainABName);
            //加载主包中的固定文件
            manifest = mainAB.LoadAsset<AssetBundleManifest>("AssetBundleManifest");
        }
        //02.加载依赖包。从固定文件中获取依赖信息  查询 目标包 的所有依赖包
        string[] strs = manifest.GetAllDependencies(abName);
        for (int i = 0; i < strs.Length; i++)
        {
            //先判断是否记载过
            if (!abDic.ContainsKey(strs[i]))
            {
                Debug.Log("加载依赖包:" + strs[i]);
                AssetBundle ab = AssetBundle.LoadFromFile(ABPath + strs[i]);
                //存入字典中
                abDic.Add(strs[i], ab);
            }
        }
        //03.加载目标包（资源来源包）
        if (!abDic.ContainsKey(abName))
        {
            AssetBundle targetAB = AssetBundle.LoadFromFile(ABPath + abName);
            abDic.Add(abName, targetAB);
        }

    }

    //同步加载(不指定类型)
    public Object LoadRes(string abName, string resName)
    {
        LoadAB(abName);

        //04.加载资源
        //return abDic[abName].LoadAsset(resName);
        //为了方便外面资源加载，判断下资源是不是GameObject类型，如果是GameObject类型，直接实例化返回
        Object obj = abDic[abName].LoadAsset(resName);
        if (obj is GameObject)
        {
            return GameObject.Instantiate(obj);
        }
        else
        {
            return obj;
        }
    }

    //同步加载(根据type指定类型)
    public Object LoadRes(string abName, string resName, System.Type type)
    {
        LoadAB(abName);

        //04.加载资源
        //return abDic[abName].LoadAsset(resName);
        //为了方便外面资源加载，判断下资源是不是GameObject类型，如果是GameObject类型，直接实例化返回
        Object obj = abDic[abName].LoadAsset(resName, type);
        if (obj is GameObject)
        {
            return GameObject.Instantiate(obj);
        }
        else
        {
            return obj;
        }
    }

    //同步加载（根据泛型指定类型）
    public T LoadRes<T>(string abName, string resName) where T : Object
    {
        LoadAB(abName);
        T obj = abDic[abName].LoadAsset<T>(resName);
        if (obj is GameObject)
        {
            return GameObject.Instantiate(obj);
        }
        else
        {
            return obj;
        }
    }

    //异步加载
    //这里并没有异步加载AB包，只是异步加载AB包中的资源，AB包还是同步加载的
    /// <summary>
    /// 根据名字异步加载
    /// </summary>
    /// <param name="abName"></param>
    /// <param name="resName"></param>
    /// <param name="callback"></param>
    public void LoadResAsync(string abName, string resName, System.Action<Object> callback)
    {
        StartCoroutine(ReallyLoadResAsync(abName, resName, callback));
    }
    // 真正执行异步加载的协程
    private IEnumerator ReallyLoadResAsync(string abName, string resName, System.Action<Object> callback)
    {
        // 这里加载 AB 包仍然是同步的
        LoadAB(abName);

        // 异步加载包里的资源
        AssetBundleRequest abr = abDic[abName].LoadAssetAsync(resName);
        yield return abr;

        //异步加载结束后，通过委托 传递给外部来使用
        if (abr.asset is GameObject)
        {
            callback(GameObject.Instantiate(abr.asset));
        }
        else
        {
            callback(abr.asset);
        }
    }


    /// <summary>
    /// 根据类型异步加载
    /// </summary>
    /// <param name="abName"></param>
    /// <param name="resName"></param>
    /// <param name="type"></param>
    /// <param name="callback"></param>
    public void LoadResAsync(string abName, string resName, System.Type type, System.Action<Object> callback)
    {
        StartCoroutine(ReallyLoadResAsync(abName, resName, type, callback));
    }
    // 真正执行异步加载的协程
    private IEnumerator ReallyLoadResAsync(string abName, string resName, System.Type type, System.Action<Object> callback)
    {
        // 这里加载 AB 包仍然是同步的
        LoadAB(abName);

        // 异步加载包里的资源
        AssetBundleRequest abr = abDic[abName].LoadAssetAsync(resName, type);
        yield return abr;

        //异步加载结束后，通过委托 传递给外部来使用
        if (abr.asset is GameObject)
        {
            callback(GameObject.Instantiate(abr.asset));
        }
        else
        {
            callback(abr.asset);
        }
    }

    //根据泛型异步加载
    public void LoadResAsync<T>(string abName, string resName, System.Action<T> callback)   where T:Object
    {
        StartCoroutine(ReallyLoadResAsync<T>(abName, resName, callback));
    }
    // 真正执行异步加载的协程
    private IEnumerator ReallyLoadResAsync<T>(string abName, string resName, System.Action<T> callback) where T:Object
    {
        // 这里加载 AB 包仍然是同步的
        LoadAB(abName);

        // 异步加载包里的资源
        AssetBundleRequest abr = abDic[abName].LoadAssetAsync<T>(resName);
        yield return abr;

        //异步加载结束后，通过委托 传递给外部来使用
        if (abr.asset is GameObject)
        {
            callback(GameObject.Instantiate(abr.asset)as T);
        }
        else
        {
            callback(abr.asset as T);
        }
    }


    //单个AB包卸载
    public void UnLoad(string abName)
    {
        if (abDic.ContainsKey(abName))
        {
            abDic[abName].Unload(false);
            abDic.Remove(abName);
        }
    }

    //所有AB包卸载
    public void ClearAllAB()
    {
        AssetBundle.UnloadAllAssetBundles(false);
        abDic.Clear();
        mainAB = null;
        manifest = null;
    }
}
