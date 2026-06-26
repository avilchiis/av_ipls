-- GTA V Base Game / Franklin

return {
    id = "franklin",
    label = "Franklin",
    category = "GTA V Base Game",
    coords = { x = 7.91, y = 549.98, z = 175.47 },
    interior_id = 206849,
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
                unpacking = "franklin_unpacking",
                cardboxes = "showhome_only",
            },
        },
        GlassDoor = {
            _type = "toggle",
            _nullable = false,
            options = {
                opened = "unlocked",
                closed = "locked",
            },
        },
        Details = {
            _type = "select",
            _nullable = false,
            options = {
                flyer = "progress_flyer",
                tux = "progress_tux",
                tshirt = "progress_tshirt",
                bong = "bong_and_wine",
            },
        },
    },
    defaults = {
        Style = "empty",
        GlassDoor = "opened",
    },
}