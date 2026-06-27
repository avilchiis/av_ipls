-- Finance & Felony / Office1

return {
    id = "office1",
    label = "Office1",
    category = "Finance & Felony",
    coords = { x = -141.1987, y = -620.913, z = 168.8205 },
    interior_id = {
        warm = 236289,
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
        load = {},   -- IPLs are managed by the Style (ipl_select) variant
        remove = {},
    },
    variants = {
        -- Each style loads its own IPL + uses its own interior_id
        Style = {
            _type = "ipl_select",
            _nullable = false,
            options = {
                warm = "ex_dt1_02_office_01a",
                classical = "ex_dt1_02_office_01b",
                vintage = "ex_dt1_02_office_01c",
                contrast = "ex_dt1_02_office_02a",
                rich = "ex_dt1_02_office_02b",
                cool = "ex_dt1_02_office_02c",
                ice = "ex_dt1_02_office_03a",
                conservative = "ex_dt1_02_office_03b",
                polished = "ex_dt1_02_office_03c",
            },
        },
        Chairs = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "office_chairs",
                off = "",
            },
        },
        Booze = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "office_booze",
                off = "",
            },
        },
        BoozeCigs = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "office_booze_cigs",
                off = "",
            },
        },
    },
    defaults = {
        Style   = "warm",
        Chairs  = "on",
        Booze   = "on",
        BoozeCigs = "off",
    },
}
