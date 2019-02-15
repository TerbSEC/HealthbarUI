# Healthbar-UI
**HealthBar UI - vRP and ESX**

------------------------------------------------------------------------
  
**Installation**
  Download the resource from the link above
  Drag the vRP_Healthbar-UI resource into your Resources folder
  Add start Radargun into Server.cfg
  Now you are good to go <3

------------------------------------------------------------------------

**ESX SETUP**
  - Please go into esx_status/client/main.lua
  - Requirements - ESX Framework and ESX_Status
  ```lua
RegisterNetEvent('esx_status:load')
AddEventHandler('esx_status:load', function(status)
	for i=1, #Status, 1 do
		for j=1, #status, 1 do
			if Status[i].name == status[j].name then
				Status[i].set(status[j].val)
			end
		end
	end

	Citizen.CreateThread(function()
		while true do
			for i=1, #Status, 1 do
				Status[i].onTick()
			end

			SendNUIMessage({
				update = true,
				status = GetStatusData()
			})

			TriggerEvent('esx_status:onTick', GetStatusData(true))
			Citizen.Wait(Config.TickTime)
		end
	end)
end)
```
And Replace it with this
  ```lua
RegisterNetEvent('esx_status:load')
AddEventHandler('esx_status:load', function(status)
	for i=1, #Status, 1 do
		for j=1, #status, 1 do
			if Status[i].name == status[j].name then
				Status[i].set(status[j].val)
			end
		end
	end

	Citizen.CreateThread(function()
		while true do
			for i=1, #Status, 1 do
				Status[i].onTick()
			end

			SendNUIMessage({
				update = true,
				status = GetStatusData()
			})

			TriggerEvent('ESX_HealthBAR-UI:updateStatus', GetStatusData(true))
			Citizen.Wait(Config.TickTime)
		end
	end)
end)
```
Now just start the HealthbarUI in the Server.cfg
Done;D Easy Right? :P

------------------------------------------------------------------------

**VRP SETUP**
  - Requirement - VRP Framework
  Plug and Play xd
  
------------------------------------------------------------------------

**FiveM**
- > https://forum.fivem.net/t/release-healthbar-ui-updated-v1-0-now-supports-vrp-and-esx/265693

------------------------------------------------------------------------

**Credits**
- **#Molnlyck for the Original Script / And Allowing me to upload this (https://github.com/Molnlyck/FiveM_Scripts )**

------------------------------------------------------------------------

**Screenshot**
- https://gyazo.com/d2af115e05ff52a5def8dde17767333a

------------------------------------------------------------------------
