ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
		Wait(0)
	end
end)

local particleDict = "scr_indep_fireworks"

RegisterNetEvent("firework:startFireworkShow")
AddEventHandler("firework:startFireworkShow", function()
    for i = 1, #Config.FeuerwerkOrte, 1 do
        local fireworkPos = vector3(Config.FeuerwerkOrte[i]["x"], Config.FeuerwerkOrte[i]["y"], Config.FeuerwerkOrte[i]["z"])
        local fireworkType = Config.FeuerwerkOrte[i]["Fireworktype"]

        if fireworkType == "Battery" then
            TriggerServerEvent("firework:battery", fireworkPos)
        elseif fireworkType == "Rocket" then
			TriggerServerEvent("firework:rocket", fireworkPos)
		elseif fireworkType == "Fountain" then
			TriggerServerEvent("firework:fountain", fireworkPos)
        end
    end
end)


RegisterNetEvent("firework:battery")
AddEventHandler("firework:battery", function(fireworkPos)
    RequestNamedPtfxAsset(particleDict)
    while not HasNamedPtfxAssetLoaded(particleDict) do
        Wait(1)
	end
	
	UseParticleFxAssetNextCall(particleDict)
	local particle = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_trailburst", fireworkPos, 0.0, 0.0, 0.0, math.random() * 0.5 + 0.8, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
	local particle2 = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_trailburst", fireworkPos, 0.0, 0.0, 0.0, math.random() * 0.5 + 0.8, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
	local particle3 = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_trailburst", fireworkPos, 0.0, 0.0, 0.0, math.random() * 0.5 + 0.8, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
	local particle4 = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_trailburst", fireworkPos, 0.0, 0.0, 0.0, math.random() * 0.5 + 0.8, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
	local particle5 = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_trailburst", fireworkPos, 0.0, 0.0, 0.0, math.random() * 0.5 + 0.8, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
	local particle6 = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_trailburst", fireworkPos, 0.0, 0.0, 0.0, math.random() * 0.5 + 0.8, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
	local particle7 = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_trailburst", fireworkPos, 0.0, 0.0, 0.0, math.random() * 0.5 + 0.8, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
	local particle8 = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_trailburst", fireworkPos, 0.0, 0.0, 0.0, math.random() * 0.5 + 0.8, false, false, false, false)
	Wait(4000)
	UseParticleFxAssetNextCall(particleDict)
	local particle9 = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_trailburst", fireworkPos, 0.0, 0.0, 0.0, math.random() * 0.5 + 1.8, false, false, false, false)

	TriggerServerEvent("firework:battery", fireworkPos)
end)

RegisterNetEvent("firework:rocket")
AddEventHandler("firework:rocket", function(fireworkPos)
	while not HasNamedPtfxAssetLoaded(particleDict) do
        Wait(1)
    end
    UseParticleFxAssetNextCall(particleDict)
    local particle = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", fireworkPos, 0.0, 0.0, 0.0, 2.5, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
    local particle2 = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", fireworkPos, 0.0, 0.0, 0.0, 2.5, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
    local particle3 = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", fireworkPos, 0.0, 0.0, 0.0, 2.5, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
    local particle4 = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", fireworkPos, 0.0, 0.0, 0.0, 2.5, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
    local particle5 = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", fireworkPos, 0.0, 0.0, 0.0, 2.5, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
    local particle6 = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", fireworkPos, 0.0, 0.0, 0.0, 2.5, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
    local particle7 = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", fireworkPos, 0.0, 0.0, 0.0, 2.5, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
    local particle8 = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", fireworkPos, 0.0, 0.0, 0.0, 2.5, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
    local particle9 = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", fireworkPos, 0.0, 0.0, 0.0, 2.5, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
    local particle10 = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", fireworkPos, 0.0, 0.0, 0.0, 2.5, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
    local particle11 = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", fireworkPos, 0.0, 0.0, 0.0, 2.5, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
    local particle12 = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", fireworkPos, 0.0, 0.0, 0.0, 2.5, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
    local particle13 = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", fireworkPos, 0.0, 0.0, 0.0, 2.5, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
    local particle14 = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", fireworkPos, 0.0, 0.0, 0.0, 2.5, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
    local particle15 = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", fireworkPos, 0.0, 0.0, 0.0, 2.5, false, false, false, false)
	Wait(1500)

	TriggerServerEvent("firework:rocket", fireworkPos)
end)

RegisterNetEvent("firework:fountain")
AddEventHandler("firework:fountain", function(fireworkPos)
	RequestNamedPtfxAsset(particleDict)
    while not HasNamedPtfxAssetLoaded(particleDict) do
        Wait(1)
	end
	
	UseParticleFxAssetNextCall(particleDict)
	local particle = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_fountain", x, y, z, 0.0, 0.0, 0.0, math.random() * 0.5 + 0.8, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
	local particle2 = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_fountain", x, y, z, 0.0, 0.0, 0.0, math.random() * 0.5 + 0.8, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
	local particle3 = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_fountain", x, y, z, 0.0, 0.0, 0.0, math.random() * 0.5 + 0.8, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
	local particle4 = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_fountain", x, y, z, 0.0, 0.0, 0.0, math.random() * 0.5 + 0.8, false, false, false, false)
	Wait(1500)
	UseParticleFxAssetNextCall(particleDict)
	local particle5 = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_fountain", x, y, z, 0.0, 0.0, 0.0, math.random() * 0.5 + 0.8, false, false, false, false)
	Wait(2500)
	UseParticleFxAssetNextCall(particleDict)
	local particle6 = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_fountain", x, y, z, 0.0, 0.0, 0.0, math.random() * 1.5 + 1.8, false, false, false, false)
	Wait(2500)
	UseParticleFxAssetNextCall(particleDict)
	local particle7 = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_fountain", x, y, z, 0.0, 0.0, 0.0, math.random() * 1.5 + 1.8, false, false, false, false)
	Wait(2500)
	UseParticleFxAssetNextCall(particleDict)
	local particle8 = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_fountain", x, y, z, 0.0, 0.0, 0.0, math.random() * 1.5 + 1.8, false, false, false, false)

	TriggerServerEvent("firework:fountain", fireworkPos)
end)