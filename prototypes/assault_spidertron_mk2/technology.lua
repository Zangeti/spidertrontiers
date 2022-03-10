local assault_spidertron_mk2 = {
    type = "technology",
    name = "assault_spidertron_mk2",
    icon_size = 128,
    icon = "__spidertrontiers-circulardependency__/graphics/technology/assault_spidertron_mk2.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "assault_spidertron_mk2"
        },
    },
    prerequisites = {"assault_spidertron_mk1", "defender", "engine"},
    unit = {
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
        },
        time = 30,
        count = 450
    },
    order = "d-e-g"
}

data:extend{
    assault_spidertron_mk2,
}