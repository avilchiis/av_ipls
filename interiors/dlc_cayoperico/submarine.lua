-- Cayo Perico / Submarine
-- Location: Submarine  (1560.0, 400.0, -50.0)

return {
    id = "submarine",
    label = "Submarine",
    category = "Cayo Perico",
    min_build = 2189,
    coords = { x = 1560.0, y = 400.0, z = -50.0 },
    interior_id = 281345,
    ipls = {
        load = {},
        remove = {},
    },
    variants = {
        Workshop = {
            _type = "select",
            _nullable = false,
            options = {
                brig     = "entity_set_brig",
                workshop = "entity_set_weapons",
            },
        },
        Lights = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "entity_set_hatch_lights_on",
                off = "entity_set_hatch_lights_off",
            },
        },
        Chairs = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "entity_set_guide",
                off = "",
            },
        },
        -- ── Details (cada uno es un toggle independiente) ─────────────────────
        Bomb = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "entity_set_demolition",
                off = "",
            },
        },
        Torch = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "entity_set_acetylene",
                off = "",
            },
        },
        Cutter = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "entity_set_plasma",
                off = "",
            },
        },
        Fingerprint = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "entity_set_fingerprint",
                off = "",
            },
        },
        Suppressors = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "entity_set_suppressors",
                off = "",
            },
        },
        Jammer = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "entity_set_jammer",
                off = "",
            },
        },
    },
    defaults = {
        Workshop    = "brig",
        Lights      = "off",
        Chairs      = "on",
        -- Details no activos por defecto (LoadDefault de bob74 no los activa)
        Bomb        = "off",
        Torch       = "off",
        Cutter      = "off",
        Fingerprint = "off",
        Suppressors = "off",
        Jammer      = "off",
    },
}
