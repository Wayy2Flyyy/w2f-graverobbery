local function getQboxPlayer(src)
    return exports.qbx_core and exports.qbx_core:GetPlayer(src) or nil
end

local function getQBCore()
    return exports['qb-core'] and exports['qb-core']:GetCoreObject() or nil
end

local function getESX()
    return exports['es_extended'] and exports['es_extended']:getSharedObject() or nil
end

local function getLicenseIdentifier(src)
    for _, identifier in ipairs(GetPlayerIdentifiers(src)) do
        if identifier:find('license:', 1, true) == 1 then return identifier end
    end
    return nil
end

function W2F.Framework.GetPlayer(src)
    if W2F.Framework.IsQbox() then
        return getQboxPlayer(src)
    elseif W2F.Framework.IsQBCore() then
        local qb = getQBCore()
        return qb and qb.Functions.GetPlayer(src) or nil
    elseif W2F.Framework.IsESX() then
        local esx = getESX()
        return esx and esx.GetPlayerFromId(src) or nil
    end
end

function W2F.Framework.GetCitizenId(src)
    local player = W2F.Framework.GetPlayer(src)
    if player and W2F.Framework.IsQBFamily() then
        return player.PlayerData and player.PlayerData.citizenid or nil
    end
end

function W2F.Framework.GetIdentifier(src)
    local player = W2F.Framework.GetPlayer(src)
    if player then
        if W2F.Framework.IsQBFamily() then
            return (player.PlayerData and player.PlayerData.citizenid) or getLicenseIdentifier(src) or ('src:%s'):format(src)
        elseif W2F.Framework.IsESX() then
            return player.identifier or getLicenseIdentifier(src) or ('src:%s'):format(src)
        end
    end

    return getLicenseIdentifier(src) or ('src:%s'):format(src)
end

function W2F.Framework.GetCharName(src)
    local player = W2F.Framework.GetPlayer(src)
    if not player then return GetPlayerName(src) or ('ID %s'):format(src) end

    if W2F.Framework.IsQBFamily() then
        local ci = player.PlayerData and player.PlayerData.charinfo or {}
        local full = (('%s %s'):format(ci.firstname or '', ci.lastname or '')):match('^%s*(.-)%s*$')
        return full ~= '' and full or (GetPlayerName(src) or ('ID %s'):format(src))
    elseif W2F.Framework.IsESX() then
        if type(player.getName) == 'function' then
            local full = player.getName()
            if full and full ~= '' then return full end
        end

        if type(player.get) == 'function' then
            local full = (('%s %s'):format(player.get('firstName') or '', player.get('lastName') or '')):match('^%s*(.-)%s*$')
            if full ~= '' then return full end
        end
    end

    return GetPlayerName(src) or ('ID %s'):format(src)
end
