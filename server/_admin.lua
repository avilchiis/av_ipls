lib.addCommand(Config.AdminCommand, {
    help = 'Open the IPL management menu',
    params = {},
    restricted = Config.AdminGroups
}, function(source)
    TriggerClientEvent('av_ipls:openAdminMenu', source)
end)

function isAdmin(playerId)
    local result = IsPlayerAceAllowed(playerId, ('command.%s'):format(Config.AdminCommand))
    dbug("isAdmin(result)", result)
    return result
end
