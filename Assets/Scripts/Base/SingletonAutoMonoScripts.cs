using UnityEngine;
//C#泛型
//设计模式 单例模式
//继承这种自动创建的 单例模式基类 ，不需要我们手动去拖 或者 api 去加了
//直接GetInstance 直接调用即可
public class SingletonAutoMonoScripts<T> : MonoBehaviour where T : SingletonAutoMonoScripts<T>
{
    private static T instance;
    public static T GetInstance()
    {
        if(instance == null)
        {
            //1.如果为空，创建一个空物体
            GameObject obj = new GameObject();
            //2.将这个空物体更名为T的名字
            obj.name = typeof(T).ToString();
            //3.让这个单例模式对象，过场景不移除
            DontDestroyOnLoad(obj);
            //4.添加T的组件
            instance = obj.AddComponent<T>();
        }
        return instance;
    }
}
