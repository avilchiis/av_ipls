-- Shared globals — must load first in client_scripts

Registry = require 'interiors.registry'
serverState = {}
localOverrides = {}
isReady = false
currentInteriorId = 0
gameBuild = GetGameBuildNumber()

dbug('main.lua loaded — registry: ' .. (function()
    local n = 0; for _ in pairs(Registry) do n = n + 1 end; return n
end)() .. ' entries')