local thirst = 0
local hunger = 0
Citizen.CreateThread(function()
    while true do

        Citizen.Wait(250)
        TriggerServerEvent("vRP_HealthUI:getData")
        
        SendNUIMessage({
            show = IsPauseMenuActive(),
            health = (GetEntityHealth(GetPlayerPed(-1))-100),
            stamina = 100-GetPlayerSprintStaminaRemaining(PlayerId()),
            hunger = hunger,
            thirst = thirst
        })
    end
end)

RegisterNetEvent("vRP_HealthUI:returnBasics")
AddEventHandler("vRP_HealthUI:returnBasics", function (rHunger, rThirst)
    hunger = rHunger
    thirst = rThirst
end)