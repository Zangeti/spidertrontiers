local sounds = require("__base__.prototypes.entity.sounds")

function spidertron_mk3_rocket_launcher(number)
	return {
	    type = "gun",
	    name = "spidertron-mk3-rocket-launcher-" .. number,
	    localised_name = "Spidertron Mk3 Rocket Launcher",
	    icon = "__base__/graphics/icons/rocket-launcher.png",
	    icon_size = 64, icon_mipmaps = 4,
	    subgroup = "gun",
	    flags = {"hidden"},
	    order = "z[spider]-a[rocket-launcher]",
	    attack_parameters = {
	      	type = "projectile",
	      	ammo_category = "rocket",
	      	cooldown = 60,
	     	range = 62,
	      	projectile_creation_distance = -0.5,
	      	projectile_center = {0, 0.3},
	      	projectile_orientation_offset = -0.0625,
	      	sound = {
	        	{
	          		filename = "__base__/sound/fight/rocket-launcher.ogg",
	          		volume = 0.7
	        	}
	      	}
	    },
	    stack_size = 1
	}
end

data:extend{
	spidertron_mk3_rocket_launcher(1),
	spidertron_mk3_rocket_launcher(2),
	spidertron_mk3_rocket_launcher(3),
	spidertron_mk3_rocket_launcher(4),
}