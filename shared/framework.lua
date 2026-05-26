W2F = W2F or {}
W2F.Framework = W2F.Framework or {}

Config = Config or {}
Config.Framework = Config.Framework or 'auto'

local state = { detected = nil }

local function normalizeName(name)
    if name == 'qbox' or name == 'qbcore' or name == 'esx' then return name end
    return nil
end

function W2F.Framework.Detect()
    local configured = normalizeName(Config.Framework)
    if Config.Framework ~= 'auto' and configured then
        state.detected = configured
        return configured
    end

    if GetResourceState('qbx_core') == 'started' then
        state.detected = 'qbox'
    elseif GetResourceState('qb-core') == 'started' then
        state.detected = 'qbcore'
    elseif GetResourceState('es_extended') == 'started' then
        state.detected = 'esx'
    else
        state.detected = nil
        print(('[w2f-graverobbery] ERROR: no supported framework started (Config.Framework=%s)'):format(tostring(Config.Framework)))
    end

    return state.detected
end

function W2F.Framework.GetName()
    return state.detected or W2F.Framework.Detect()
end

function W2F.Framework.IsQbox() return W2F.Framework.GetName() == 'qbox' end
function W2F.Framework.IsQBCore() return W2F.Framework.GetName() == 'qbcore' end
function W2F.Framework.IsESX() return W2F.Framework.GetName() == 'esx' end
function W2F.Framework.IsQBFamily()
    local n = W2F.Framework.GetName()
    return n == 'qbox' or n == 'qbcore'
end
