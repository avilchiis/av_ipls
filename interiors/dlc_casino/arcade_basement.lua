-- The Diamond Casino / Arcade Basement
-- Location: Arcade basement  (2710.0, -360.78, -56.0)

return {
    id = "arcade_basement",
    label = "Arcade Basement",
    category = "The Diamond Casino",
    min_build = 2060,
    coords = { x = 2710.0, y = -360.78, z = -56.0 },
    interior_id = 278529,
    ipls = {
        load = {
        },
        remove = {
        },
    },
    variants = {
        Garage = {
            _type = "select",
            _nullable = false,
            options = {
                garage = "set_plan_garage",
                wall = "set_plan_wall",
            },
        },
        Bed = {
            _type = "select",
            _nullable = false,
            options = {
                bed = "set_plan_bed",
                trash = "set_plan_no_bed",
            },
        },
    
        Style = {
            _type = "stages",
            _nullable = false,
            options = {
                derelict = "set_plan_pre_setup",
                normal = { "set_plan_setup", "set_plan_scribbles" },
            },
        },
        Details = {
            _type = "select",
            _nullable = false,
            options = {
                computer = "set_plan_computer",
                cabinets = "set_plan_arcade_x4",
                plans = "set_plan_plans",
                casino = "set_plan_casino",
                keypad = "set_plan_keypad",
                vault = "set_plan_vault",
                mechanic = "set_plan_mechanic",
                hacker = "set_plan_hacker",
                weapons = "set_plan_weapons",
                vaultLaser = "set_plan_vault_laser",
                vaultDrill = "set_plan_vault_drill",
                drill = "set_plan_electric_drill",
                explosives = "set_plan_plastic_explosives",
                dongle = "set_plan_hacking_device",
                cockroaches = "set_plan_cockroaches",
                stealthOutfits = "set_plan_stealth_outfits",
                securityOutfits = "set_plan_gruppe_sechs_outfits",
                helmet = "set_plan_fireman_helmet",
                drone = "set_plan_drone_parts",
                keycards = "set_plan_vault_keycard_01a",
                keycard1 = "set_plan_swipe_card_01a",
                keycard2 = "set_plan_swipe_card_01b",
                vaultLaser2 = "set_plan_vault_laser_alt",
                vaultDrill2 = "set_plan_vault_drill_alt",
            },
        },
},
    defaults = {
        Garage = "garage",
        Bed = "bed",
    
        Style = "normal",
        Details = "computer",
},
}