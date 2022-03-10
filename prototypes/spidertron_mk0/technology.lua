local spidertron_mk0 = {
    type = "technology",
    name = "spidertron_mk0",
    icon_size = 128,
    icon = "__spidertrontiers-circulardependency__/graphics/technology/spidertron_mk0.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "spidertron_mk0"
        },
    },
    prerequisites = {"spidertron_mkn1", "advanced-electronics", "rocketry" },
    unit = {
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 2},
            {"chemical-science-pack", 1},
        },
        time = 30,
        count = 1500
    },
    order = "d-e-g"
}

data:extend{
    spidertron_mk0,
}