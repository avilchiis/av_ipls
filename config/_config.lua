Config = {}
Config.Debug = false -- Set to true to enable debug messages in the console
Config.AdminCommand = "admin:ipl" -- Command that admins can use to open the IPL management menu
Config.AdminGroups = {"group.admin", "group.god", "group.superadmin"} -- List of groups that can manage IPLs

Config.GhostKeybind = {
    name        = 'av_ipls_focus',
    description = 'Restore IPL admin panel focus',
    defaultKey  = 'H',
}

function dbug(...)
    if not Config.Debug then return end
    print('^3[DEBUG]^7', ...)
end

function warn(...)
    print('^1[WARNING]^7', ...)
end