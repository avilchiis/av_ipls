-- Finance & Felony / Office4

return {
    id = "office4",
    label = "Office4",
    category = "Finance & Felony",
    coords = { x = -1388.0, y = -480.0, z = 72.0 },
    interior_id = {
        warm = 243201,
        classical = 243457,
        vintage = 243713,
        contrast = 243969,
        rich = 244225,
        cool = 244481,
        ice = 244737,
        conservative = 244993,
        polished = 245249,
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
                warm = "ex_sm_15_office_01a",
                classical = "ex_sm_15_office_01b",
                vintage = "ex_sm_15_office_01c",
                contrast = "ex_sm_15_office_02a",
                rich = "ex_sm_15_office_02b",
                cool = "ex_sm_15_office_02c",
                ice = "ex_sm_15_office_03a",
                conservative = "ex_sm_15_office_03b",
                polished = "ex_sm_15_office_03c",
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
