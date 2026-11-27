//不用挂物体，直接代码调用,
//不能用 gameObject、transform、Awake/Update 这些 Mono 的东西

//泛型T必须要满足它有一个无参的构造函数，才能作为泛型传进来
public class BaseManager<T> where T : BaseManager<T>,new()   
//BaseManager<T>：T 必须继承对应的单例基类;这个是为了进一步约束，防止传入的是给Enemy也可以正常编译，限制传入的类型，减少不合理的类型使用
// new()：T 必须有公开的无参构造函数。它只是编译时约束，真正创建对象的是 new T()。
{
    private static T instance;  //static instance 负责共享引用
    public static T GetInstance()   //static GetInstance() 负责让你通过类名方便地获取这个引用
    {
        if (instance == null)
        {
            //为了保证 new T() 能成功创建对象，编译器就要求 T 必须具有公开的无参构造函数
            instance = new T(); //如果T 是GameManager01，那么 instance = new GameManager01();
            //所以必须存在一个不需要传入参数就可以调用的构造函数
        }
        return instance;
    }
}