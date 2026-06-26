-- Finance & Felony / Office2
-- Location: Office 2  (-75.8466, -826.9893, 243.3859)

return {
    id = "office2",
    label = "Office2",
    category = "Finance & Felony",
    coords = { x = -75.8466, y = -826.9893, z = 243.3859 },
    interior_id = {
        Style = 238593,
        classical = 238849,
        vintage = 239105,
        contrast = 239361,
        rich = 239617,
        cool = 239873,
        ice = 240129,
        conservative = 240385,
        polished = 240641,
    },
    ipls = {
        load = {
            "ex_dt1_11_office_01a",
            "ex_dt1_11_office_01b",
            "ex_dt1_11_office_01c",
            "ex_dt1_11_office_02a",
            "ex_dt1_11_office_02b",
            "ex_dt1_11_office_02c",
            "ex_dt1_11_office_03a",
            "ex_dt1_11_office_03b",
            "ex_dt1_11_office_03c",
        },
        remove = {
        },
    },
    variants = {
        Chairs = {
            _type = "toggle",
            _nullable = false,
            options = {
                on = "office_chairs",
                off = "",
            },
        },
        Booze = {
            _type = "toggle",
            _nullable = false,
            options = {
                on = "office_booze",
                off = "",
            },
        },
},
    defaults = {
        Chairs = "on",
        Booze = "on",
},
}