local scout_spidertron_mk2 = {
    type = "recipe",
    name = "scout_spidertron_mk2",
    normal = {
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"electronic-circuit", 25},
            {"iron-gear-wheel", 40},
            {"submachine-gun", 1},
            {"rocket-launcher", 1},
            {"steel-plate", 25},
            {"iron-stick", 16},
            {"radar", 4},
            {"electric-engine-unit", 3},
            {"scout_spidertron_mk1", 1},
        },
        result = "scout_spidertron_mk2"
    },
}

data:extend{
    scout_spidertron_mk2,
}