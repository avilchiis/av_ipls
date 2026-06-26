-- GTA V Base Game / Franklin Aunt

return {
    id = "franklin_aunt",
    label = "Franklin Aunt",
    category = "GTA V Base Game",
    coords = { x = 13.77, y = -1364.72, z = 29.38 },
    interior_id = 197889,
    ipls = {
        load = {
        },
        remove = {
        },
    },
    variants = {
        Style = {
            _type = "select",
            _nullable = false,
            options = {
                franklinStuff = "V_57_FranklinStuff",
                franklinLeft = "V_57_Franklin_LEFT",
            },
        },
        Details = {
            _type = "select",
            _nullable = false,
            options = {
                bandana = "V_57_GangBandana",
                bag = "V_57_Safari",
            },
        },
    },
    defaults = {
        Style = "empty",
    },
}