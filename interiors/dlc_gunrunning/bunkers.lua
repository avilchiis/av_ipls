-- Gunrunning / Bunkers
-- Location: Desert  (848.6175, 2996.567, 45.8161)

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
        remove = {
        },
    },
    variants = {
        Style = {
            _type = "select",
            _nullable = false,
            options = {
                default = "Bunker_Style_A",
                blue = "Bunker_Style_B",
                yellow = "Bunker_Style_C",
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
                default = "standard_security_set",
                upgrade = "security_upgrade",
            },
        },
        Details = {
            _type = "select",
            _nullable = false,
            options = {
                office = "Office_Upgrade_set",
                officeLocked = "Office_blocker_set",
                locker = "gun_locker_upgrade",
                rangeLights = "gun_range_lights",
                rangeWall = "gun_wall_blocker",
                rangeLocked = "gun_range_blocker_set",
                schematics = "Gun_schematic_set",
            },
        },
    },
    defaults = {
        Style = "default",
        Tier = "default",
        Security = "default",
    },
}