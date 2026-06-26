-- The Doomsday Heist / Facility

return {
    id = "facility",
    label = "Facility",
    category = "The Doomsday Heist",
    coords = { x = 345.0, y = 4842.0, z = -60.0 },
    interior_id = 269313,
    ipls = {
        load = {
            "xm_bunkerentrance_door",
            "xm_hatch_01_cutscene",
            "xm_hatch_02_cutscene",
            "xm_hatch_03_cutscene",
            "xm_hatch_04_cutscene",
            "xm_hatch_06_cutscene",
            "xm_hatch_07_cutscene",
            "xm_hatch_08_cutscene",
            "xm_hatch_09_cutscene",
            "xm_hatch_10_cutscene",
            "xm_hatch_closed",
            "xm_hatches_terrain",
            "xm_hatches_terrain_lod",
            "xm_siloentranceclosed_x17",
            "xm_x17dlc_int_placement_interior_33_x17dlc_int_02_milo_",
        },
        remove = {},
    },
    variants = {
        -- ── Walls color ───────────────────────────────────────────────────────────
        WallsColor = {
            _type = "color",
            _nullable = false,
            entity_set = "set_int_02_shell",
            options = {
                utility   = 1,
                expertise = 2,
                altitude  = 3,
                power     = 4,
                authority = 5,
                influence = 6,
                order     = 7,
                empire    = 8,
                supremacy = 9,
            },
        },
        -- ── Decals ───────────────────────────────────────────────────────────────
        Decals = {
            _type = "select_nullable",
            _nullable = true,
            options = {
                style01 = "set_int_02_decal_01",
                style02 = "set_int_02_decal_02",
                style03 = "set_int_02_decal_03",
                style04 = "set_int_02_decal_04",
                style05 = "set_int_02_decal_05",
                style06 = "set_int_02_decal_06",
                style07 = "set_int_02_decal_07",
                style08 = "set_int_02_decal_08",
                style09 = "set_int_02_decal_09",
            },
        },
        -- ── Lounge ───────────────────────────────────────────────────────────────
        Lounge = {
            _type = "select",
            _nullable = false,
            options = {
                utility  = "set_int_02_lounge1",
                prestige = "set_int_02_lounge2",
                premier  = "set_int_02_lounge3",
            },
        },
        LoungeColor = {
            _type = "color",
            _nullable = false,
            _target = "Lounge",
            options = {
                utility   = 1,
                expertise = 2,
                altitude  = 3,
                power     = 4,
                authority = 5,
                influence = 6,
                order     = 7,
                empire    = 8,
                supremacy = 9,
            },
        },
        -- ── Sleeping ─────────────────────────────────────────────────────────────
        Sleeping = {
            _type = "select_nullable",
            _nullable = true,
            options = {
                none     = "set_int_02_no_sleep",
                utility  = "set_int_02_sleep",
                prestige = "set_int_02_sleep2",
                premier  = "set_int_02_sleep3",
            },
        },
        SleepingColor = {
            _type = "color",
            _nullable = false,
            _target = "Sleeping",
            options = {
                utility   = 1,
                expertise = 2,
                altitude  = 3,
                power     = 4,
                authority = 5,
                influence = 6,
                order     = 7,
                empire    = 8,
                supremacy = 9,
            },
        },
        -- ── Security ─────────────────────────────────────────────────────────────
        Security = {
            _type = "toggle",
            _nullable = false,
            options = {
                off = "set_int_02_no_security",
                on  = "set_int_02_security",
            },
        },
        SecurityColor = {
            _type = "color",
            _nullable = false,
            _target = "Security",
            options = {
                utility   = 1,
                expertise = 2,
                altitude  = 3,
                power     = 4,
                authority = 5,
                influence = 6,
                order     = 7,
                empire    = 8,
                supremacy = 9,
            },
        },
        -- ── Cannon ───────────────────────────────────────────────────────────────
        Cannon = {
            _type = "toggle",
            _nullable = false,
            options = {
                off = "set_int_02_no_cannon",
                on  = "set_int_02_cannon",
            },
        },
        CannonColor = {
            _type = "color",
            _nullable = false,
            _target = "Cannon",
            options = {
                utility   = 1,
                expertise = 2,
                altitude  = 3,
                power     = 4,
                authority = 5,
                influence = 6,
                order     = 7,
                empire    = 8,
                supremacy = 9,
            },
        },
        -- ── Outfits ──────────────────────────────────────────────────────────────
        Outfits = {
            _type = "select",
            _nullable = false,
            options = {
                paramedic    = "Set_Int_02_outfit_paramedic",
                morgue       = "Set_Int_02_outfit_morgue",
                serverFarm   = "Set_Int_02_outfit_serverfarm",
                iaa          = "Set_Int_02_outfit_iaa",
                stealAvenger = "Set_Int_02_outfit_steal_avenger",
                foundry      = "Set_Int_02_outfit_foundry",
                riot         = "Set_Int_02_outfit_riot_van",
                stromberg    = "Set_Int_02_outfit_stromberg",
                submarine    = "Set_Int_02_outfit_sub_finale",
                predator     = "Set_Int_02_outfit_predator",
                khanjali     = "Set_Int_02_outfit_khanjali",
                volatol      = "Set_Int_02_outfit_volatol",
            },
        },
        -- ── Trophies ─────────────────────────────────────────────────────────────
        Trophies = {
            _type = "select",
            _nullable = false,
            options = {
                eagle     = "set_int_02_trophy1",
                iaa       = "set_int_02_trophy_iaa",
                submarine = "set_int_02_trophy_sub",
            },
        },
        -- Color applies to the submarine trophy entity set
        TrophiesColor = {
            _type = "color",
            _nullable = false,
            entity_set = "set_int_02_trophy_sub",
            options = {
                utility   = 1,
                expertise = 2,
                altitude  = 3,
                power     = 4,
                authority = 5,
                influence = 6,
                order     = 7,
                empire    = 8,
                supremacy = 9,
            },
        },
        -- ── Vehicle parts (stages) ───────────────────────────────────────────────
        KhanjaliParts = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "Set_Int_02_Parts_Panther1",
                B = "Set_Int_02_Parts_Panther2",
                C = "Set_Int_02_Parts_Panther3",
            },
        },
        RiotParts = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "Set_Int_02_Parts_Riot1",
                B = "Set_Int_02_Parts_Riot2",
                C = "Set_Int_02_Parts_Riot3",
            },
        },
        ChenoParts = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "Set_Int_02_Parts_Cheno1",
                B = "Set_Int_02_Parts_Cheno2",
                C = "Set_Int_02_Parts_Cheno3",
            },
        },
        ThrusterParts = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "Set_Int_02_Parts_Thruster1",
                B = "Set_Int_02_Parts_Thruster2",
                C = "Set_Int_02_Parts_Thruster3",
            },
        },
        AvengerParts = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "Set_Int_02_Parts_Avenger1",
                B = "Set_Int_02_Parts_Avenger2",
                C = "Set_Int_02_Parts_Avenger3",
            },
        },
        -- ── Clutter (stages) ─────────────────────────────────────────────────────
        Clutter = {
            _type = "stages",
            _nullable = false,
            options = {
                A = "set_int_02_clutter1",
                B = "set_int_02_clutter2",
                C = "set_int_02_clutter3",
                D = "set_int_02_clutter4",
                E = "set_int_02_clutter5",
            },
        },
        -- ── Crew Emblem ──────────────────────────────────────────────────────────
        CrewEmblem = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "set_int_02_crewemblem",
                off = "",
            },
        },
    },
    defaults = {
        WallsColor    = "utility",
        Decals        = "style01",
        Lounge        = "premier",
        LoungeColor   = "utility",
        Sleeping      = "premier",
        SleepingColor = "utility",
        Security      = "on",
        SecurityColor = "utility",
        Cannon        = "on",
        CannonColor   = "utility",
        Outfits       = "volatol",
        Trophies      = "eagle",
        TrophiesColor = "utility",
        KhanjaliParts = "C",
        RiotParts     = "C",
        ChenoParts    = "C",
        ThrusterParts = "C",
        AvengerParts  = "C",
        Clutter       = "B",
        CrewEmblem    = "off",
    },
}
