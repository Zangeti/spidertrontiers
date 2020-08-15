local sounds = require("__base__.prototypes.entity.demo-sounds")
local spidertron_mk3_animations = require("__spidertrontiers__.spidertron-animations_mk3")
local spidertron_mk2_animations = require("__spidertrontiers__.spidertron-animations_mk2")

local spider_tron_mk3 = {
    type = "spider-vehicle",
    name = "spidertron_mk3",
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1, -1}, {1, 1}},
    icon = "__spidertrontiers__/graphics/icons/spidertron_mk3.png",
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    open_sound = { filename = "__base__/sound/spidertron/spidertron-door-open.ogg", volume= 0.35 },
    close_sound = { filename = "__base__/sound/spidertron/spidertron-door-close.ogg", volume = 0.4 },
    sound_minimum_speed = 0.1,
    sound_scaling_ratio = 0.6,
    working_sound = {
      	sound = {
	        filename = "__base__/sound/spidertron/spidertron-vox.ogg",
	        volume = 0.35
      	},
      	activate_sound = {
	        filename = "__base__/sound/spidertron/spidertron-activate.ogg",
	        volume = 0.5
      	},
      	deactivate_sound = {
	        filename = "__base__/sound/spidertron/spidertron-deactivate.ogg",
	        volume = 0.5
      	},
      	match_speed_to_activity = true,
    },
    icon_size = 64, icon_mipmaps = 4,
    weight = 1,
    braking_force = 1,
    friction_force = 1,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    collision_mask = {},
    minable = {mining_time = 1, result = "spidertron_mk3"},
    max_health = 8000, --modified
    resistances = {
      	{
        	type = "fire",
        	decrease = 15,
        	percent = 60
      	},
      	{
	        type = "physical",
	        decrease = 15,
	        percent = 60
      	},
      	{
	        type = "impact",
	        decrease = 50,
	        percent = 80
      	},
      	{
	        type = "explosion",
	        decrease = 20,
	        percent = 95, --modified
      	},
      	{
	        type = "acid",
	        decrease = 0,
	        percent = 70
      	},
      	{
	        type = "laser",
	        decrease = 0,
	        percent = 70
      	},
      	{
	        type = "electric",
	        decrease = 0,
	        percent = 70
      	}
    },
    minimap_representation = {
      	filename = "__spidertrontiers__/graphics/entity/spidertron_mk3/spidertron-map.png",
      	flags = {"icon"},
      	size = {128, 128},
      	scale = 0.5
    },
    corpse = "spidertron-mk3-remnants",
    dying_explosion = "spidertron-explosion",
    energy_per_hit_point = 1,
    guns = { "spidertron-rocket-launcher-1", "spidertron-rocket-launcher-2", "spidertron-rocket-launcher-3", "spidertron-rocket-launcher-4" },
    inventory_size = 120,
    equipment_grid = "spidertron-mk3-equipment-grid",
    height = 1.5,
    torso_rotation_speed = 0.005,
    chunk_exploration_radius = 5, --modified
    selection_priority = 51,
    graphics_set = spidertron_mk3_animations.torso,
    energy_source = {
      	type = "void",
    },
    movement_energy_consumption = "250kW",
    automatic_weapon_cycling = true,
    chain_shooting_cooldown_modifier = 0.2, --modified
    spider_engine = {
      	legs = {
	        { -- 1
	          	leg = "spidertron-mk3-leg-1",
	          	mount_position = util.by_pixel(15, -22),--{0.5, -0.75},
	          	ground_position = {2.25, -2.5},
	          	blocking_legs = {2},
	          	leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
	        },
	        { -- 2
	          	leg = "spidertron-mk3-leg-2",
	          	mount_position = util.by_pixel(23, -10),--{0.75, -0.25},
	          	ground_position = {3, -1},
	          	blocking_legs = {1, 3},
	          	leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
	        },
	        { -- 3
	          	leg = "spidertron-mk3-leg-3",
	          	mount_position = util.by_pixel(25, 4),--{0.75, 0.25},
	          	ground_position = {3, 1},
	          	blocking_legs = {2, 4},
	          	leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
	        },
	        { -- 4
	          	leg = "spidertron-mk3-leg-4",
	          	mount_position = util.by_pixel(15, 17),--{0.5, 0.75},
	          	ground_position = {2.25, 2.5},
	          	blocking_legs = {3},
	          	leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
	        },
	        { -- 5
	          	leg = "spidertron-mk3-leg-5",
	          	mount_position = util.by_pixel(-15, -22),--{-0.5, -0.75},
	          	ground_position = {-2.25, -2.5},
	          	blocking_legs = {6, 1},
	          	leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
	        },
	        { -- 6
	          	leg = "spidertron-mk3-leg-6",
	          	mount_position = util.by_pixel(-23, -10),--{-0.75, -0.25},
	          	ground_position = {-3, -1},
	          	blocking_legs = {5, 7},
	          	leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
	        },
	        { -- 7
	          	leg = "spidertron-mk3-leg-7",
	          	mount_position = util.by_pixel(-25, 4),--{-0.75, 0.25},
	          	ground_position = {-3, 1},
	          	blocking_legs = {6, 8},
	          	leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
	        },
	        { -- 8
	          	leg = "spidertron-mk3-leg-8",
	          	mount_position = util.by_pixel(-15, 17),--{-0.5, 0.75},
	          	ground_position = {-2.25, 2.5},
	          	blocking_legs = {7},
	          	leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
	        }
      	},
      	military_target = "spidertron-military-target",
    }
}

