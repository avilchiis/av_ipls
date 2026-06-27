return {
    id = "cocaine",
    label = "Cocaine",
    category = "Bikers",
    coords = { x = 1093.6, y = -3196.6, z = -38.9984 },
    interior_id = 247553,
    ipls = {
        load = { "bkr_biker_interior_placement_interior_4_biker_dlc_int_ware03_milo" },
        remove = {},
    },
    variants = {
        Security = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "security_low",
                upgrade = "security_high",
            },
        },
        Style = {
            _type = "stages",
            _nullable = false,
            options = {
                none = "",
                basic = { "set_up", "equipment_basic", "coke_press_basic", "production_basic", "table_equipment" },
                upgrade = { "set_up", "equipment_upgrade", "coke_press_upgrade", "production_upgrade", "table_equipment_upgrade" },
            },
        },
        CokeBasic1 = { _type = "toggle", options = { on = "coke_cut_01", off = "" } },
        CokeBasic2 = { _type = "toggle", options = { on = "coke_cut_02", off = "" } },
        CokeBasic3 = { _type = "toggle", options = { on = "coke_cut_03", off = "" } },
        CokeUpgrade1 = { _type = "toggle", options = { on = "coke_cut_04", off = "" } },
        CokeUpgrade2 = { _type = "toggle", options = { on = "coke_cut_05", off = "" } },
    },
    defaults = {
        Style = "basic",
    },
}
