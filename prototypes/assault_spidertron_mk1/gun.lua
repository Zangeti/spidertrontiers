local sounds = require("__base__.prototypes.entity.sounds")

function assault_spidertron_mk1_shotgun(number)
	return {
	    type = "gun",
	    name = "assault-spidertron-mk1-shotgun-" .. number,
	    localised_name = "Assault Spidertron Mk1 Shotgun",
	    icon = "__base__/graphics/icons/combat-shotgun.png",
	    icon_size = 64, icon_mipmaps = 4,
	    subgroup = "gun",
	    order = "b[shotgun]-a[combat]",
	    attack_parameters =
	    {
	      type = "projectile",
	      ammo_category = "shotgun-shell",
	      cooldown = 30,
	      movement_slow_down_factor = 0.5,
	      damage_modifier = 1.2,
	      projectile_creation_distance = 0,
	      range = 15,
	      sound = sounds.shotgun
	    },
	    stack_size = 5,
	}
end

data:extend{
	assault_spidertron_mk1_shotgun(1),
	assault_spidertron_mk1_shotgun(2),
}