-- The Contract / Office
-- Location: McKenzie Field Hangar Office  (2149.71, 4787.76, -47.0)

return {
    id = "agents_office",
    label = "Office",
    category = "The Contract",
    min_build = 3407,
    coords = { x = 2149.71, y = 4787.76, z = -47.0 },
    interior_id = 297985,
    ipls = {
        load = {
        },
        remove = {
        },
    },
    variants = {
        Style = {
            _type = "select",
            _nullable = false,
            options = {
                bed = "set_bed",
                mess = "collision_z9mhn5",
            },
        },
        Details = {
            _type = "select",
            _nullable = false,
            options = {
                laptop = "set_laptop",
                ammo = "set_ammo",
                intel = "set_intel",
                weapons = "set_weapons",
                tools = "collision_9k04j35",
                booze = "set_24_2",
            },
        },
    },
    defaults = {
        Style = "bed",
    },
}