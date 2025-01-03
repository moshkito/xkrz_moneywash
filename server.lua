local ESX = exports['es_extended']:getSharedObject()

lib.callback.register('moneywash:washing', function(source, input)
    local src = source
	local ped = ESX.GetPlayerFromId(src)
	local count2 = math.floor(input[1])
	local count = math.floor(input[1] * (1 - Config.Prozent / 100))
	ped.removeInventoryItem(Config.WashMoney, count2)
	ped.addInventoryItem(Config.WashedMoney, count)
end)
