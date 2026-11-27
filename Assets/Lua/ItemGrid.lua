--用到Object知识点

--实例化格子对象
--创建一个叫 ItemGrid 的 Lua 类，让它继承 Object 的方法，之后就可以用 ItemGrid:new() 创建一个具体的格子实例
Object:subClass("ItemGrid")
local ItemGrid = _G["ItemGrid"]

--成员变量
ItemGrid.obj = nil
ItemGrid.imageIcon = nil
ItemGrid.Text = nil
--成员函数
--实例化对象格子
function ItemGrid:Init(father,posX,posY)
    --创建格子对象，把它存进表的 obj 字段
        self.obj = ABMgr:LoadRes("ui","ItemGrid")
        --? 设置父对象
        self.obj.transform:SetParent(father,false)
        --继续设置他的位置
        self.obj.transform.localPosition = Vetcor3(posX,posY,0)
        --找控件
        self.imageIcon = self.obj.transform:Find("image_Icon"):GetComponent(typeof(Image))
        local textTransform = self.obj.transform:Find("Text") or self.obj.transform:Find("Text (Legacy)")
        self.Text = textTransform:GetComponent(typeof(Text))

end


--初始化格子信息
--data 是外面传入的 道具信息，里面包含了id和num
function  ItemGrid:InitData(data)
    --通过 道具ID 去读取 道具配置表，得到图标信息
    local itemData = ItemData[data.id]
    --想要的是data中的图标信息
     --根据名字 先加载图集 在加载突击中的图标信息
     local strs = string.split(itemData.icon, "_")
    --加载图集
     local spriteAtlas = ABMgr:LoadRes("ui",strs[1],typeof(SpriteAtlas))
    --加载图标
     self.imageIcon.sprite = spriteAtlas:GetSprite(strs[2])
     --设置他的数量
     self.Text.text = tostring(data.num)

end
--加自己的逻辑
function ItemGrid:Destroy()
    GameObject.Destroy(self.obj)
    self.obj = nil    
end