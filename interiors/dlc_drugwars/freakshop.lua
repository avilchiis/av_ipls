-- Los Santos Drug Wars / Freakshop
-- Location: Freakshop  (570.9713, -420.0727, -70.0)

return {
    id = "freakshop",
    label = "Freakshop",
    category = "Los Santos Drug Wars",
    min_build = 2802,
    coords = { x = 570.9713, y = -420.0727, z = -70.0 },
    interior_id = 290817,
    ipls = {
        load = {
            "xm3_warehouse",
            "xm3_warehouse_grnd",
        },
        remove = {
        },
    },
    variants = {
        Door = {
            _type = "toggle",
            _nullable = false,
            options = {
                opened = "entity_set_roller_door_open",
                closed = "entity_set_roller_door_closed",
            },
        },
    },
    defaults = {
        Door = "closed",
    },
}