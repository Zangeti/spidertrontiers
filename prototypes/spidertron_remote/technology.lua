if (settings.startup["change-spidertron-remote-recipe"].value == true) then
	local spidertron_remote = {
		type = "technology",
		name = "spidertron_remote",
		icon_size = 128,
		icon = "__spidertrontiers-circulardependency__/graphics/technology/spidertron_remote.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "spidertron-remote"
			},
		},
		prerequisites = {"advanced-electronics", "military-science-pack", "prototype_spidertron"},
		unit = {
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 2},
			},
			time = 20,
			count = 300
		},
		order = "d-e-g"
	}

	data:extend{
		spidertron_remote,
	}
end