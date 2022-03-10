local sounds = require("__base__.prototypes.entity.sounds")
local voyage_spidertron_mk2_animations = require("__spidertrontiers-circulardependency__.spidertron_animations.voyage_spidertron_mk2-animations")
local ground_triggers = require("__spidertrontiers-circulardependency__.prototypes.ground_triggers")

local voyage_spidertron_mk2 = {
    type = "spider-vehicle",
    name = "voyage_spidertron_mk2",
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1, -1}, {1, 1}},
    icon = "__spidertrontiers-circulardependency__/graphics/icons/voyage_spidertron_mk2.png",
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    open_sound = { filename = "__base__/sound/spidertron/spidertron-door-open.ogg", volume= 0.35 },
    close_sound = { filename = "__base__/sound/spidertron/spidertron-door-close.ogg", volume = 0.4 },
    sound_minimum_speed = 0.1,
    sound_scaling_ratio = 0.6,
    trash_inventory_size = 12,
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
    minable = {mining_time = 1, result = "voyage_spidertron_mk2"},
    max_health = 500, --modified
    resistances = {
      	{
        	type = "fire",
        	decrease = 15,
        	percent = 60
      	},
      	{
	        type = "physical",
	        decrease = 5,
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
      	filename = "__spidertrontiers-circulardependency__/graphics/entity/voyage_spidertron_mk2/spidertron-map.png",
      	flags = {"icon"},
      	size = {128, 128},
      	scale = 0.5
    },
    corpse = "voyage-spidertron-mk2-remnants",
    dying_explosion = "spidertron-explosion",
    energy_per_hit_point = 1,
    guns = { "voyage-spidertron-mk2-rocket-launcher-1", "voyage-spidertron-mk2-rocket-launcher-2"},
    inventory_size = 110,
    equipment_grid = "voyage-spidertron-mk2-equipment-grid",
    height = 1.5,
    torso_rotation_speed = 0.005,
    chunk_exploration_radius = 2, --modified
    selection_priority = 51,
    graphics_set = voyage_spidertron_mk2_animations.torso,
    energy_source = {
      	type = "void",
    },
    movement_energy_consumption = "250kW",
    automatic_weapon_cycling = true,
    chain_shooting_cooldown_modifier = 2.5, --modified
    spider_engine = {
      	legs = {
	        { -- 1
	          	leg = "voyage-spidertron-mk2-leg-1",
	          	mount_position = util.by_pixel(13, -22.5),--{0.5, -0.75},
	          	ground_position = {2.26*1, -2.26*1},
	          	blocking_legs = {2},
	          	leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla()
	        },
	        { -- 2
	          	leg = "voyage-spidertron-mk2-leg-2",
	          	mount_position = util.by_pixel(22.5, -13),--{0.75, -0.25},
	          	ground_position = {2.96*1, -1.23*1},
	          	blocking_legs = {1, 3},
	          	leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla()
	        },
	       	{ -- 3
	          	leg = "voyage-spidertron-mk2-leg-3",
	          	mount_position = util.by_pixel(26, 0),--{0.75, 0.25},
	          	ground_position = {3.2*1, 0*1},
	          	blocking_legs = {2, 4},
	          	leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla()
	        },
	        { -- 4
	          	leg = "voyage-spidertron-mk2-leg-4",
	          	mount_position = util.by_pixel(22.5, 13),--{0.75, 0.25},
	          	ground_position = {2.96*1, 1.23*1},
	          	blocking_legs = {3, 5},
	          	leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla()
	        },
	        { -- 5
	          	leg = "voyage-spidertron-mk2-leg-5",
	          	mount_position = util.by_pixel(13, 22.5),--{0.5, 0.75},
	          	ground_position = {2.26*1, 2.26*1},
	          	blocking_legs = {4},
	          	leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla()
	        },
	        { -- 6
	          	leg = "voyage-spidertron-mk2-leg-6",
	          	mount_position = util.by_pixel(-13, -22.5),--{-0.5, -0.75},
	          	ground_position = {-2.26*1, -2.26*1},
	          	blocking_legs = {7},
	          	leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla()
	        },
	        { -- 7
	          	leg = "voyage-spidertron-mk2-leg-7",
	          	mount_position = util.by_pixel(-22.5, -13),--{-0.75, -0.25},
	          	ground_position = {-2.96*1, -1.23*1},
	          	blocking_legs = {6, 8},
	          	leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla()
	        },
	        { -- 8
	          	leg = "voyage-spidertron-mk2-leg-8",
	          	mount_position = util.by_pixel(-26, 0),--{-0.75, 0.25},
	          	ground_position = {-3.2*1, 0*1},
	          	blocking_legs = {7, 9},
	          	leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla()
	        },
	        { -- 9
	          	leg = "voyage-spidertron-mk2-leg-9",
	          	mount_position = util.by_pixel(-22.5, 13),--{-0.5, 0.75},
	          	ground_position = {-2.96*1, 1.23*1},
	          	blocking_legs = {8, 10},
	          	leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla()
	        },
	       	{ -- 10
	          	leg = "voyage-spidertron-mk2-leg-10",
	          	mount_position = util.by_pixel(-13, 22.5),--{-0.5, 0.75},
	          	ground_position = {-2.26*1, 2.26*1},
	          	blocking_legs = {9},
	          	leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla()
	        }
      	},
      	military_target = "spidertron-military-target",
    }
}


