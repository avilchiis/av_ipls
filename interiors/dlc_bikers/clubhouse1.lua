-- Bikers / Clubhouse1
-- Location: Clubhouse1  (1107.04, -3157.399, -37.5186)

return {
    id = "clubhouse1",
    label = "Clubhouse1",
    category = "Bikers",
    coords = { x = 1107.04, y = -3157.399, z = -37.5186 },
    interior_id = 246273,
    ipls = {
        load = {
            "bkr_biker_interior_placement_interior_0_biker_dlc_int_01_milo",
        },
        remove = {
        },
    },
    variants = {
        Walls = {
            _type = "select",
            _nullable = false,
            options = {
                brick = "walls_01",
                plain = "walls_02",
            },
        },
        Mural = {
            _type = "select",
            _nullable = false,
            options = {
                rideFree = "mural_01",
                mods = "mural_02",
                brave = "mural_03",
                fist = "mural_04",
                forest = "mural_05",
                mods2 = "mural_06",
                rideForever = "mural_07",
                heart = "mural_08",
                route68 = "mural_09",
            },
        },
        GunLocker = {
            _type = "toggle",
            _nullable = false,
            options = {
                on = "gun_locker",
                off = "no_gun_locker",
            },
        },
        ModBooth = {
            _type = "toggle",
            _nullable = false,
            options = {
                on = "mod_booth",
                off = "no_mod_booth",
            },
        },
        WallsColor = {
            _type = "color",
            _nullable = false,
            _target = "Walls",
            options = {
                sable = 0,
                yellowGray = 1,
                red = 2,
                brown = 3,
                yellow = 4,
                lightYellow = 5,
                lightYellowGray = 6,
                lightGray = 7,
                orange = 8,
                gray = 9,
            },
        },
        Furnitures = {
            _type = "select",
            _nullable = false,
            options = {
                A = "furnishings_01",
                B = "furnishings_02",
            },
        },
        FurnituresColor = {
            _type = "color",
            _nullable = false,
            _target = "Furnitures",
            options = {
                sable = 0,
                yellowGray = 1,
                red = 2,
                brown = 3,
                yellow = 4,
                lightYellow = 5,
                lightYellowGray = 6,
                lightGray = 7,
                orange = 8,
                gray = 9,
            },
        },
        Decoration = {
            _type = "select",
            _nullable = false,
            options = {
                A = "decorative_01",
                B = "decorative_02",
            },
        },
        MethStash = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "meth_stash1",
                B = { "meth_stash1", "meth_stash2" },
                C = { "meth_stash1", "meth_stash2", "meth_stash3" },
            },
        },
        CashStash = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "cash_stash1",
                B = { "cash_stash1", "cash_stash2" },
                C = { "cash_stash1", "cash_stash2", "cash_stash3" },
            },
        },
        WeedStash = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "weed_stash1",
                B = { "weed_stash1", "weed_stash2" },
                C = { "weed_stash1", "weed_stash2", "weed_stash3" },
            },
        },
        CokeStash = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "coke_stash1",
                B = { "coke_stash1", "coke_stash2" },
                C = { "coke_stash1", "coke_stash2", "coke_stash3" },
            },
        },
        CounterfeitStash = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "counterfeit_stash1",
                B = { "counterfeit_stash1", "counterfeit_stash2" },
                C = { "counterfeit_stash1", "counterfeit_stash2", "counterfeit_stash3" },
            },
        },
        DocumentStash = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "id_stash1",
                B = { "id_stash1", "id_stash2" },
                C = { "id_stash1", "id_stash2", "id_stash3" },
            },
        },
    },
    defaults = {
        Walls = "plain",
        Mural = "rideFree",
        WallsColor = "sable",
        Furnitures = "A",
        FurnituresColor = "sable",
        Decoration = "A",
    },
}
