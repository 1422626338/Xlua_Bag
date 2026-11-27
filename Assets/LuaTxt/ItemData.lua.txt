--将Json数据读取到Lua中的表中进行存储

--首先应该先把json表 从AB包中加载出来
--加载Json文件 TextAsset对象
local txt = ABMgr:LoadRes("json","ItemData",typeof(TextAsset))
--获取他的文本信息 进行Json解析
local itemList = Json.decode(txt.text)

--print(itemList[1].id..itemList[1].name)
--print(itemList[2].id..itemList[2].name)

--加载出来是一个像数组结构的数据
--不方便我们通过id去获取里面的内容，所以，我们用一张信标转存一次
--而且这张新的道具表 在任何地方 都能够被使用
--一张用来存储道具信息的表，
--键值对形式，键 是道具ID 值是道具表一行信息
ItemData ={}
for _,value in pairs(itemList) do
    ItemData[value.id] = value
end

--[[print(ItemData[1].tips)
for k,v in pairs(ItemData) do
    print(k,v)
end--]]