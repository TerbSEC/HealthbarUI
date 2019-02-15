local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

RegisterServerEvent("vRP_HealthUI:getData")
AddEventHandler("vRP_HealthUI:getData", function ()
    local user_id = vRP.getUserId({source})
    TriggerClientEvent("vRP_HealthUI:returnBasics",source,vRP.getHunger({user_id}),vRP.getThirst({user_id}))
end)