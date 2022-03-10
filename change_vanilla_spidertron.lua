if (settings.startup["stack-spidertron-recipes"].value == true) then
    data.raw["recipe"]["spidertron"] = {
        type = "recipe",
        name = "spidertron",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
              {"spidertron_mk0", 1},
              {"exoskeleton-equipment", 4},
              {"fusion-reactor-equipment", 2},
              {"rocket-launcher", 2},
              {"rocket-control-unit", 16},
              {"low-density-structure", 150},
              {"radar", 2},
              {"effectivity-module-3", 2},
            },
          result = "spidertron"
        }
    }
end

data.raw["technology"]["spidertron"] = {
    type = "technology",
    name = "spidertron",
    icon_size = 256,
    icon = "__base__/graphics/technology/spidertron.png",
    effects = {
      	{
        	type = "unlock-recipe",
        	recipe = "spidertron"
      	},
    },
    prerequisites = {"spidertron_mk0", "military-4", "exoskeleton-equipment", "fusion-reactor-equipment", "rocket-control-unit", "effectivity-module-3" },
    unit = {
      	ingredients = {
	        {"automation-science-pack", 1},
	        {"logistic-science-pack", 1},
	        {"military-science-pack", 1},
	        {"chemical-science-pack", 1},
	        {"production-science-pack", 1},
	        {"utility-science-pack", 1}
      	},
    time = 30,
    count = 2500
    },
    order = "d-e-g"
}

if (settings.startup["change-spidertron-remote-recipe"].value == false) then
    data.raw["technology"]["spidertron"].effects[#data.raw["technology"]["spidertron"].effects + 1] = {
		type = "unlock-recipe",
	    recipe = "spidertron-remote"
    }
end

data.raw["item-with-entity-data"]["spidertron"] = {
    type = "item-with-entity-data",
    name = "spidertron",
    icon = "__base__/graphics/icons/spidertron.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "transport",
    order = "b[personal-transport]-c[spidertron]-b[spider]-l[spidertron-mk1]",
    place_result="spidertron",
    stack_size = 1,
}
if (settings.startup["show-spidertron-legs"].value == false) then
    for index,leg in pairs(data.raw["spider-vehicle"]["spidertron"].spider_engine.legs) do
        data.raw["spider-vehicle"]["spidertron"].spider_engine.legs[index].leg_hit_the_ground_trigger = nil
        data.raw["spider-leg"]["spidertron-leg-"..index].graphics_set = {}
        data.raw["spider-leg"]["spidertron-leg-"..index].walking_sound_volume_modifier = 0
    end
end