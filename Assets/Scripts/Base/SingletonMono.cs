using UnityEngine;

//SingletonMono<T> : MonoBehaviour 代表SingletonMono 本身继承 MonoBehaviour
//where T : SingletonMono<T> 代表：传入的类型 T 必须继承 SingletonMono<T>。
public class SingletonMono<T> : MonoBehaviour
 where T : SingletonMono<T>    //意思是传入的 T 必须是 MonoBehaviour 或者它的子类。
{
    private static T instance;  //static instance 负责共享引用
    public static T GetInstance()   //static GetInstance() 负责让你通过类名方便地获取这个引用
    {
        //继承了Mono的脚本，不能直接new
        //只能通过拖拽对象 或者 添加脚本api addComponent 去加脚本
        //U3D内部帮我们实例化它
        return instance;
    }

    //子类如果要修改，用 virtual 关键字修饰父类的方法，子类用 override 关键字重写父类的方法（protected）
    protected virtual void Awake()
    {
        instance = this as T;   //用父类装子类，this 的类型是SingletonMono<T>，而instance 的类型是T，this as T表示将当前脚本实例转换为T类型
        Debug.Log("单例基类 Awake 执行");
    }
}
