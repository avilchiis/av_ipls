-- Bikers / Clubhouse2
-- Location: Clubhouse2  (998.4809, -3164.711, -38.9073)

return {
    id = "clubhouse2",
    label = "Clubhouse2",
    category = "Bikers",
    coords = { x = 998.4809, y = -3164.711, z = -38.9073 },
    interior_id = 246529,
    ipls = {
        load = {
            "bkr_biker_interior_placement_interior_1_biker_dlc_int_02_milo",
        },
        remove = {},
    },
    variants = {
        -- ── Walls ──────────────────────────────────────────────────────────────
        Walls = {
            _type = "select",
            _nullable = false,
            options = {
                brick = "walls_01",
                plain = "walls_02",
            },
        },
        -- Color of the upper-wall entity set chosen by Walls above
        WallsColor = {
            _type = "color",
            _nullable = false,
            _target = "Walls",
            options = {
                greenAndGray      = 1,
                multicolor        = 2,
                orangeAndGray     = 3,
                blue              = 4,
                lightBlueAndSable = 5,
                greenAndRed       = 6,
                yellowAndGray     = 7,
                red               = 8,
                fuchsiaAndGray    = 9,
            },
        },
        -- Lower walls: always uses the fixed entity set "lower_walls_default"
        LowerWalls = {
            _type = "color",
            _nullable = false,
            entity_set = "lower_walls_default",
            options = {
                greenAndGray      = 1,
                multicolor        = 2,
                orangeAndGray     = 3,
                blue              = 4,
                lightBlueAndSable = 5,
                greenAndRed       = 6,
                yellowAndGray     = 7,
                red               = 8,
                fuchsiaAndGray    = 9,
            },
        },
        -- ── Mural ──────────────────────────────────────────────────────────────
        Mural = {
            _type = "select",
            _nullable = false,
            options = {
                death1     = "mural_01",
                cityColor1 = "mural_02",
                death2     = "mural_03",
                cityColor2 = "mural_04",
                graffitis  = "mural_05",
                cityColor3 = "mural_06",
                cityColor4 = "mural_07",
                cityBlack  = "mural_08",
                death3     = "mural_09",
            },
        },
        -- ── Furniture ─────────────────────────────────────────────────────────
        Furnitures = {
            _type = "select",
            _nullable = false,
            options = {
                A = "furnishings_01",
                B = "furnishings_02",
            },
        },
        -- Color of the furniture entity set chosen by Furnitures above
        FurnituresColor = {
            _type = "color",
            _nullable = false,
            _target = "Furnitures",
            options = {
                turquoise = 0,
                darkBrown = 1,
                brown     = 2,
                brown2    = 4,
                gray      = 5,
                red       = 6,
                darkGray  = 7,
                black     = 8,
                red2      = 9,
            },
        },
        -- ── Decoration ────────────────────────────────────────────────────────
        Decoration = {
            _type = "select",
            _nullable = false,
            options = {
                A = "decorative_01",
                B = "decorative_02",
            },
        },
        -- ── Equipment ─────────────────────────────────────────────────────────
        GunLocker = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "gun_locker",
                off = "no_gun_locker",
            },
        },
        ModBooth = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "mod_booth",
                off = "no_mod_booth",
            },
        },
        -- ── Stashes ───────────────────────────────────────────────────────────
        MethStash = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "meth_small",
                B = { "meth_small", "meth_medium" },
                C = { "meth_small", "meth_medium", "meth_large" },
            },
        },
        CashStash = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "cash_small",
                B = { "cash_small", "cash_medium" },
                C = { "cash_small", "cash_medium", "cash_large" },
            },
        },
        WeedStash = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "weed_small",
                B = { "weed_small", "weed_medium" },
                C = { "weed_small", "weed_medium", "weed_large" },
            },
        },
        CokeStash = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "coke_small",
                B = { "coke_small", "coke_medium" },
                C = { "coke_small", "coke_medium", "coke_large" },
            },
        },
        CounterfeitStash = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "counterfeit_small",
                B = { "counterfeit_small", "counterfeit_medium" },
                C = { "counterfeit_small", "counterfeit_medium", "counterfeit_large" },
            },
        },
        DocumentStash = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "id_small",
                B = { "id_small", "id_medium" },
                C = { "id_small", "id_medium", "id_large" },
            },
        },
    },
    defaults = {
        Walls          = "brick",
        WallsColor     = "greenAndGray",
        LowerWalls     = "greenAndGray",
        Mural          = "death3",
        Furnitures     = "A",
        FurnituresColor = "darkBrown",
        Decoration     = "A",
        GunLocker      = "off",
        ModBooth       = "off",
    },
}
