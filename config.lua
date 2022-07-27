Config = {}

Config.Zones = {
	StartCollect = {coords = vector3(1074.5275,-2450.8901,29.1300)}, -- Coordinate for Start Collect
	CollectCoords_1 = {coords = vector3(1240.5530,-601.6020,69.7826)}, -- Coordinate for Collect 1
	CollectCoords_2 = {coords = vector3(-596.8034,851.4025,211.4875)}, -- Coordinate for Collect 2
	CollectCoords_3 = {coords = vector3(-1579.5243,-440.6498,38.1734)}, -- Coordinate for Collect 3
	CollectCoords_4 = {coords = vector3(-1043.3240,-1580.4905,5.0383)}, -- Coordinate for Collect 4
	CollectCoords_5 = {coords = vector3(-684.9281,-2233.9753,5.9527)}, -- Coordinate for Collect 5
	MethSell = {coords = vector3(951.7873,-210.7846,73.2085), radius = 0.0}, -- Coordinate for Meth Selling
	MethSellPoint_1 = {coords = vector3(-274.6599,167.8426,78.9048), radius = 0.0}, -- Coordinate for Meth Selling Delivery 1
	MethSellPoint_2 = {coords = vector3(-1678.2772,-408.6026,43.9226), radius = 0.0}, -- Coordinate for Meth Selling Delivery 2
	MethSellPoint_3 = {coords = vector3(-763.5074,-791.4981,27.8731), radius = 0.0}, -- Coordinate for Meth Selling Delivery 3
	MethSellPoint_4 = {coords = vector3(-147.9521,-1687.5227,33.0675), radius = 0.0}, -- Coordinate for Meth Selling Delivery 4
	MethSellPoint_5 = {coords = vector3(1092.5599,-2251.8953,31.2339), radius = 0.0}, -- Coordinate for Meth Selling Delivery 5

}

Config.CollectTime = 5000 -- Time in ms 1000 = 1 second

Config.Notification1 = "[E] Start Collect" 
Config.Notification2 = "You start the Meth Progress, go to the collect Area!"
Config.Notification3 = "You already have collect in progress, go to the collect Area!" 
Config.Notification4 = "You successfuly collect the Meth, go to the next area"
Config.Notification5 = "You successfuly collect all the Meth!"
Config.Notification6 = "You stop the Meth Progress!"
Config.Notification7 = "[E] Collect Meth"
Config.Notification8 = "You can only do this at 20:00 - 00:00"
Config.Notification9 = "You start the selling progress, go to the delivery area to Sell the Meth!"
Config.Notification12 = "Use command /stopsell to Stop the Selling Progress."
Config.Notification11 = "You already start the progress, go to the delivery area to Sell the Meth!"
Config.Notification10 = "You successfuly delivered the Meth, go to the next Location!"
Config.Notification13 = "You successfuly delivered all the Meth!"
Config.Notification14 = "Packing Meth..."
Config.Notification15 = "You dont have enough Meth to Sell!"
Config.Notification16 = "[E] Start Meth run"
Config.Notification17 = "You stop the Meth Delivery progress." 
Config.Notification18 = "[E] Deliver Meth"
Config.Notification19 = "You dont have enough Meth, you need 5 to make a Pack of Meth!" 
Config.Notification20 = "Deliver Meth..."
	
Config.BlipName_1 = "Collect Area 1"
Config.BlipName_2 = "Collect Area 2"
Config.BlipName_3 = "Collect Area 3"
Config.BlipName_4 = "Collect Area 4"
Config.BlipName_5 = "Collect Area 5"

Config.BlipName_6 = "Weed Delivery 1" -- Name on the Map
Config.BlipName_7 = "Weed Delivery 2" -- Name on the Map
Config.BlipName_8 = "Weed Delivery 3" -- Name on the Map
Config.BlipName_9 = "Weed Delivery 4" -- Name on the Map
Config.BlipName_10 = "Weed Delivery 5" -- Name on the Map


Config.RandomAmount = false -- Do you want to random the amount? 
Config.MinAmount = 1 -- Value must be Lower than MaxAmount 
Config.MaxAmount = 5 -- Value must be Lower than MinAmount 
Config.PackingTime = 5000 -- Time in ms 1000 = 1 second
Config.SellingTime = 5000 -- Time in ms 1000 = 1 second
Config.MethToPack = 2 -- How many Meth per pack
Config.MinMethSell = 2 -- Minimum Meth to randomise sell, Value must be lower than MaxWeedSell
Config.MaxMethSell = 3 -- Maximum Meth to randomise sell, Value must be higher than MinWeedSell
Config.UseBlackMoney = false -- Set to true for Black Money, false for Normal Money
Config.MethPrice = 500 -- Price per Meth pack


Config.Items = {
	--Item Spawn Name - Amount
	{item = "item_meth", amount = 5},
}

