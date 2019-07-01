local status = nil
Citizen.CreateThread(function()
    while true do

        Citizen.Wait(250)
        local xPlayer = PlayerPedId()
       
        SendNUIMessage({
            show = IsPauseMenuActive(),
            health = GetEntityHealth(xPlayer)-100,
            armor = GetPedArmour(xPlayer),
            stamina = 100-GetPlayerSprintStaminaRemaining(PlayerId()),
            st = status,
            healthtext = cfg.healthtext,
            armortext = cfg.armortext,
        })
    end
end)


RegisterNetEvent('ESX_HealthBAR-UI:updateStatus')
AddEventHandler('ESX_HealthBAR-UI:updateStatus', function(Status)
    status = Status
    SendNUIMessage({
        action = "updateStatus",
        st = Status,
    })
end)
