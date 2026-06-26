-- Mercenaries / Lab
-- Location: Fort Zancudo Lab  (-1916.119, 3749.719, -100.0)

return {
    id = "mercenaries_lab",
    label = "Lab",
    category = "Mercenaries",
    min_build = 2944,
    coords = { x = -1916.119, y = 3749.719, z = -100.0 },
    interior_id = 292097,
    ipls = {
        load = {},
        remove = {},
    },
    variants = {
        Levers = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "entity_set_levers",
                off = "",
            },
        },
        Crates = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "entity_set_crates",
                off = "",
            },
        },
        Weapons = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "entity_set_weapons",
                off = "",
            },
        },
        Lights = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "entity_set_lift_lights",
                off = "",
            },
        },
    },
    defaults = {
        Levers  = "on",
        Crates  = "on",
        Weapons = "on",
        Lights  = "on",
    },
}
