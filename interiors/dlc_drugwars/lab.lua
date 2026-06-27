-- Los Santos Drug Wars / Lab
-- Location: Acid Lab  (483.4252, -2625.071, -50.0)

return {
    id = "drugwars_lab",
    label = "Lab",
    category = "Los Santos Drug Wars",
    min_build = 2802,
    coords = { x = 483.4252, y = -2625.071, z = -50.0 },
    interior_id = 290305,
    ipls = {
        load = {
        },
        remove = {
        },
    },
    variants = {
        Products = {
            _type = "toggle",
            _nullable = false,
            options = {
                on = { "set_product_01", "set_product_02", "set_product_03", "set_product_04", "set_product_05" },
                off = "",
            },
        },
        Supplies = {
            _type = "toggle",
            _nullable = false,
            options = {
                on = { "set_supplies_01", "set_supplies_02", "set_supplies_03", "set_supplies_04", "set_supplies_05" },
                off = "",
            },
        },
        Equipment = {
            _type = "toggle",
            _nullable = false,
            options = {
                on = "set_equipment_upgrade",
                off = "",
            },
        },
    },
    defaults = {
        Products = "on",
        Supplies = "on",
        Equipment = "on",
    },
}
