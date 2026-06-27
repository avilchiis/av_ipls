Config = {}
Config.Debug = false
Config.AdminCommand = "admin:ipl"
Config.AdminGroups = {"group.admin", "group.god", "group.superadmin"}

Config.GhostKeybind = {
    name = 'av_ipls_focus',
    description = 'Restore IPL admin panel focus',
    defaultKey = 'H',
}

function dbug(...)
    if not Config.Debug then return end
    print('^3[DEBUG]^7', ...)
end

function warn(...)
    print('^1[WARNING]^7', ...)
end
