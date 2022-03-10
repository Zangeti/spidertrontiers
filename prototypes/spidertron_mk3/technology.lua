local spidertron_mk3 = {
    type = "technology",
    name = "spidertron_mk3",
    icon_size = 128,
    icon = "__spidertrontiers-circulardependency__/graphics/technology/spidertron_mk3.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "spidertron_mk3"
        },
    },
    prerequisites = {"spidertron_mk2"},
    unit = {
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1}
        },
        time = 30,
        count = 4500
    },
    order = "d-e-g"
}

data:extend{
    spidertron_mk3,
}