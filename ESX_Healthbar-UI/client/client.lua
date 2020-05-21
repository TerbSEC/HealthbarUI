local status = nil
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        
        SendNUIMessage({
            show = IsPauseMenuActive(),
            health = GetEntityHealth(GetPlayerPed(-1)) - 100,
            armor = GetPedArmour(GetPlayerPed(-1)),
            stamina = 100 - GetPlayerSprintStaminaRemaining(PlayerId()),
            healthtext = cfg.healthtext,
            armortext = cfg.armortext,
            deadtext = cfg.deadtext
        })
    end
end)

RegisterNetEvent('ESX_HealthBAR-UI:updateStatus')
AddEventHandler('ESX_HealthBAR-UI:updateStatus', function(Status)
    status = Status
    SendNUIMessage({
        action = "updateStatus",
        hunger = status[1].percent,
        thirst = status[2].percent
    })
end)
