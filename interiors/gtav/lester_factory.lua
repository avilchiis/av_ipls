-- GTA V Base Game / Lester Factory

return {
    id = "lester_factory",
    label = "Lester Factory",
    category = "GTA V Base Game",
    coords = { x = 716.48, y = -962.17, z = 30.39 },
    interior_id = 92674,
    ipls = {
        load = {
        },
        remove = {
        },
    },
    variants = {
        Details = {
            _type = "select",
            _nullable = false,
            options = {
                bluePrint = "V_53_Agency_Blueprint",
                bag = "V_35_KitBag",
                fireMan = "V_35_Fireman",
                armour = "V_35_Body_Armour",
                gasMask = "Jewel_Gasmasks",
                janitorStuff = "v_53_agency _overalls",
            },
        },
    },
    defaults = {},
}