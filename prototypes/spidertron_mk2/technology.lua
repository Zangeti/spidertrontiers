local spidertron_mk2 = {
    type = "technology",
    name = "spidertron_mk2",
    icon_size = 128,
    icon = "__spidertrontiers-circulardependency__/graphics/technology/spidertron_mk2.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "spidertron_mk2"
        },
    },
    prerequisites = {"spidertron", "assault_spidertron_mk2", "bulwark_spidertron_mk2", "scout_spidertron_mk2", "voyage_spidertron_mk2"},
    unit = {
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
        },
        time = 30,
        count = 3500
    },
    order = "d-e-g"
}

data:extend{
    spidertron_mk2,
}