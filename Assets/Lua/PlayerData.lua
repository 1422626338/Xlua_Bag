PlayerData = {}
--我们目前只做背包功能，所以只需要他的道具信息即可

PlayerData.equips = {}
PlayerData.items = {}
PlayerData.gems = {}
--为玩家数据写了一个 初始化方法， 以后直接改这里的数据来源即可
--给 PlayerData 定义一个叫 Init 的初始化方法
function PlayerData:Init()  
    --道具信息 不管是存本地还是存服务器，都不会把道具的所有信息存进去
    --只存道具ID和数量即可
--调用 PlayerData:Init() 时，Lua 会把 PlayerData 自动传给方法里的 self，所以 self.equips 就是 PlayerData.equips
--table.insert 是为了自动找下一个位置
--测试，写死信息数据
    table.insert(self.equips,{id = 1,num =1})
    table.insert(self.equips,{id = 2,num = 1})

    table.insert(self.items,{id = 3,num = 1})
    table.insert(self.items,{id = 4,num = 1})

    table.insert(self.gems,{id = 5,num =1})
    table.insert(self.gems,{id = 6, num = 1})
end

--PlayerData:Init()
--print(PlayerData.equips[1].id)