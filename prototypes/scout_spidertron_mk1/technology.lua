local scout_spidertron_mk1 = {
    type = "technology",
    name = "scout_spidertron_mk1",
    icon_size = 128,
    icon = "__spidertrontiers-circulardependency__/graphics/technology/scout_spidertron_mk1.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "scout_spidertron_mk1"
        },
    },
    prerequisites = {"prototype_spidertron", "engine"},
    unit = {
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 30,
        count = 250
    },
    order = "d-e-g"
}

data:extend{
    scout_spidertron_mk1,
}