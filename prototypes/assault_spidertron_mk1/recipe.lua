local assault_spidertron_mk1 = {
    type = "recipe",
    name = "assault_spidertron_mk1",
    normal = {
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"electronic-circuit", 50},
            {"iron-gear-wheel", 80},
            {"shotgun", 2},
            {"steel-plate", 150},
            {"radar", 1},
            {"iron-stick",32},
            {"copper-cable", 80},
            {"prototype_spidertron", 1},
        },
        result = "assault_spidertron_mk1"
    },
}

data:extend{
    assault_spidertron_mk1,
}