-- 一个面板对应一个表
local BasePanel = _G["BasePanel"]
BasePanel:subClass("BagPanel")
local BagPanel = _G["BagPanel"]

-- 成员变量
BagPanel.Content = nil

-- 用来存储当前显示的格子
BagPanel.items = {}
-- 用来存储当前显示的页签 类型，避免重复刷新
BagPanel.nowType = -1
-- 成员方法
-- 初始化方法
function BagPanel:Init(name)
    self.base.Init(self, name)
    if self.isInitEvent == false then
        --找到没有挂载UI控件的对象 还是需要手动去找
        self.Content = self:GetControl("svBag","ScrollRect").transform:Find("Viewport"):Find("Content")
        -- 加事件
        -- 关闭按钮
        self:GetControl("btn_Close","Button").onClick:AddListener(function ()
            self:HideMe()
        end)
        -- 单选框事件
        -- 切换页签
        -- toggle 对应委托是UnityAction<bool>
        self:GetControl("tog_Equip","Toggle").onValueChanged:AddListener(function (value)
            if value == true then
                self:ChangeType(1)
            end
        end)

        self:GetControl("tog_Item","Toggle").onValueChanged:AddListener(function (value)
            if value == true then
                self:ChangeType(2)
            end
        end)

        self:GetControl("tog_Gem","Toggle").onValueChanged:AddListener(function (value)
            if value == true then
                self:ChangeType(3)
            end
        end)

        self.isInitEvent = true
    end

end

-- 显示隐藏
function BagPanel:ShowMe(name)
    self.base.ShowMe(self,name)
    -- 第一次打开时更新数据
    if self.nowType == -1 then
        self:ChangeType(1)
    end
end


-- 逻辑处理函数 用来切换页签
-- type 1 装备，2道具，3宝石
function BagPanel:ChangeType(type)
    -- TODO 切页，根据玩家信息 来进行格子创建
    -- 判断，如果已经是该页签，就别更新了
    if self.nowType == type then
        return
    end

    -- 更新前 先删掉老的格子 BagPanel.items
    for i = 1, #self.items do
        -- 销毁格子对象
        -- GameObject.Destroy(self.items[i].obj)
        self.items[i]:Destroy()
    end
    self.items = {}

    print("当前类型为：" .. type)
    -- 更新之前 要把老的格子删掉 BagPanel.items
    -- 再根据当前选择的类型 来创建新的格子 BagPanel。items
    -- 要根据传入的type来选择显示的数据
    local nowItems = nil
    if type == 1 then
        nowItems = PlayerData.equips
    elseif type == 2 then
        nowItems = PlayerData.items
    else
        nowItems = PlayerData.gems
    end

    -- 创建格子
    for i = 1, #nowItems do
        --[[--有格子资源 在这 加载格子资源 实例化 改变图片 和 文本及位置即可
        --用一张新表代表 格子对象，里面的属性 存储对应想要的信息
        local grid = {}
        --创建格子对象，把它存进表的 obj 字段
        grid.obj = ABMgr:LoadRes("ui","ItemGrid")
        --? 设置父对象
        grid.obj.transform:SetParent(self.Content,false)
        --继续设置他的位置
        grid.obj.transform.localPosition = Vetcor3((i-1)%4 * 155,math.floor((i-1)/4)*155,0)
        --找控件
        grid.imageIcon = grid.obj.transform:Find("image_Icon"):GetComponent(typeof(Image))
        local textTransform = grid.obj.transform:Find("Text") or grid.obj.transform:Find("Text (Legacy)")
        grid.Text = textTransform:GetComponent(typeof(Text))
        --设置他的图标
        --通过 道具ID 去读取 道具配置表，得到图标信息
        local data = ItemData[nowItems[i].id]
        --想要的是data中的图标信息
        --根据名字 先加载图集 在加载突击中的图标信息
        local strs = string.split(data.icon, "_")
        --加载图集
        local spriteAtlas = ABMgr:LoadRes("ui",strs[1],typeof(SpriteAtlas))
        --加载图标
        grid.imageIcon.sprite = spriteAtlas:GetSprite(strs[2])
        --设置他的数量
        grid.Text.text = tostring(nowItems[i].num)

        --把它存起来 往数组self.items末尾追加一个元素grid**
        table.insert(self.items,grid)--]]

        -- 根据数据 创建一个格子对象
        local ItemGrid = _G["ItemGrid"]
        local grid = ItemGrid:new()
        -- 要实例化对象 设置位置
        grid:Init(self.Content, (i - 1) % 4 * 155, math.floor((i - 1) / 4) * 155)
        -- 初始化他的信息 数量和图标
        grid:InitData(nowItems[i])
        -- 把它存起来
        table.insert(self.items, grid)
    end
end