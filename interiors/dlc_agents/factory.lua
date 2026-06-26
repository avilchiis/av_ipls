-- The Contract / Factory
-- Location: Garment Factory  (752.31, -997.24, -47.0)

return {
    id = "factory",
    label = "Factory",
    category = "The Contract",
    min_build = 3407,
    coords = { x = 752.31, y = -997.24, z = -47.0 },
    interior_id = 297729,
    ipls = {
        load = {
            "m24_2_garment_factory",
        },
        remove = {
        },
    },
    variants = {
        Trophy = {
            _type = "select",
            _nullable = false,
            options = {
                egg = "set_pent_rob_egg",
                idol01 = "set_pent_rob_idol_01",
                idol02 = "set_pent_rob_idol_02",
                scarab = "set_zanc_scarab",
                drive = "set_whistle_drive",
                plane = "set_cargo",
            },
        },
        Details = {
            _type = "select",
            _nullable = false,
            options = {
                sonar = "set_sonar",
                drive = "set_malware_drive",
                controller = "set_rc_controller",
                thermite = "set_thermal",
                key = "set_smartkey",
                drone = "set_pent_drone",
                case = "set_pent_emp",
                armor = "set_zanc_armor",
                keycard = "set_zanc_keycard",
            },
        },
    },
    defaults = {},
}