local spider_tron_mk2 = {
    type = "spider-vehicle",
    name = "spidertron_mk2",
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1, -1}, {1, 1}},
    icon = "__spidertrontiers__/graphics/icons/spidertron_mk2.png",
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    open_sound = { filename = "__base__/sound/spidertron/spidertron-door-open.ogg", volume= 0.35 },
    close_sound = { filename = "__base__/sound/spidertron/spidertron-door-close.ogg", volume = 0.4 },
    sound_minimum_speed = 0.1,
    sound_scaling_ratio = 0.6,
    working_sound = {
      	sound = {
	        filename = "__base__/sound/spidertron/spidertron-vox.ogg",
	        volume = 0.35
      	},
      	activate_sound = {
	        filename = "__base__/sound/spidertron/spidertron-activate.ogg",
	        volume = 0.5
      	},
      	deactivate_sound = {
	        filename = "__base__/sound/spidertron/spidertron-deactivate.ogg",
	        volume = 0.5
      	},
      	match_speed_to_activity = true,
    },
    icon_size = 64, icon_mipmaps = 4,
    weight = 1,
    braking_force = 1,
    friction_force = 1,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    collision_mask = {},
    minable = {mining_time = 1, result = "spidertron_mk2"},
    max_health = 4500, --modified
    resistances = {
      	{
        	type = "fire",
        	decrease = 15,
        	percent = 60
      	},
      	{
	        type = "physical",
	        decrease = 15,
	        percent = 60
      	},
      	{
	        type = "impact",
	        decrease = 50,
	        percent = 80
      	},
      	{
	        type = "explosion",
	        decrease = 20,
	        percent = 85, --modified
      	},
      	{
	        type = "acid",
	        decrease = 0,
	        percent = 70
      	},
      	{
	        type = "laser",
	        decrease = 0,
	        percent = 70
      	},
      	{
	        type = "electric",
	        decrease = 0,
	        percent = 70
      	}
    },
    minimap_representation = {
      	filename = "__spidertrontiers__/graphics/entity/spidertron_mk2/spidertron-map.png",
      	flags = {"icon"},
      	size = {128, 128},
      	scale = 0.5
    },
    corpse = "spidertron-mk2-remnants",
    dying_explosion = "spidertron-explosion",
    energy_per_hit_point = 1,
    guns = { "spidertron-rocket-launcher-1", "spidertron-rocket-launcher-2", "spidertron-rocket-launcher-3", "spidertron-rocket-launcher-4" },
    inventory_size = 100,
    equipment_grid = "spidertron-mk2-equipment-grid",
    height = 1.5,
    torso_rotation_speed = 0.005,
    chunk_exploration_radius = 4, --modified
    selection_priority = 51,
    graphics_set = spidertron_mk2_animations.torso,
    energy_source = {
      	type = "void",
    },
    movement_energy_consumption = "250kW",
    automatic_weapon_cycling = true,
    chain_shooting_cooldown_modifier = 0.35, --modified
    spider_engine = {
      	legs = {
	        { -- 1
	          	leg = "spidertron-mk2-leg-1",
	          	mount_position = util.by_pixel(15, -22),--{0.5, -0.75},
	          	ground_position = {2.25, -2.5},
	          	blocking_legs = {2},
	          	leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
	        },
	        { -- 2
	          	leg = "spidertron-mk2-leg-2",
	          	mount_position = util.by_pixel(23, -10),--{0.75, -0.25},
	          	ground_position = {3, -1},
	          	blocking_legs = {1, 3},
	          	leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
	        },
	        { -- 3
	          	leg = "spidertron-mk2-leg-3",
	          	mount_position = util.by_pixel(25, 4),--{0.75, 0.25},
	          	ground_position = {3, 1},
	          	blocking_legs = {2, 4},
	          	leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
	        },
	        { -- 4
	          	leg = "spidertron-mk2-leg-4",
	          	mount_position = util.by_pixel(15, 17),--{0.5, 0.75},
	          	ground_position = {2.25, 2.5},
	          	blocking_legs = {3},
	          	leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
	        },
	        { -- 5
	          	leg = "spidertron-mk2-leg-5",
	          	mount_position = util.by_pixel(-15, -22),--{-0.5, -0.75},
	          	ground_position = {-2.25, -2.5},
	          	blocking_legs = {6, 1},
	          	leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
	        },
	        { -- 6
	          	leg = "spidertron-mk2-leg-6",
	          	mount_position = util.by_pixel(-23, -10),--{-0.75, -0.25},
	          	ground_position = {-3, -1},
	          	blocking_legs = {5, 7},
	          	leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
	        },
	        { -- 7
	          	leg = "spidertron-mk2-leg-7",
	          	mount_position = util.by_pixel(-25, 4),--{-0.75, 0.25},
	          	ground_position = {-3, 1},
	          	blocking_legs = {6, 8},
	          	leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
	        },
	        { -- 8
	          	leg = "spidertron-mk2-leg-8",
	          	mount_position = util.by_pixel(-15, 17),--{-0.5, 0.75},
	          	ground_position = {-2.25, 2.5},
	          	blocking_legs = {7},
	          	leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
	        }
      	},
      	military_target = "spidertron-military-target",
    }
}


