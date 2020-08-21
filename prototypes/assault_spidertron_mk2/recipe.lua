local assault_spidertron_mk2 = {
    type = "recipe",
    name = "assault_spidertron_mk2",
    normal = {
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"electronic-circuit", 150},
            {"iron-gear-wheel", 16},
            {"submachine-gun", 8},
            {"steel-plate", 150},
            {"engine-unit", 8},
            {"iron-stick", 32},
            {"copper-cable", 40},
            {"assault_spidertron_mk1", 1},
        },
        result = "assault_spidertron_mk2"
    },
}

data:extend{
    assault_spidertron_mk2,
}