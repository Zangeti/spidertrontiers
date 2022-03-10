local sounds = require("__base__.prototypes.entity.sounds")

local bulwark_spidertron_mk1_machine_gun_1 = {
    type = "gun",
    name = "bulwark-spidertron-mk1-machine-gun-1",
    localised_name = "Bulwark Spidertron Mk1 Machine Gun",
    icon = "__base__/graphics/icons/submachine-gun.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-b[tank-machine-gun]",
    attack_parameters = {
      	type = "projectile",
      	ammo_category = "bullet",
      	cooldown = 20,
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
      	projectile_creation_distance = 0,
      	range = 25,
      	sound = sounds.heavy_gunshot
    },
    stack_size = 1
}

data:extend{
	bulwark_spidertron_mk1_machine_gun_1,
}