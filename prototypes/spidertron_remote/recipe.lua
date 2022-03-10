if (settings.startup["change-spidertron-remote-recipe"].value == true) then
	data.raw["recipe"]["spidertron-remote"].ingredients = {
		{"radar", 1},
		{"copper-cable", 5},
		{"advanced-circuit", 25}
	}
end