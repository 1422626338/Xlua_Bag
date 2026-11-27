print("准备就绪")
--初始化所有准备好的类别名 ,之后的脚本可以直接执行
require("InitClass")

--初始化数据
--初始化道具表信息
require("ItemData")
--玩家信息
--1.从本地获取有几种方式，PlayerPrefs，Json，2进制
--2.网络游戏 从服务器获取
require("PlayerData")
PlayerData:Init()

require("BasePanel")
require("MainPanel")
local MainPanel = _G["MainPanel"]
require("BagPanel")
require("ItemGrid")
MainPanel:ShowMe("MainPanel")  