local spider_tron_mk3_remnants = {
    type = "corpse",
    name = "spidertron-mk3-remnants",
    icon = "__spidertrontiers__/graphics/icons/spidertron_mk3.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "transport-remnants",
    order = "a-l-a",
    selection_box = {{-3, -3}, {3, 3}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet (1,
    {
      	layers = {
        	{
	          	filename = "__spidertrontiers__/graphics/entity/spidertron_mk3/remnants/spidertron-remnants.png",
	          	line_length = 1,
	          	width = 224,
	          	height = 224,
	          	frame_count = 1,
	          	variation_count = 1,
	          	axially_symmetrical = false,
	          	direction_count = 1,
	         	shift = util.by_pixel(0, 0),
	          	r_version = {
		            filename = "__spidertrontiers__/graphics/entity/spidertron_mk3/remnants/hr-spidertron-remnants.png",
		            line_length = 1,
		            width = 448,
		            height = 448,
		            frame_count = 1,
		            variation_count = 1,
		            axially_symmetrical = false,
		            direction_count = 1,
		            shift = util.by_pixel(0, 0),
		            scale = 0.5,
          		}
        	},
        	{
	          	priority = "low",
	          	filename = "__spidertrontiers__/graphics/entity/spidertron_mk3/remnants/mask/spidertron-remnants-mask.png",
	          	width = 184,
	          	height = 176,
	          	frame_count = 1,
	         	-- tint = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 },
	          	apply_runtime_tint = true,
	          	direction_count = 1,
	          	shift = util.by_pixel(9, 1),
	          	hr_version = {
		            priority = "low",
		            filename = "__spidertrontiers__/graphics/entity/spidertron_mk3/remnants/mask/hr-spidertron-remnants-mask.png",
		            width = 366,
		            height = 350,
		            frame_count = 1,
		            --tint = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 },
		            apply_runtime_tint = true,
		            direction_count = 1,
		            shift = util.by_pixel(9, 1),
		            scale = 0.5,
          		}
        	}
      	}
    })
}

