local sounds = require("__base__.prototypes.entity.sounds")

local voyage_spidertron_mk1_rocket_launcher = {
	type = "gun",
	name = "voyage-spidertron-mk1-rocket-launcher-1",
	localised_name = "Voyage Spidertron Mk1 Rocket Launcher",
	icon = "__base__/graphics/icons/rocket-launcher.png",
	icon_size = 64, icon_mipmaps = 4,
	subgroup = "gun",
	flags = {"hidden"},
	order = "z[spider]-a[rocket-launcher]",
	attack_parameters = {
	    type = "projectile",
	    ammo_category = "rocket",
	    cooldown = 210,
	   	range = 52,
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


data:extend{
	voyage_spidertron_mk1_rocket_launcher,
}