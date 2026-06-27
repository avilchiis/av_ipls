return {
    id = "agents_office",
    label = "Office",
    category = "Agents of Sabotage",
    min_build = 3407,
    coords = { x = 2149.71, y = 4787.76, z = -47.0 },
    interior_id = 297985,
    ipls = {
        load = {},
        remove = {},
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
        Laptop = {
            _type = "toggle",
            options = { on = "set_laptop", off = "" },
        },
        Ammo = {
            _type = "toggle",
            options = { on = "set_ammo", off = "" },
        },
        Intel = {
            _type = "toggle",
            options = { on = "set_intel", off = "" },
        },
        Weapons = {
            _type = "toggle",
            options = { on = "set_weapons", off = "" },
        },
        Tools = {
            _type = "toggle",
            options = { on = "collision_9k04j35", off = "" },
        },
        Booze = {
            _type = "toggle",
            options = { on = "set_24_2", off = "" },
        },
    },
    defaults = {
        Style = "bed",
    },
}
