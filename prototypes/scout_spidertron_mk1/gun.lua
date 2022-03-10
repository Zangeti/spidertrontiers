local sounds = require("__base__.prototypes.entity.sounds")

local scout_spidertron_mk1_cannon_1 = {
    type = "gun",
    name = "scout-spidertron-mk1-cannon-1",
    localised_name = "Scout Spidertron Mk1 Cannon",
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon]",
    attack_parameters = {
      	type = "projectile",
      	ammo_category = "cannon-shell",
      	cooldown = 225,
      	movement_slow_down_factor = 0,
      	projectile_creation_distance = 0,
      	projectile_center = {0, 0},
      	range = 30,
      	sound = sounds.tank_gunshot,
    },

    stack_size = 5
}


data:extend{
	scout_spidertron_mk1_cannon_1
}