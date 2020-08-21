local spidertron_mk0 = {
    type = "recipe",
    name = "spidertron_mk0",
    normal = {
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"spidertron_mkn1", 1},
            {"battery", 40},
            {"rocket-launcher", 2},
            {"advanced-circuit", 15},
            {"electronic-circuit", 120},
            {"radar", 2},
            {"iron-stick", 32},
            {"copper-cable", 80},
            {"sulfur", 50},
        },
        result = "spidertron_mk0"
    },
}

data:extend{
    spidertron_mk0,
}