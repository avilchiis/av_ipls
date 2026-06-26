-- Mercenaries / Club
-- Location: Vinewood Car Club  (1202.407, -3251.251, -50.0)

return {
    id = "club",
    label = "Club",
    category = "Mercenaries",
    min_build = 2944,
    coords = { x = 1202.407, y = -3251.251, z = -50.0 },
    interior_id = 291841,
    ipls = {
        load = {},
        remove = {},
    },
    variants = {
        -- entity_set_no_plus = just lamps; entity_set_plus = car podium
        StyleBase = {
            _type = "select",
            _nullable = false,
            options = {
                empty = "entity_set_no_plus",
                club  = "entity_set_plus",
            },
        },
        -- The two extra sets that bob74 always enables together with "club"
        BackdropFrames = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "entity_set_backdrop_frames",
                off = "",
            },
        },
        Signs = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "entity_set_signs",
                off = "",
            },
        },
        Stairs = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "entity_set_stairs",
                off = "",
            },
        },
    },
    defaults = {
        StyleBase      = "club",
        BackdropFrames = "on",
        Signs          = "on",
        Stairs         = "on",
    },
}
