local sounds = require("__base__.prototypes.entity.sounds")

local spidertron_mk0_cannon_1 = {
    type = "gun",
    name = "spidertron-mk0-cannon-1",
    localised_name = "Spidertron Mk0 Cannon",
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon]",
    attack_parameters = {
      	type = "projectile",
      	ammo_category = "cannon-shell",
      	cooldown = 120,
      	movement_slow_down_factor = 0,
      	projectile_creation_distance = 0,
      	projectile_center = {0, 0},
      	range = 30,
      	sound = sounds.tank_gunshot,
    },

    stack_size = 5
}


local spidertron_mk0_rocket_launcher_1 = {
	type = "gun",
	name = "spidertron-mk0-rocket-launcher-1",
	localised_name = "Spidertron Mk0 Rocket Launcher",
	icon = "__base__/graphics/icons/rocket-launcher.png",
	icon_size = 64, icon_mipmaps = 4,
	subgroup = "gun",
	flags = {"hidden"},
	order = "z[spider]-a[rocket-launcher]",
	attack_parameters = {
	    type = "projectile",
	    ammo_category = "rocket",
	    cooldown = 120,
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

local spidertron_mk0_machine_gun_1 = {
    type = "gun",
    name = "spidertron-mk0-machine-gun-1",
    localised_name = "Spidertron Mk0 Machine Gun",
    icon = "__base__/graphics/icons/submachine-gun.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-b[tank-machine-gun]",
    attack_parameters = {
      	type = "projectile",
      	ammo_category = "bullet",
      	cooldown = 6,
      	movement_slow_down_factor = 0.7,
     	shell_particle = {
	        name = "shell-particle",
	        direction_deviation = 0.1,
	        speed = 0.1,
	        speed_deviation = 0.03,
	        center = {0, 0},
	        creation_distance = 0,
	        starting_frame_speed = 0.4,
	        starting_frame_speed_deviation = 0.1
      	},
      	projectile_center = {-0.15625, -0.07812},
      	projectile_creation_distance = 1,
      	range = 25,
      	sound = sounds.heavy_gunshot
    },
    stack_size = 1
}

data:extend{
	spidertron_mk0_cannon_1,
	spidertron_mk0_rocket_launcher_1,
	spidertron_mk0_machine_gun_1,
}