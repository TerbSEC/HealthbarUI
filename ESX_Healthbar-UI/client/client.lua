local status = nil
Citizen.CreateThread(function()
    while true do

        Citizen.Wait(100)
        
        SendNUIMessage({
            show = IsPauseMenuActive(),
            health = (GetEntityHealth(GetPlayerPed(-1))-100),
            stamina = 100-GetPlayerSprintStaminaRemaining(PlayerId()),
            st = status,
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