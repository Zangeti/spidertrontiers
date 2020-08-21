local voyage_spidertron_mk1 = {
    type = "recipe",
    name = "voyage_spidertron_mk1",
    normal = {
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"electronic-circuit", 30},
            {"iron-gear-wheel", 120},
            {"steel-plate", 120},
            {"iron-stick", 32},
            {"engine-unit", 8},
            {"copper-cable", 50},
            {"prototype_spidertron", 1},
        },
        result = "voyage_spidertron_mk1"
    },
}

data:extend{
    voyage_spidertron_mk1,
}