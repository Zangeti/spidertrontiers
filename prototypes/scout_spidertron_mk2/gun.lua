local sounds = require("__base__.prototypes.entity.sounds")

local scout_spidertron_mk2_cannon_1 = {
    type = "gun",
    name = "scout-spidertron-mk2-cannon-1",
    localised_name = "Scout Spidertron Mk2 Cannon",
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon]",
    attack_parameters = {
      	type = "projectile",
      	ammo_category = "cannon-shell",
      	cooldown = 180,
      	movement_slow_down_factor = 0,
      	projectile_creation_distance = 0,
      	projectile_center = {0, 0},
      	range = 30,
      	sound = sounds.tank_gunshot,
    },

    stack_size = 5
}

local scout_spidertron_mk2_machine_gun_1 = {
    type = "gun",
    name = "scout-spidertron-mk2-machine-gun-1",
    localised_name = "Scout Spidertron Mk2 Machine Gun",
    icon = "__base__/graphics/icons/submachine-gun.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-b[tank-machine-gun]",
    attack_parameters = {
      	type = "projectile",
      	ammo_category = "bullet",
      	cooldown = 36,
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
	scout_spidertron_mk2_cannon_1,
	scout_spidertron_mk2_machine_gun_1,
}