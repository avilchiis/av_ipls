return {
    id = "franklin",
    label = "Franklin",
    category = "GTA V Base Game",
    coords = { x = 7.91, y = 549.98, z = 175.47 },
    interior_id = 206849,
    ipls = { load = {}, remove = {} },
    variants = {
        Style = {
            _type = "select",
            _nullable = false,
            options = { unpacking = "franklin_unpacking", cardboxes = "showhome_only" },
        },
        GlassDoor = {
            _type = "toggle",
            _nullable = false,
            options = { on = "unlocked", off = "locked" },
        },
        Flyer = { _type = "toggle", options = { on = "progress_flyer", off = "" } },
        Tux = { _type = "toggle", options = { on = "progress_tux", off = "" } },
        Tshirt = { _type = "toggle", options = { on = "progress_tshirt", off = "" } },
        Bong = { _type = "toggle", options = { on = "bong_and_wine", off = "" } },
    },
    defaults = {
        GlassDoor = "on",
    },
}
