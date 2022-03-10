local sounds = require("__base__.prototypes.entity.sounds")

local spidertron_mkn1_rocket_launcher_1 = {
	type = "gun",
	name = "spidertron-mkn1-rocket-launcher-1",
	localised_name = "Spidertron Mk-1 Rocket Launcher",
	icon = "__base__/graphics/icons/rocket-launcher.png",
	icon_size = 64, icon_mipmaps = 4,
	subgroup = "gun",
	flags = {"hidden"},
	order = "z[spider]-a[rocket-launcher]",
	attack_parameters = {
	    type = "projectile",
	    ammo_category = "rocket",
	    cooldown = 150,
	   	range = 36,
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

local spidertron_mkn1_machine_gun_1 = {
    type = "gun",
    name = "spidertron-mkn1-machine-gun-1",
    localised_name = "Spidertron Mk-1 Machine Gun",
    icon = "__base__/graphics/icons/submachine-gun.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-b[tank-machine-gun]",
    attack_parameters = {
      	type = "projectile",
      	ammo_category = "bullet",
      	cooldown = 8,
      	movement_slow_down_factor = 0.7,
     	shell_particle = {
	        name = "shell-particle",
	        direction_deviation = 0.1,
	        speed = 0.1,
	        speed_deviation = 0.03,
	        center = {0, 0},
	        creation_distance = -0.6875,
	        starting_frame_speed = 0.4,
	        starting_frame_speed_deviation = 0.1
      	},
      	projectile_center = {-0.15625, -0.07812},
      	projectile_creation_distance = 1,
      	range = 15,
      	sound = sounds.heavy_gunshot
    },
    stack_size = 1
}

data:extend{
	spidertron_mkn1_rocket_launcher_1,
	spidertron_mkn1_machine_gun_1,
}