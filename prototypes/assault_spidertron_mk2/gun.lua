local sounds = require("__base__.prototypes.entity.sounds")

function assault_spidertron_mk2_machine_gun(number)
	return {
	    type = "gun",
	    name = "assault-spidertron-mk2-machine-gun-" .. number,
	    localised_name = "Assault Spidertron Mk2 Machine Gun",
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
end

data:extend{
	assault_spidertron_mk2_machine_gun(1),
	assault_spidertron_mk2_machine_gun(2),
	assault_spidertron_mk2_machine_gun(3),
	assault_spidertron_mk2_machine_gun(4),
}