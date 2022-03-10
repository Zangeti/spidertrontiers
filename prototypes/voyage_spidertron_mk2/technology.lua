local voyage_spidertron_mk2 = {
    type = "technology",
    name = "voyage_spidertron_mk2",
    icon_size = 128,
    icon = "__spidertrontiers-circulardependency__/graphics/technology/voyage_spidertron_mk2.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "voyage_spidertron_mk2"
        },
    },
    prerequisites = {"voyage_spidertron_mk1", "advanced-electronics", "electric-engine"},
    unit = {
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
            {"chemical-science-pack", 1},
        },
        time = 20,
        count = 350
    },
    order = "d-e-g"
}

data:extend{
    voyage_spidertron_mk2,
}