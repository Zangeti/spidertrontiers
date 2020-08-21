local scout_spidertron_mk1 = {
    type = "recipe",
    name = "scout_spidertron_mk1",
    normal = {
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"electronic-circuit", 50},
            {"iron-gear-wheel", 80},
            {"steel-plate", 80},
            {"engine-unit", 3},
            {"radar", 5},
            {"iron-stick", 16},
            {"copper-cable", 40},
            {"prototype_spidertron", 1},
        },
        result = "scout_spidertron_mk1",
    },
}

data:extend{
    scout_spidertron_mk1,
}