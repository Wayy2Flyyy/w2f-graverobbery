local cooldowns       = {}
local currentGrave    = nil   -- graveId while minigame is open
local diggingProps    = nil   -- shovel props kept until minigame ends

local DIG_ANIM_DICT = 'random@burial'
local DIG_ANIM_NAME = 'a_burial'

-- ─────────────────────────────────────────────────────────────────────────────
-- HELPERS
-- ─────────────────────────────────────────────────────────────────────────────
local function notify(message, notifyType, duration)
    lib.notify({
        title       = _U('notify_title'),
        description = message,
        type        = notifyType or 'info',
        duration    = duration or 3500,
    })
end

local function deleteProps(props)
    for _, prop in ipairs(props or {}) do
        if DoesEntityExist(prop) then DeleteEntity(prop) end
    end
end

local function clearDiggingVisual()
    ClearPedTasks(PlayerPedId())
    deleteProps(diggingProps)
    diggingProps = nil
end

local function createShovelProps()
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local hashes    = { `prop_tool_shovel`, `prop_ld_shovel_dirt` }
    local props     = {}

    for _, hash in ipairs(hashes) do
        RequestModel(hash)
        while not HasModelLoaded(hash) do Wait(100) end

        local prop = CreateObject(hash, coords.x, coords.y, coords.z, true, true, false)
        AttachEntityToEntity(
            prop, playerPed,
            GetPedBoneIndex(playerPed, 28422),
            0.0, 0.0, 0.24,
            0.0, 0.0, 0.0,
            true, true, false, true, 1, true
        )
        props[#props + 1] = prop
        SetModelAsNoLongerNeeded(hash)
    end

    return props
end

local function loadAnimDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do Wait(100) end
end

--- While minigame is open, keep replaying burial dig if something interrupts it.
CreateThread(function()
    while true do
        if currentGrave then
            local ped = PlayerPedId()
            if ped ~= 0 and not IsEntityPlayingAnim(ped, DIG_ANIM_DICT, DIG_ANIM_NAME, 3) then
                loadAnimDict(DIG_ANIM_DICT)
                TaskPlayAnim(ped, DIG_ANIM_DICT, DIG_ANIM_NAME, 8.0, -8.0, -1, 1, 0, false, false, false)
            end
            Wait(450)
        else
            Wait(600)
        end
    end
end)

-- ─────────────────────────────────────────────────────────────────────────────
-- NUI CALLBACK — receives findings from the minigame when player clicks
-- "Collect Loot", then forwards them to the server.
-- ─────────────────────────────────────────────────────────────────────────────
RegisterNUICallback('minigameComplete', function(data, cb)
    cb({})   -- acknowledge immediately

    SetNuiFocus(false, false)
    SetNuiFocusKeepInput(false)

    local graveId = currentGrave
    currentGrave  = nil

    local ped = PlayerPedId()
    FreezeEntityPosition(ped, false)
    clearDiggingVisual()

    if not graveId then return end

    local items = (data and type(data.items) == 'table') and data.items or {}
    TriggerServerEvent('w2f-graverobbery:digGrave', graveId, items)
end)

-- ─────────────────────────────────────────────────────────────────────────────
-- DIGGING FLOW
-- ─────────────────────────────────────────────────────────────────────────────
local function startDigging(graveId)
    local has = lib.callback.await('w2f-graverobbery:hasItem', false, Config.RequiredItem)
    if not has then
        notify(_U('no_shovel'), 'error')
        return
    end

    local playerPed = PlayerPedId()
    local props     = createShovelProps()

    loadAnimDict(DIG_ANIM_DICT)
    TaskPlayAnim(playerPed, DIG_ANIM_DICT, DIG_ANIM_NAME, 8.0, -8.0, -1, 1, 0, false, false, false)

    local completed = lib.progressBar({
        duration     = Config.DiggingTime,
        label        = _U('progressbar_digging'),
        useWhileDead = false,
        canCancel    = true,
        disable      = {
            move   = true,
            car    = true,
            combat = true,
        },
    })

    if not completed then
        ClearPedTasks(playerPed)
        deleteProps(props)
        notify(_U('digging_cancelled'), 'error')
        return
    end

    -- Progress done — stay in dig pose + keep shovel props until minigame closes
    diggingProps = props
    loadAnimDict(DIG_ANIM_DICT)
    TaskPlayAnim(playerPed, DIG_ANIM_DICT, DIG_ANIM_NAME, 8.0, -8.0, -1, 1, 0, false, false, false)

    currentGrave = graveId
    FreezeEntityPosition(playerPed, true)
    SetNuiFocus(true, true)
    SetNuiFocusKeepInput(false)
    SendNUIMessage({ action = 'startMinigame' })
    -- Execution returns here; minigameComplete NUI callback handles the rest
end

-- ─────────────────────────────────────────────────────────────────────────────
-- TARGET ZONES
-- ─────────────────────────────────────────────────────────────────────────────
CreateThread(function()
    for graveId, grave in pairs(Config.Graves) do
        exports.ox_target:addSphereZone({
            coords = grave.coords,
            radius = grave.distance,
            options = {
                {
                    name     = ('w2f_graverobbery_%s'):format(graveId),
                    icon     = grave.icon,
                    label    = grave.label or _U('target_label'),
                    distance = grave.distance,
                    onSelect = function()
                        if cooldowns[graveId] and cooldowns[graveId] > GetGameTimer() / 1000 then
                            notify(_U('dug_grave'), 'error')
                            return
                        end

                        startDigging(graveId)
                    end,
                },
            },
        })
    end
end)

-- ─────────────────────────────────────────────────────────────────────────────
-- SERVER EVENTS
-- ─────────────────────────────────────────────────────────────────────────────
RegisterNetEvent('w2f-graverobbery:client:setCooldown', function(graveId, cooldown)
    cooldowns[graveId] = GetGameTimer() / 1000 + cooldown

    SetTimeout(cooldown * 1000, function()
        cooldowns[graveId] = nil
    end)
end)

AddEventHandler('onResourceStop', function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end
    currentGrave = nil
    FreezeEntityPosition(PlayerPedId(), false)
    SetNuiFocus(false, false)
    SetNuiFocusKeepInput(false)
    clearDiggingVisual()
end)
