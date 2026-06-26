-- Bikers / Cocaine
-- Location: Cocaine lockup  (1093.6, -3196.6, -38.9984)

return {
    id = "cocaine",
    label = "Cocaine",
    category = "Bikers",
    coords = { x = 1093.6, y = -3196.6, z = -38.9984 },
    interior_id = 247553,
    ipls = {
        load = {
            "bkr_biker_interior_placement_interior_4_biker_dlc_int_ware03_milo",
        },
        remove = {
        },
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
        Details = {
            _type = "select",
            _nullable = false,
            options = {
                cokeBasic1 = "coke_cut_01",
                cokeBasic2 = "coke_cut_02",
                cokeBasic3 = "coke_cut_03",
                cokeUpgrade1 = "coke_cut_04",
                cokeUpgrade2 = "coke_cut_05",
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
},
    defaults = {
        Style = "basic",
},
}