local voyage_spidertron_mk2_remnants = {
    type = "corpse",
    name = "voyage-spidertron-mk2-remnants",
    icon = "__spidertrontiers-circulardependency__/graphics/icons/voyage_spidertron_mk2.png",
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
	          	filename = "__spidertrontiers-circulardependency__/graphics/entity/voyage_spidertron_mk2/remnants/spidertron-remnants.png",
	          	line_length = 1,
	          	width = 224,
	          	height = 224,
	          	frame_count = 1,
	          	variation_count = 1,
	          	axially_symmetrical = false,
	          	direction_count = 1,
	         	shift = util.by_pixel(0, 0),
	          	r_version = {
		            filename = "__spidertrontiers-circulardependency__/graphics/entity/voyage_spidertron_mk2/remnants/hr-spidertron-remnants.png",
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
	          	filename = "__spidertrontiers-circulardependency__/graphics/entity/voyage_spidertron_mk2/remnants/mask/spidertron-remnants-mask.png",
	          	width = 184,
	          	height = 176,
	          	frame_count = 1,
	         	-- tint = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 },
	          	apply_runtime_tint = true,
	          	direction_count = 1,
	          	shift = util.by_pixel(9, 1),
	          	hr_version = {
		            priority = "low",
		            filename = "__spidertrontiers-circulardependency__/graphics/entity/voyage_spidertron_mk2/remnants/mask/hr-spidertron-remnants-mask.png",
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


function make_voyage_spidertron_mk2_leg(number, base_sprite, ending_sprite)
  	local leg = {
	    type = "spider-leg",
	    name = "voyage-spidertron-mk2-leg-" .. number,
	    localised_name = {"entity-name.spidertron-leg"},
	    collision_box = {{-0.01, -0.01}, {0.01, 0.01}},
	    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	    icon = "__spidertrontiers-circulardependency__/graphics/icons/voyage_spidertron_mk2.png",
	    icon_size = 64, icon_mipmaps = 4,
	    walking_sound_volume_modifier = 0.6, --modified
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
	    movement_based_position_selection_distance = 1.5, --modified
	    selectable_in_game = false,
	    graphics_set = voyage_spidertron_mk2_animations.legs[number],
	}
	if (settings.startup["show-spidertron-legs"].value == false) then
		leg.graphics_set = {}
		leg.walking_sound_volume_modifier = 0
	end
	return leg
end

if (settings.startup["show-spidertron-legs"].value == false) then
	for index,leg in pairs(voyage_spidertron_mk2.spider_engine.legs) do
		voyage_spidertron_mk2.spider_engine.legs[index].leg_hit_the_ground_trigger = nil
	end
end

data:extend{
	voyage_spidertron_mk2,
	voyage_spidertron_mk2_remnants,
	utils.make_spidertron_leg("voyage-spidertron-mk2", 1, 0.06, 0.03, 1, 1, voyage_spidertron_mk2_animations),
	utils.make_spidertron_leg("voyage-spidertron-mk2", 1, 0.06, 0.03, 1, 2, voyage_spidertron_mk2_animations),
	utils.make_spidertron_leg("voyage-spidertron-mk2", 1, 0.06, 0.03, 1, 3, voyage_spidertron_mk2_animations),
	utils.make_spidertron_leg("voyage-spidertron-mk2", 1, 0.06, 0.03, 1, 4, voyage_spidertron_mk2_animations),
	utils.make_spidertron_leg("voyage-spidertron-mk2", 1, 0.06, 0.03, 1, 5, voyage_spidertron_mk2_animations),
	utils.make_spidertron_leg("voyage-spidertron-mk2", 1, 0.06, 0.03, 1, 6, voyage_spidertron_mk2_animations),
	utils.make_spidertron_leg("voyage-spidertron-mk2", 1, 0.06, 0.03, 1, 7, voyage_spidertron_mk2_animations),
	utils.make_spidertron_leg("voyage-spidertron-mk2", 1, 0.06, 0.03, 1, 8, voyage_spidertron_mk2_animations),
	utils.make_spidertron_leg("voyage-spidertron-mk2", 1, 0.06, 0.03, 1, 9, voyage_spidertron_mk2_animations),
	utils.make_spidertron_leg("voyage-spidertron-mk2", 1, 0.06, 0.03, 1, 10, voyage_spidertron_mk2_animations),
}

