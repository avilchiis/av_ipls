-- The Contract / Garage
-- Location: Garage  (-1071.83, -77.96, -95.0)

return {
    id = "security_garage",
    label = "Garage",
    category = "The Contract",
    min_build = 2545,
    coords = { x = -1071.83, y = -77.96, z = -95.0 },
    interior_id = 286721,
    ipls = {
        load = {
            "sf_int_placement_sec_interior_2_dlc_garage_sec_milo_",
        },
        remove = {
        },
    },
    variants = {
    WorkshopWall = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_Workshop_Wall", off = "" },
    },
    Wallpaper = {
        _type = "select_nullable",
        _nullable = true,
        options = {
            wp01 = "Entity_Set_Wallpaper_01",
            wp02 = "Entity_Set_Wallpaper_02",
            wp03 = "Entity_Set_Wallpaper_03",
            wp04 = "Entity_Set_Wallpaper_04",
            wp05 = "Entity_Set_Wallpaper_05",
            wp06 = "Entity_Set_Wallpaper_06",
            wp07 = "Entity_Set_Wallpaper_07",
            wp08 = "Entity_Set_Wallpaper_08",
            wp09 = "Entity_Set_Wallpaper_09",
        },
    },
    Art = {
        _type = "select_nullable",
        _nullable = true,
        options = {
            art1 = "Entity_Set_Art_1",
            art2 = "Entity_Set_Art_2",
            art3 = "Entity_Set_Art_3",
        },
    },
    ArtNoMod = {
        _type = "select_nullable",
        _nullable = true,
        options = {
            art1 = "Entity_Set_Art_1_NoMod",
            art2 = "Entity_Set_Art_2_NoMod",
            art3 = "Entity_Set_Art_3_NoMod",
        },
    },
    Tints = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_tints", off = "" },
    },
    WorkshopLights = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_Workshop_Lights", off = "" },
    },
},
    defaults = {
    Wallpaper = "wp07",
    Tints = "on",
    WorkshopLights = "on",
},
}