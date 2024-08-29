local settings = DLCSettings.carousel
local buff_perks = require("scripts/unit_extensions/default_player_unit/buffs/settings/buff_perk_names")

local function is_local(unit)
	local player = Managers.player:owner(unit)

	return player and not player.remote
end

local function is_bot(unit)
	local player = Managers.player:owner(unit)

	return player and player.bot_player
end

settings.buff_templates = {
	vs_gutter_runner_allow_dismount = {
		buffs = {
			{
				name = "vs_gutter_runner_allow_dismount"
			}
		}
	},
	vs_gutter_runner_smoke_bomb_invisible = {
		deactivation_effect = "fx/screenspace_ranger_skill_02",
		buffs = {
			{
				remove_buff_func = "end_vs_gutter_runner_smoke_bomb_invisibility",
				name = "vs_gutter_runner_smoke_bomb_invisible",
				refresh_durations = true,
				continuous_effect = "fx/screenspace_ranger_skill_01",
				max_stacks = 1,
				icon = "bardin_ranger_activated_ability",
				priority_buff = true,
				duration = 4
			}
		}
	},
	vs_ratling_gunner_slow = {
		buffs = {
			{
				update_func = "update_action_lerp_movement_buff",
				multiplier = 0.5,
				name = "vs_ratling_gunner_slow",
				refresh_durations = true,
				remove_buff_func = "remove_action_lerp_movement_buff",
				apply_buff_func = "apply_action_lerp_movement_buff",
				icon = "troll_vomit_debuff",
				remove_buff_name = "planted_return_to_normal_movement",
				lerp_time = 0.1,
				debuff = true,
				max_stacks = 1,
				duration = 0.8,
				path_to_movement_setting_to_modify = {
					"move_speed"
				}
			},
			{
				update_func = "update_charging_action_lerp_movement_buff",
				multiplier = 0.5,
				name = "decrease_crouch_speed_vs_ratling_gunner",
				refresh_durations = true,
				remove_buff_func = "remove_action_lerp_movement_buff",
				apply_buff_func = "apply_action_lerp_movement_buff",
				remove_buff_name = "planted_return_to_normal_crouch_movement",
				lerp_time = 0.1,
				max_stacks = 1,
				duration = 0.8,
				path_to_movement_setting_to_modify = {
					"crouch_move_speed"
				}
			},
			{
				update_func = "update_charging_action_lerp_movement_buff",
				multiplier = 0.5,
				name = "decrease_walk_speed_vs_ratling_gunner",
				refresh_durations = true,
				remove_buff_func = "remove_action_lerp_movement_buff",
				apply_buff_func = "apply_action_lerp_movement_buff",
				remove_buff_name = "planted_return_to_normal_walk_movement",
				lerp_time = 0.1,
				max_stacks = 1,
				duration = 0.8,
				path_to_movement_setting_to_modify = {
					"walk_move_speed"
				}
			},
			{
				name = "decrease_jump_speed_vs_ratling_gunner",
				multiplier = 0.6,
				duration = 0.8,
				max_stacks = 1,
				remove_buff_func = "remove_movement_buff",
				apply_buff_func = "apply_movement_buff",
				refresh_durations = true,
				path_to_movement_setting_to_modify = {
					"jump",
					"initial_vertical_speed"
				}
			},
			{
				name = "decrease_dodge_speed_vs_ratling_gunner",
				multiplier = 0.8,
				duration = 0.8,
				max_stacks = 1,
				remove_buff_func = "remove_movement_buff",
				apply_buff_func = "apply_movement_buff",
				refresh_durations = true,
				path_to_movement_setting_to_modify = {
					"dodging",
					"speed_modifier"
				}
			},
			{
				name = "decrease_dodge_distance_vs_ratling_gunner",
				multiplier = 0.8,
				duration = 0.8,
				max_stacks = 1,
				remove_buff_func = "remove_movement_buff",
				apply_buff_func = "apply_movement_buff",
				refresh_durations = true,
				path_to_movement_setting_to_modify = {
					"dodging",
					"distance_modifier"
				}
			}
		}
	},
	vs_warpfire_thrower_long_distance_damage = {
		buffs = {
			{
				remove_buff_func = "remove_vs_warpfirethrower_long_distance_damage",
				name = "vs_warpfire_thrower_long_distance_damage",
				icon = "troll_vomit_debuff",
				duration = 0.3,
				refresh_durations = true,
				apply_buff_func = "apply_vs_warpfirethrower_long_distance_damage",
				update_start_delay = 0.1,
				time_between_dot_damages = 0.75,
				max_stacks = 1,
				update_func = "update_vs_warpfirethrower_long_distance_damage",
				perks = {
					buff_perks.burning_warpfire
				}
			}
		}
	},
	vs_warpfire_thrower_short_distance_damage = {
		buffs = {
			{
				slowdown_buff_name = "warpfire_thrower_fire_slowdown",
				name = "vs_warpfire_thrower_base",
				update_func = "update_warpfirethrower_in_face_versus",
				dormant = true,
				damage_type = "warpfire_ground",
				remove_buff_func = "remove_warpfirethrower_in_face",
				apply_buff_func = "apply_warpfirethrower_in_face_versus",
				fatigue_type = "warpfire_ground",
				duration = 0.15,
				time_between_dot_damages = 0.15,
				debuff = true,
				max_stacks = 1,
				icon = "troll_vomit_debuff",
				push_speed = 12,
				perks = {
					buff_perks.burning_warpfire
				}
			}
		}
	},
	vs_pactsworn_melee_damage_taken = {
		buffs = {
			{
				multiplier = 1,
				name = "defence_debuff_enemies",
				stat_buff = "damage_taken_melee"
			}
		}
	}
}
settings.buff_function_templates = {
	end_vs_gutter_runner_smoke_bomb_invisibility = function (unit, buff, params, world)
		if is_local(unit) then
			local first_person_extension = ScriptUnit.extension(unit, "first_person_system")

			first_person_extension:play_unit_sound_event("Play_versus_gutterrunner_vanish_fps_end", unit, 0)

			local career_extension = ScriptUnit.extension(unit, "career_system")

			career_extension:set_state("default")
			career_extension:start_activated_ability_cooldown(1)

			local status_extension = ScriptUnit.extension(unit, "status_system")

			status_extension:set_invisible(false, nil, "gutter_runner_f")

			if Managers.state.network:game() then
				local status_extension = ScriptUnit.extension(unit, "status_system")

				status_extension:set_is_dodging(false)

				local network_manager = Managers.state.network
				local network_transmit = network_manager.network_transmit
				local unit_id = network_manager:unit_game_object_id(unit)

				network_transmit:send_rpc_server("rpc_status_change_bool", NetworkLookup.statuses.dodging, false, unit_id, 0)
			end

			MOOD_BLACKBOARD.gutter_runner_f = false
		end
	end,
	apply_vs_warpfirethrower_long_distance_damage = function (unit, buff, params, world)
		local breed = Unit.get_data(unit, "breed")

		buff.armor_type = breed.armor_category or 1

		local first_person_extension = ScriptUnit.has_extension(unit, "first_person_system")

		if first_person_extension then
			buff.warpfire_particle_id = first_person_extension:create_screen_particles("fx/screenspace_warpfire_hit_onfeet")
		end

		local attacker_unit = params.attacker_unit

		if Unit.alive(attacker_unit) then
			local warpfire_unit_breed = Unit.get_data(attacker_unit, "breed")
			local damage = warpfire_unit_breed.shoot_warpfire_long_attack_damage

			buff.damage = damage
			buff.damage_source = warpfire_unit_breed and warpfire_unit_breed.name or "dot_debuff"
		end
	end,
	update_vs_warpfirethrower_long_distance_damage = function (unit, buff, params, world)
		local t = params.t
		local buff_template = buff.template

		if Managers.state.network.is_server and HEALTH_ALIVE[unit] then
			local attacker_unit = params.attacker_unit
			local attacker_unit = Unit.alive(attacker_unit) and attacker_unit or unit
			local armor_type = buff.armor_type
			local buff_template = buff.template
			local damage_type = buff_template.damage_type
			local damage = buff.damage[armor_type]
			local damage_source = buff.damage_source

			DamageUtils.add_damage_network(unit, attacker_unit, damage, "torso", damage_type, nil, Vector3(1, 0, 0), damage_source)
		end

		local first_person_extension = ScriptUnit.has_extension(unit, "first_person_system")

		if first_person_extension then
			first_person_extension:play_hud_sound_event("Play_player_damage_puke")
		end

		local warpfire_next_t = t + buff_template.time_between_dot_damages

		return warpfire_next_t
	end,
	remove_vs_warpfirethrower_long_distance_damage = function (unit, buff, params, world)
		local first_person_extension = ScriptUnit.has_extension(unit, "first_person_system")

		if first_person_extension then
			first_person_extension:stop_spawning_screen_particles(buff.warpfire_particle_id)
		end
	end
}
