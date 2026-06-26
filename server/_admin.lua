lib.addCommand(Config.AdminCommand, {
    help = 'Open the IPL management menu',
    params = {},
    restricted = Config.AdminGroups
}, function(source)
    TriggerClientEvent('av_ipls:openAdminMenu', source)
end)

function isAdmin(playerId) -- Used for admin panel actions
    local result = IsPlayerAceAllowed(playerId, ('command.%s'):format(Config.AdminCommand)) -- run the default admin check
    dbug("isAdmin(result)", result)
    return result
end