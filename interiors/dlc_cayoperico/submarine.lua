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
        load = {
        },
        remove = {
        },
    },
    variants = {
        Workshop = {
            _type = "select",
            _nullable = false,
            options = {
                brig = "entity_set_brig",
                workshop = "entity_set_weapons",
            },
        },
        Lights = {
            _type = "toggle",
            _nullable = false,
            options = {
                on = "entity_set_hatch_lights_on",
                off = "entity_set_hatch_lights_off",
            },
        },
        Details = {
            _type = "select",
            _nullable = false,
            options = {
                bomb = "entity_set_demolition",
                torch = "entity_set_acetylene",
                cutter = "entity_set_plasma",
                fingerprint = "entity_set_fingerprint",
                suppressors = "entity_set_suppressors",
                jammer = "entity_set_jammer",
            },
        },
    
        Chairs = {
            _type = "select",
            _nullable = false,
            options = {
                chairs = "entity_set_guide",
            },
        },
},
    defaults = {
        Workshop = "brig",
        Lights = "off",
    
        Chairs = "chairs",
},
}