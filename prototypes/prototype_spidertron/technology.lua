local prototype_spidertron = {
    type = "technology",
    name = "prototype_spidertron",
    icon_size = 128,
    icon = "__spidertrontiers-circulardependency__/graphics/technology/prototype_spidertron.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "prototype_spidertron"
        },
    },
    prerequisites = {"electronics", "steel-processing", "military", "logistic-science-pack"},
    unit = {
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 30,
        count = 250
    },
    order = "d-e-g"
}

data:extend{
    prototype_spidertron,
}