-- Finance & Felony / Office2
-- -75.8466, -826.9893, 243.385
return {
    id = "office2",
    label = "Office2",
    category = "Finance & Felony",
    coords = { x = -75.8466, y = -826.9893, z = 243.385 },
    interior_id = {
        warm = 238593,
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
        load = {},   -- IPLs are managed by the Style (ipl_select) variant
        remove = {},
    },
    variants = {
        -- Each style loads its own IPL + uses its own interior_id
        Style = {
            _type = "ipl_select",
            _nullable = false,
            options = {
                warm = "ex_dt1_11_office_01a",
                classical = "ex_dt1_11_office_01b",
                vintage = "ex_dt1_11_office_01c",
                contrast = "ex_dt1_11_office_02a",
                rich = "ex_dt1_11_office_02b",
                cool = "ex_dt1_11_office_02c",
                ice = "ex_dt1_11_office_03a",
                conservative = "ex_dt1_11_office_03b",
                polished = "ex_dt1_11_office_03c",
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
