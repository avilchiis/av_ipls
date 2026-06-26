-- Finance & Felony / Office1
-- Location: Office 1  (-141.1987, -620.913, 168.8205)

return {
    id = "office1",
    label = "Office1",
    category = "Finance & Felony",
    coords = { x = -141.1987, y = -620.913, z = 168.8205 },
    interior_id = {
        Style = 236289,
        classical = 236545,
        vintage = 236801,
        contrast = 237057,
        rich = 237313,
        cool = 237569,
        ice = 237825,
        conservative = 238081,
        polished = 238337,
    },
    ipls = {
        load = {
            "ex_dt1_02_office_01a",
            "ex_dt1_02_office_01b",
            "ex_dt1_02_office_01c",
            "ex_dt1_02_office_02a",
            "ex_dt1_02_office_02b",
            "ex_dt1_02_office_02c",
            "ex_dt1_02_office_03a",
            "ex_dt1_02_office_03b",
            "ex_dt1_02_office_03c",
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