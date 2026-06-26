-- The Last Dose / Mansion Basement3
-- Location: The Tongva Estate  (-2601.712, 1874.826, 166.0)

return {
    id = "mansion_basement3",
    label = "Mansion Basement3",
    category = "The Last Dose",
    min_build = 3717,
    coords = { x = -2601.712, y = 1874.826, z = 166.0 },
    interior_id = 303873,
    ipls = {
        load = {
        },
        remove = {
        },
    },
    variants = {
        Vault = {
            _type = "select",
            _nullable = false,
            options = {
                open = "set_vault_door_open",
                closed = "set_vault_door_closed",
            },
        },
        Assistant = {
            _type = "select",
            _nullable = false,
            options = {
                og = "set_base_ai_tablets_01",
                haviland = "set_base_ai_tablets_02",
                angel = "set_base_ai_tablets_03",
            },
        },
        Decorations = {
            _type = "select",
            _nullable = false,
            options = {
                xmas = "set_base_xmas",
                halloween = "set_base_halloween",
                lunar = "set_base_new_year",
            },
        },
    
        Details = {
            _type = "stages",
            _nullable = false,
            options = {
                elevator = "set_elev_std",
                money = { "set_base_vault_00", "set_base_vault_01", "set_base_vault_02", "set_base_vault_03", "set_base_vault_04" },
            },
        },
},
    defaults = {
        Vault = "open",
        Assistant = "angel",
    
        Details = "elevator",
},
}