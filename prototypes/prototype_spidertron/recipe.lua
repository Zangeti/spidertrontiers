local prototype_spidertron = {
    type = "recipe",
    name = "prototype_spidertron",
    normal = {
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"electronic-circuit", 30},
            {"iron-gear-wheel", 120},
            {"steel-plate", 120},
            {"iron-stick", 16},
            {"copper-cable", 50},
        },
        result = "prototype_spidertron"
    },
}

data:extend{
    prototype_spidertron,
}