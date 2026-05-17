local playerCooldowns = {}

do
    local function trimNonemptyConvar(key)
        local v = GetConvar(key, '')
        if type(v) ~= 'string' then return '' end
        v = v:match('^%s*(.-)%s*$') or ''
        return v ~= '' and v or ''
    end

    WebhookConfig.LootWebhook = WebhookConfig.LootWebhook or ''
    local fallback = trimNonemptyConvar('qbx_logging_webhook')
    if fallback == '' then fallback = trimNonemptyConvar('w2f_logs_default_webhook') end
    if WebhookConfig.LootWebhook == '' then WebhookConfig.LootWebhook = fallback end
end

local function getPlayer(src)
    return exports.qbx_core:GetPlayer(src)
end

local function playerName(player)
    local ci = player.PlayerData.charinfo
    return ('%s %s'):format(ci.firstname, ci.lastname)
end

local function notify(src, message, notifyType, duration)
    lib.notify( src, {
        title       = _U('notify_title'),
        description = message,
        type        = notifyType or 'info',
        duration    = duration or 3500,
    })
end

local function sendWebhook(webhook, embeds)
    if webhook == '' then return end

    PerformHttpRequest(webhook, function() end, 'POST', json.encode({
        username   = WebhookConfig.BotName,
        avatar_url = WebhookConfig.BotAvatar,
        embeds     = embeds,
    }), { ['Content-Type'] = 'application/json' })
end

local function hasItem(src, item)
    local count = exports.ox_inventory:Search(src, 'count', item)
    return (tonumber(count) or 0) > 0
end

lib.callback.register('w2f-graverobbery:hasItem', function(source, item)
    return hasItem(source, item)
end)

--- Build a lookup of valid loot items from Config.Loot for fast minigame result validation.
local function buildValidItems()
    local t = {}
    for _, entry in ipairs(Config.Loot) do
        t[entry.item] = entry
    end
    return t
end

--- Validate and translate minigame findings into the standard loot format.
--- Caps per-item counts to prevent exploitation (max = entry.max * 5).
local function lootFromMinigame(minigameItems)
    local validItems = buildValidItems()
    local loot       = {}

    for _, result in ipairs(type(minigameItems) == 'table' and minigameItems or {}) do
        if type(result.item) == 'string' and type(result.count) == 'number' and result.count > 0 then
            local cfg = validItems[result.item]
            if cfg then
                local amt = math.max(1, math.min(cfg.max * 5, math.abs(math.floor(result.count))))
                loot[#loot + 1] = { item = result.item, label = cfg.label, amount = amt }
            end
        end
    end

    return loot
end

--- digGrave now receives the items the player collected inside the Deep Dig minigame.
RegisterNetEvent('w2f-graverobbery:digGrave', function(graveId, minigameItems)
    local src    = source
    local player = getPlayer(src)
    if not player then return end

    graveId = tonumber(graveId)
    local grave = graveId and Config.Graves[graveId]
    if not grave then
        notify(src, _U('invalid_grave'), 'error')
        return
    end

    local ped = GetPlayerPed(src)
    if ped == 0 then return end

    if #(GetEntityCoords(ped) - grave.coords) > Config.MaxDigDistance then
        notify(src, _U('too_far_from_grave'), 'error')
        return
    end

    local citizenid = player.PlayerData.citizenid
    local now       = os.time()
    playerCooldowns[citizenid] = playerCooldowns[citizenid] or {}

    if playerCooldowns[citizenid][graveId] and now < playerCooldowns[citizenid][graveId] then
        notify(src, _U('dug_grave'), 'error')
        return
    end

    if not hasItem(src, Config.RequiredItem) then
        notify(src, _U('no_shovel'), 'error')
        return
    end

    playerCooldowns[citizenid][graveId] = now + grave.cooldown
    TriggerClientEvent('w2f-graverobbery:client:setCooldown', src, graveId, grave.cooldown)

    local loot = lootFromMinigame(minigameItems)
    if #loot == 0 then
        notify(src, _U('found_nothing'), 'info')
        return
    end

    local added       = {}
    local inventoryFull = false

    for _, reward in ipairs(loot) do
        if exports.ox_inventory:AddItem(src, reward.item, reward.amount) then
            added[#added + 1] = ('%sx %s'):format(reward.amount, reward.label)
        else
            inventoryFull = true
        end
    end

    if #added > 0 then
        local list = table.concat(added, '\n')
        notify(src, _U('received_items', list), 'success', 5000)

        sendWebhook(WebhookConfig.LootWebhook, {{
            title       = 'W2F Grave Robbery — Loot Received',
            description = ('**Player:** %s\n**Identifier:** %s\n**Grave:** %s\n**Items:**\n%s'):format(
                playerName(player), citizenid, grave.label, list
            ),
            color     = WebhookConfig.Colors.loot,
            timestamp = os.date('!%Y-%m-%dT%H:%M:%S'),
        }})

        print(('[w2f-graverobbery] %s [%s] dug "%s" → %s'):format(
            playerName(player), citizenid, grave.label, list
        ))
    end

    if inventoryFull then
        notify(src, _U('inventory_full'), 'error')
    end
end)

-- Hourly cleanup of expired server-side cooldowns
CreateThread(function()
    while true do
        Wait(3600000)
        local now = os.time()

        for citizenid, graves in pairs(playerCooldowns) do
            for graveId, expires in pairs(graves) do
                if now >= expires then
                    playerCooldowns[citizenid][graveId] = nil
                end
            end
        end
    end
end)
