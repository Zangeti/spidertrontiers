local spidertron_mk_1 = {
    type = "recipe",
    name = "spidertron_mkn1",
    normal = {
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"battery", 20},
            {"electronic-circuit", 150},
            {"iron-gear-wheel", 180},
            {"submachine-gun", 1},
            {"steel-plate", 120},
            {"radar", 2},
            {"iron-stick",16},
            {"copper-cable", 50},
        },
        result = "spidertron_mkn1"
    },
}

data:extend{
    spidertron_mk_1,
}