local RSGCore = exports['rsg-core']:GetCoreObject()
local fasttravel
local options = {}

-- prompts
Citizen.CreateThread(function()
    for fasttravel, v in pairs(Config.FastTravelLocations) do
        exports['rsg-core']:createPrompt(v.location, v.coords, RSGCore.Shared.Keybinds['J'], Lang:t('menu.open_prompt') .. v.name, {
            type = 'client',
            event = 'qc-fasttravel:client:menu',
        })
        if v.showblip == true then
            local FastTravelBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            SetBlipSprite(FastTravelBlip, Config.Blip.blipSprite, 1)
            SetBlipScale(FastTravelBlip, Config.Blip.blipScale)
            Citizen.InvokeNative(0x9CB1A1623062F402, FastTravelBlip, Config.Blip.blipName)
        end
    end
end)

------------------------------------------------------------------------------------------------------

MenuData = {}
TriggerEvent("redemrp_menu_base:getData", function(call)
    MenuData = call
end)

RegisterNetEvent('qc-fasttravel:client:menu')
AddEventHandler('qc-fasttravel:client:menu', function()
    OpenShopMenu()
end)

---Function to use:   OpenShopMenu(k)

--- Redmrp Shop Snippet
function OpenShopMenu()
    local elements = {}
    for _, v in ipairs(Config.FastTravel) do
        table.insert(elements, {
            label = v.title,
            desc = v.description,
            icon = 'fas fa-map-marked-alt',
            args = {
                destination = v.destination,
                cost = v.cost,
                traveltime = v.traveltime
            }
        })
    end

    MenuData.Open(
        'default',
        GetCurrentResourceName(),
        'fasttravel_menu',
        {
            title    = 'Fast Travel',
            subtext  = 'Destination:',
            align    = 'top-left',
            elements = elements,
        },
        function(data, menu)
            local eventData = data.current.args
            TriggerServerEvent('qc-fasttravel:server:buyTicket', eventData)  -- Send eventData directly
        end,
        function(data, menu)
            menu.close()
        end
    )
end







------------------------------------------------------------------------------------------------------
--[[
for _, v in ipairs(Config.FastTravel) do
    table.insert(options, {
        title = v.title,
        description = v.description,
        icon = 'fas fa-map-marked-alt',
        serverEvent = 'qc-fasttravel:server:buyTicket',
        args = {
            destination = v.destination,
            cost = v.cost,
            traveltime = v.traveltime
        }
    })
end

RegisterNetEvent('qc-fasttravel:client:menu', function()
    lib.registerContext({
        id = 'fasttravel_menu',
        title = 'FastTravel Menu',
        options = options
    })
    lib.showContext('fasttravel_menu')
end)
]]
------------------------------------------------------------------------------------------------------

-- Handle the fast travel event
-- Client-side code
RegisterNetEvent('qc-fasttravel:client:doTravel')
AddEventHandler('qc-fasttravel:client:doTravel', function(destination, traveltime)
    PlaySoundFrontend("Gain_Point", "HUD_MP_PITP", true, 1)
    local ped = PlayerPedId()
    Citizen.InvokeNative(0x1E5B70E53DB661E5, 0, 0, 0, Lang:t('menu.fast_travel'), '', '')
    Wait(traveltime)
    Citizen.InvokeNative(0x203BEFFDBE12E96A, ped, destination.x, destination.y, destination.z)
    Citizen.InvokeNative(0x74E2261D2A66849A, 0)
    Citizen.InvokeNative(0xA657EC9DBC6CC900, -1868977180)
    Citizen.InvokeNative(0xE8770EE02AEE45C2, 0)
    ShutdownLoadingScreen()
    DoScreenFadeIn(1000)
    Wait(1000)
    SetCinematicModeActive(false)
end)