local spider_tron_mk2_remnants = {
    type = "corpse",
    name = "spidertron-mk2-remnants",
    icon = "__spidertrontiers__/graphics/icons/spidertron_mk2.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "transport-remnants",
    order = "a-l-a",
    selection_box = {{-3, -3}, {3, 3}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet (1,
    {
      	layers = {
        	{
	          	filename = "__spidertrontiers__/graphics/entity/spidertron_mk2/remnants/spidertron-remnants.png",
	          	line_length = 1,
	          	width = 224,
	          	height = 224,
	          	frame_count = 1,
	          	variation_count = 1,
	          	axially_symmetrical = false,
	          	direction_count = 1,
	         	shift = util.by_pixel(0, 0),
	          	r_version = {
		            filename = "__spidertrontiers__/graphics/entity/spidertron_mk2/remnants/hr-spidertron-remnants.png",
		            line_length = 1,
		            width = 448,
		            height = 448,
		            frame_count = 1,
		            variation_count = 1,
		            axially_symmetrical = false,
		            direction_count = 1,
		            shift = util.by_pixel(0, 0),
		            scale = 0.5,
          		}
        	},
        	{
	          	priority = "low",
	          	filename = "__spidertrontiers__/graphics/entity/spidertron_mk2/remnants/mask/spidertron-remnants-mask.png",
	          	width = 184,
	          	height = 176,
	          	frame_count = 1,
	         	-- tint = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 },
	          	apply_runtime_tint = true,
	          	direction_count = 1,
	          	shift = util.by_pixel(9, 1),
	          	hr_version = {
		            priority = "low",
		            filename = "__spidertrontiers__/graphics/entity/spidertron_mk2/remnants/mask/hr-spidertron-remnants-mask.png",
		            width = 366,
		            height = 350,
		            frame_count = 1,
		            --tint = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 },
		            apply_runtime_tint = true,
		            direction_count = 1,
		            shift = util.by_pixel(9, 1),
		            scale = 0.5,
          		}
        	}
      	}
    })
}


function make_spidertron_mk3_leg(number, base_sprite, ending_sprite)
  	return {
	    type = "spider-leg",
	    name = "spidertron-mk3-leg-" .. number,
	    localised_name = {"entity-name.spidertron-leg"},
	    collision_box = {{-0.01, -0.01}, {0.01, 0.01}},
	    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	    icon = "__spidertrontiers__/graphics/icons/spidertron_mk3.png",
	    icon_size = 64, icon_mipmaps = 4,
	    walking_sound_volume_modifier = 1, --modified
	    working_sound = 
	    {
	      match_progress_to_activity = true,
	      sound = sounds.spidertron_leg,
	      audible_distance_modifier = 1, --modified
	    },
	    part_length = 3.5,
	    initial_movement_speed = 0.06,
	    movement_acceleration = 0.03,
	    max_health = 100,
	    movement_based_position_selection_distance = 8, --modified
	    selectable_in_game = false,
	    graphics_set = spidertron_mk3_animations.legs[number],
	}
end

function make_spidertron_mk2_leg(number, base_sprite, ending_sprite)
  	return {
	    type = "spider-leg",
	    name = "spidertron-mk2-leg-" .. number,
	    localised_name = {"entity-name.spidertron-leg"},
	    collision_box = {{-0.01, -0.01}, {0.01, 0.01}},
	    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	    icon = "__spidertrontiers__/graphics/icons/spidertron_mk3.png",
	    icon_size = 64, icon_mipmaps = 4,
	    walking_sound_volume_modifier = 0.8, --modified
	    working_sound = 
	    {
	      match_progress_to_activity = true,
	      sound = sounds.spidertron_leg,
	      audible_distance_modifier = 0.8, --modified
	    },
	    part_length = 3.5,
	    initial_movement_speed = 0.06,
	    movement_acceleration = 0.03,
	    max_health = 100,
	    movement_based_position_selection_distance = 6, --modified
	    selectable_in_game = false,
	    graphics_set = spidertron_mk2_animations.legs[number],
	}
end


--[[
make_spidertron_leg(1),
make_spidertron_leg(2),
make_spidertron_leg(3),
make_spidertron_leg(4),
make_spidertron_leg(5),
make_spidertron_leg(6),
make_spidertron_leg(7),
make_spidertron_leg(8),
]]--

data:extend{
	spider_tron_mk3,
	spider_tron_mk3_remnants,
	make_spidertron_mk3_leg(1),
	make_spidertron_mk3_leg(2),
	make_spidertron_mk3_leg(3),
	make_spidertron_mk3_leg(4),
	make_spidertron_mk3_leg(5),
	make_spidertron_mk3_leg(6),
	make_spidertron_mk3_leg(7),
	make_spidertron_mk3_leg(8),

	spider_tron_mk2,
	spider_tron_mk2_remnants,
	make_spidertron_mk2_leg(1),
	make_spidertron_mk2_leg(2),
	make_spidertron_mk2_leg(3),
	make_spidertron_mk2_leg(4),
	make_spidertron_mk2_leg(5),
	make_spidertron_mk2_leg(6),
	make_spidertron_mk2_leg(7),
	make_spidertron_mk2_leg(8),
}

