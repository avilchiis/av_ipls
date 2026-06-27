return {
    id = "counterfeit_cash",
    label = "Counterfeit Cash",
    category = "Bikers",
    coords = { x = 1121.897, y = -3195.338, z = -40.4025 },
    interior_id = 247809,
    ipls = {
        load = { "bkr_biker_interior_placement_interior_5_biker_dlc_int_ware04_milo" },
        remove = {},
    },
    variants = {
        Printer = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "counterfeit_standard_equip_no_prod",
                basicProd = "counterfeit_standard_equip",
                upgrade = "counterfeit_upgrade_equip_no_prod",
                upgradeProd = "counterfeit_upgrade_equip",
            },
        },
        Security = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "counterfeit_low_security",
                upgrade = "counterfeit_security",
            },
        },
        Dryer1 = { _type = "select", _nullable = false, options = { on = "dryera_on", off = "dryera_off", open = "dryera_open" } },
        Dryer2 = { _type = "select", _nullable = false, options = { on = "dryerb_on", off = "dryerb_off", open = "dryerb_open" } },
        Dryer3 = { _type = "select", _nullable = false, options = { on = "dryerc_on", off = "dryerc_off", open = "dryerc_open" } },
        Dryer4 = { _type = "select", _nullable = false, options = { on = "dryerd_on", off = "dryerd_off", open = "dryerd_open" } },
        Chairs = { _type = "toggle", options = { on = "special_chairs", off = "" } },
        Cutter = { _type = "toggle", options = { on = "money_cutter", off = "" } },
        Furnitures = { _type = "toggle", options = { on = "counterfeit_setup", off = "" } },
        Cash10 = {
            _type = "stages",
            _nullable = true,
            options = {
                A = "counterfeit_cashpile10a",
                B = { "counterfeit_cashpile10a", "counterfeit_cashpile10b" },
                C = { "counterfeit_cashpile10a", "counterfeit_cashpile10b", "counterfeit_cashpile10c" },
                D = { "counterfeit_cashpile10a", "counterfeit_cashpile10b", "counterfeit_cashpile10c", "counterfeit_cashpile10d" },
            },
        },
        Cash20 = {
            _type = "stages",
            _nullable = true,
            options = {
                A = "counterfeit_cashpile20a",
                B = { "counterfeit_cashpile20a", "counterfeit_cashpile20b" },
                C = { "counterfeit_cashpile20a", "counterfeit_cashpile20b", "counterfeit_cashpile20c" },
                D = { "counterfeit_cashpile20a", "counterfeit_cashpile20b", "counterfeit_cashpile20c", "counterfeit_cashpile20d" },
            },
        },
        Cash100 = {
            _type = "stages",
            _nullable = true,
            options = {
                A = "counterfeit_cashpile100a",
                B = { "counterfeit_cashpile100a", "counterfeit_cashpile100b" },
                C = { "counterfeit_cashpile100a", "counterfeit_cashpile100b", "counterfeit_cashpile100c" },
                D = { "counterfeit_cashpile100a", "counterfeit_cashpile100b", "counterfeit_cashpile100c", "counterfeit_cashpile100d" },
            },
        },
    },
    defaults = {
        Printer = "basicProd",
        Security = "upgrade",
        Dryer1 = "open",
        Dryer2 = "on",
        Dryer3 = "on",
        Dryer4 = "on",
        Cash100 = "D",
    },
}
