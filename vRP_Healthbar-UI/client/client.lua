local thirst = 0
local hunger = 0


Citizen.CreateThread(function()
    while true do

        Citizen.Wait(250)
        local xPlayer = PlayerPedId()
        TriggerServerEvent("vRP_HealthUI:getData")

        SendNUIMessage({
            show = IsPauseMenuActive(),
            health = GetEntityHealth(xPlayer)-100,
            armor = GetPedArmour(xPlayer),
            stamina = 100-GetPlayerSprintStaminaRemaining(PlayerId()),
            hunger = hunger,
            thirst = thirst,
            healthtext = cfg.healthtext,
            armortext = cfg.armortext,
        })
    end
end)

RegisterNetEvent("vRP_HealthUI:returnBasics")
AddEventHandler("vRP_HealthUI:returnBasics", function (rHunger, rThirst)
    hunger = rHunger
    thirst = rThirst
end)
