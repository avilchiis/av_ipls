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
        Decoration = {
            _type = "select",
            _nullable = false,
            options = {
                A = "decorative_01",
                B = "decorative_02",
            },
        },
},
    defaults = {
        Walls = "plain",
        Mural = "rideFree",
    
        WallsColor = "sable",
        Furnitures = "A",
        Decoration = "A",
},
}