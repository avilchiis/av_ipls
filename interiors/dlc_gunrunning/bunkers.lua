return {
    id = "bunkers",
    label = "Bunkers",
    category = "Gunrunning",
    coords = { x = 848.6175, y = 2996.567, z = 45.8161 },
    interior_id = 258561,
    ipls = {
        load = {
            "gr_case0_bunkerclosed",
            "gr_case10_bunkerclosed",
            "gr_case11_bunkerclosed",
            "gr_case1_bunkerclosed",
            "gr_case2_bunkerclosed",
            "gr_case3_bunkerclosed",
            "gr_case4_bunkerclosed",
            "gr_case5_bunkerclosed",
            "gr_case6_bunkerclosed",
            "gr_case7_bunkerclosed",
            "gr_case9_bunkerclosed",
            "gr_grdlc_interior_placement_interior_1_grdlc_int_02_milo_",
        },
        remove = {},
    },
    variants = {
        Style = {
            _type = "select",
            _nullable = false,
            options = {
                default = "Bunker_Style_A",
                blue    = "Bunker_Style_B",
                yellow  = "Bunker_Style_C",
            },
        },
        Tier = {
            _type = "select",
            _nullable = false,
            options = {
                default = "standard_bunker_set",
                upgrade = "upgrade_bunker_set",
            },
        },
        Security = {
            _type = "select",
            _nullable = false,
            options = {
                off = "",
                default = "standard_security_set",
                upgrade = "security_upgrade",
            },
        },
        Office = {
            _type = "toggle",
            options = {
                on  = "Office_Upgrade_set",
                off = "",
            },
        },
        OfficeLocked = {
            _type = "toggle",
            options = {
                on  = "Office_blocker_set",
                off = "",
            },
        },
        Locker = {
            _type = "toggle",
            options = {
                on  = "gun_locker_upgrade",
                off = "",
            },
        },
        RangeLights = {
            _type = "toggle",
            options = {
                on  = "gun_range_lights",
                off = "",
            },
        },
        RangeWall = {
            _type = "toggle",
            options = {
                on  = "gun_wall_blocker",
                off = "",
            },
        },
        RangeLocked = {
            _type = "toggle",
            options = {
                on  = "gun_range_blocker_set",
                off = "",
            },
        },
        Schematics = {
            _type = "toggle",
            options = {
                on  = "Gun_schematic_set",
                off = "",
            },
        },
    },
    defaults = {
        Style    = "default",
        Tier     = "default",
        Security = "default",
    },
}
