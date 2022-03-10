local voyage_spidertron_mk1 = {
    type = "technology",
    name = "voyage_spidertron_mk1",
    icon_size = 128,
    icon = "__spidertrontiers-circulardependency__/graphics/technology/voyage_spidertron_mk1.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "voyage_spidertron_mk1"
        },
    },
    prerequisites = {"prototype_spidertron", "engine"},
    unit = {
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
        },
        time = 30,
        count = 200,
    },
    order = "d-e-g"
}

data:extend{
    voyage_spidertron_mk1,
}