local sounds = require("__base__.prototypes.entity.sounds")
local scout_spidertron_mk1_animations = require("__spidertrontiers-circulardependency__.spidertron_animations.scout_spidertron_mk1-animations")
local ground_triggers = require("__spidertrontiers-circulardependency__.prototypes.ground_triggers")

local scout_spidertron_mk1 = {
    type = "spider-vehicle",
    name = "scout_spidertron_mk1",
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1, -1}, {1, 1}},
    icon = "__spidertrontiers-circulardependency__/graphics/icons/scout_spidertron_mk1.png",
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    open_sound = { filename = "__base__/sound/spidertron/spidertron-door-open.ogg", volume= 0.35 },
    close_sound = { filename = "__base__/sound/spidertron/spidertron-door-close.ogg", volume = 0.4 },
    sound_minimum_speed = 0.1,
    sound_scaling_ratio = 0.6,
    trash_inventory_size = 6,
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
    minable = {mining_time = 1, result = "scout_spidertron_mk1"},
    max_health = 200, --modified
    resistances = {
      	{
        	type = "fire",
        	decrease = 15,
        	percent = 60
      	},
      	{
	        type = "physical",
	        decrease = 0,
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
      	filename = "__spidertrontiers-circulardependency__/graphics/entity/scout_spidertron_mk1/spidertron-map.png",
      	flags = {"icon"},
      	size = {128, 128},
      	scale = 0.5
    },
    corpse = "scout-spidertron-mk1-remnants",
    dying_explosion = "spidertron-explosion",
    energy_per_hit_point = 1,
    guns = { "scout-spidertron-mk1-cannon-1" },
    inventory_size = 20,
    equipment_grid = "scout-spidertron-mk1-equipment-grid",
    height = 2.5,
    torso_rotation_speed = 0.005,
    chunk_exploration_radius = 4, --modified
    selection_priority = 51,
    graphics_set = scout_spidertron_mk1_animations.torso,
    energy_source = {
      	type = "void",
    },
    movement_energy_consumption = "250kW",
    automatic_weapon_cycling = false,
    chain_shooting_cooldown_modifier = 3, --modified
    spider_engine = {
      	legs = {
			{ -- 1
	          	leg = "scout-spidertron-mk1-leg-1",
	          	mount_position = util.by_pixel(19.9, 11.5),--{0.5, -0.75},
	          	ground_position = {2.59*1.2*1.2, 1.5*0.9*1.2},
	          	blocking_legs = {2, 3},
	          	leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla()
        	},
        	{ -- 2
	          	leg = "scout-spidertron-mk1-leg-2",
	          	mount_position = util.by_pixel(0, -23),--{0.75, -0.25},
	          	ground_position = {0*1.2, -3*1.2},
	          	blocking_legs = {1, 3},
	          	leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla()
       		},
        	{ -- 3
	          	leg = "scout-spidertron-mk1-leg-3",
	          	mount_position = util.by_pixel(-19.9, 11.5),--{0.75, 0.25},
	          	ground_position = {-2.59*1.2*1.2, 1.5*0.9*1.2},
	          	blocking_legs = {1, 2},
	          	leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla()
        	}
      	},
      	military_target = "spidertron-military-target",
    }
}


local scout_spidertron_mk1_remnants = {
    type = "corpse",
    name = "scout-spidertron-mk1-remnants",
    icon = "__spidertrontiers-circulardependency__/graphics/icons/scout_spidertron_mk1.png",
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
	          	filename = "__spidertrontiers-circulardependency__/graphics/entity/scout_spidertron_mk1/remnants/spidertron-remnants.png",
	          	line_length = 1,
	          	width = 224,
	          	height = 224,
	          	frame_count = 1,
	          	variation_count = 1,
	          	axially_symmetrical = false,
	          	direction_count = 1,
	         	shift = util.by_pixel(0, 0),
	          	r_version = {
		            filename = "__spidertrontiers-circulardependency__/graphics/entity/scout_spidertron_mk1/remnants/hr-spidertron-remnants.png",
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
	          	filename = "__spidertrontiers-circulardependency__/graphics/entity/scout_spidertron_mk1/remnants/mask/spidertron-remnants-mask.png",
	          	width = 184,
	          	height = 176,
	          	frame_count = 1,
	         	-- tint = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 },
	          	apply_runtime_tint = true,
	          	direction_count = 1,
	          	shift = util.by_pixel(9, 1),
	          	hr_version = {
		            priority = "low",
		            filename = "__spidertrontiers-circulardependency__/graphics/entity/scout_spidertron_mk1/remnants/mask/hr-spidertron-remnants-mask.png",
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


function make_scout_spidertron_mk1_leg(number, base_sprite, ending_sprite)
  	local leg = {
	    type = "spider-leg",
	    name = "scout-spidertron-mk1-leg-" .. number,
	    localised_name = {"entity-name.spidertron-leg"},
	    collision_box = {{-0.01, -0.01}, {0.01, 0.01}},
	    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	    icon = "__spidertrontiers-circulardependency__/graphics/icons/scout_spidertron_mk1.png",
	    icon_size = 64, icon_mipmaps = 4,
	    walking_sound_volume_modifier = 0.6, --modified
	    working_sound = 
	    {
	      match_progress_to_activity = true,
	      sound = sounds.spidertron_leg,
	      audible_distance_modifier = 0.8, --modified
	    },
	    part_length = 4,
	    initial_movement_speed = 0.06,
	    movement_acceleration = 0.1,
	    max_health = 100,
	    movement_based_position_selection_distance = 4, --modified
	    selectable_in_game = false,
	    graphics_set = scout_spidertron_mk1_animations.legs[number],
	}
	if (settings.startup["show-spidertron-legs"].value == false) then
		leg.graphics_set = {}
		leg.walking_sound_volume_modifier = 0
	end
	return leg
end

if (settings.startup["show-spidertron-legs"].value == false) then
	for index,leg in pairs(scout_spidertron_mk1.spider_engine.legs) do
		scout_spidertron_mk1.spider_engine.legs[index].leg_hit_the_ground_trigger = nil
	end
end

data:extend{
	scout_spidertron_mk1,
	scout_spidertron_mk1_remnants,
    utils.make_spidertron_leg("scout-spidertron-mk1", 1.2, 0.06, 0.1, 1, 1, scout_spidertron_mk1_animations),
    utils.make_spidertron_leg("scout-spidertron-mk1", 1.2, 0.06, 0.1, 1, 2, scout_spidertron_mk1_animations),
    utils.make_spidertron_leg("scout-spidertron-mk1", 1.2, 0.06, 0.1, 1, 3, scout_spidertron_mk1_animations),
}

