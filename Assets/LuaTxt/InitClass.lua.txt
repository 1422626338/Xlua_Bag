--常用别名都在这里定位
--准备之前导入的脚本
--面向对象
require("Object")
require("SplitTools")
Json = require("JsonUtility")

--Unity相关
GameObject = CS.UnityEngine.GameObject
Resources = CS.UnityEngine.Resources
Transform = CS.UnityEngine.Transform
RectTransform = CS.UnityEngine.RectTransform
--文本资源相关
TextAsset = CS.UnityEngine.TextAsset
--图集对象类
SpriteAtlas = CS.UnityEngine.U2D.SpriteAtlas

Vetcor2 = CS.UnityEngine.Vector2
Vetcor3 = CS.UnityEngine.Vector3

--UI相关
UI = CS.UnityEngine.UI
Image = UI.Image
Text = UI.Text
Button = UI.Button
Toggle = UI.Toggle
ScrollRect = UI.ScrollRect
Canvas = GameObject.Find("Canvas").transform
UIBehaviour = CS.UnityEngine.EventSystems.UIBehaviour

--自己写的C#脚本
--直接得到AB包资源管理器的 单例对象
ABMgr = CS.ABMgr.GetInstance()