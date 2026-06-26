-- GTA V Base Game / Floyd

return {
    id = "floyd",
    label = "Floyd",
    category = "GTA V Base Game",
    coords = { x = -1150.01, y = -1520.95, z = 10.56 },
    interior_id = 171777,
    ipls = {
        load = {
        },
        remove = {
        },
    },
    variants = {
        MrJam = {
            _type = "select",
            _nullable = false,
            options = {
                normal = "swap_mrJam_A",
                jammed = "swap_mrJam_B",
                jammedOnTable = "swap_mrJam_C",
            },
        },
    },
    defaults = {
        MrJam = "normal",
    },
}