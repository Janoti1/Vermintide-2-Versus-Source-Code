GameModeSettings.versus = table.clone(GameModeSettings.base)
GameModeSettings.versus.key = "versus"
GameModeSettings.versus.class_name = "GameModeVersus"
GameModeSettings.versus.display_name = "dlc1_2_map_game_mode_versus"
GameModeSettings.versus.description_text = "game_mode_description_versus"
GameModeSettings.versus.lose_condition_time_dead = 4
GameModeSettings.versus.lose_condition_time = 4
GameModeSettings.versus.ai_specials_spawning_disabled = true
GameModeSettings.versus.horde_spawning_disabled = false
GameModeSettings.versus.show_horde_timer_pactsworn = true
GameModeSettings.versus.enable_horde_surge = false
GameModeSettings.versus.end_mission_rewards = true
GameModeSettings.versus.disable_difficulty_check = true
GameModeSettings.versus.hud_component_list_path = "scripts/ui/hud_ui/component_list_definitions/hud_component_list_versus"
GameModeSettings.versus.disable_rush_intervention = {
	all = false,
	hordes = false,
	specials = true
}
GameModeSettings.versus.use_floating_damage_numbers = true
GameModeSettings.versus.damage_sound_param_cooldown = 3
GameModeSettings.versus.object_sets = {
	versus_heroes = true,
	versus = true,
	versus_dark_pact = true
}
GameModeSettings.versus.ping_mode = {
	world_markers = true,
	outlines = {
		item = true,
		unit = true
	}
}

GameModeSettings.versus.positive_reinforcement_check = function (predicate, breed_attacker, breed_killed)
	return breed_killed.is_player or breed_killed.boss or breed_killed.special
end

GameModeSettings.versus.display_character_picking_view = true
GameModeSettings.versus.show_level_introduction = {
	round_1 = false,
	inn = false,
	round_2 = false
}
GameModeSettings.versus.player_wounds = {
	heroes = 2,
	spectators = 0,
	dark_pact = 1
}
GameModeSettings.versus.objectives = {
	capture_point = {
		capture_rate_multiplier = 1,
		score_per_section = 0,
		num_sections = 1,
		time_per_section = 0,
		time_for_completion = 0,
		score_for_completion = 0,
		capture_time = 60,
		scale = 1,
		on_complete_sound_event = {
			heroes = "versus_objective_completed_heroes",
			dark_pact = "versus_objective_completed_pactsworn"
		}
	},
	interact = {
		scale = 1,
		time_for_completion = 0,
		score_for_completion = 0,
		on_complete_sound_event = {
			heroes = "versus_hud_checkpoint_reached_heroes",
			dark_pact = "versus_hud_checkpoint_reached_dark_pact"
		}
	},
	socket = {
		score_per_socket = 0,
		time_for_completion = 0,
		score_for_completion = 0,
		time_per_socket = 0,
		scale = 1,
		on_complete_sound_event = {
			heroes = "versus_objective_completed_heroes",
			dark_pact = "versus_objective_completed_pactsworn"
		}
	},
	payload = {
		time_per_section = 0,
		time_for_completion = 0,
		num_sections = 10,
		score_for_completion = 0,
		scale = 1,
		score_per_section = 0,
		on_complete_sound_event = {
			heroes = "versus_objective_completed_heroes",
			dark_pact = "versus_objective_completed_pactsworn"
		}
	},
	volume = {
		time_for_each_player_inside = 0,
		scale = 1,
		time_for_completion = 0,
		score_for_completion = 0,
		volume_type = "all_alive",
		score_for_each_player_inside = 0,
		on_complete_sound_event = {
			heroes = "versus_hud_checkpoint_reached_heroes",
			dark_pact = "versus_hud_checkpoint_reached_dark_pact"
		}
	},
	target = {
		time_per_section = 0,
		time_for_completion = 0,
		num_sections = 1,
		score_for_completion = 0,
		scale = 1,
		score_per_section = 0,
		on_complete_sound_event = {
			heroes = "versus_hud_checkpoint_reached_heroes",
			dark_pact = "versus_hud_checkpoint_reached_dark_pact"
		}
	},
	mission = {
		scale = 1,
		time_for_completion = 0,
		score_for_completion = 0,
		on_complete_sound_event = {
			heroes = "versus_hud_checkpoint_reached_heroes",
			dark_pact = "versus_hud_checkpoint_reached_dark_pact"
		}
	}
}
GameModeSettings.versus.surge_events = {
	events = {
		military_pvp = {
			{
				time = 60,
				terror_events = {
					"military_pvp_event_su01_01",
					"military_pvp_event_su01_02",
					"military_pvp_event_su01_03",
					"military_pvp_event_su01_04"
				}
			},
			{
				time = 55,
				terror_events = {
					"military_pvp_event_su02_01",
					"military_pvp_event_su02_02",
					"military_pvp_event_su02_03",
					"military_pvp_event_su02_04"
				}
			},
			{
				time = 55,
				terror_events = {
					"military_pvp_event_su03_01",
					"military_pvp_event_su03_02",
					"military_pvp_event_su03_03",
					"military_pvp_event_su03_04"
				}
			},
			{
				time = 50,
				terror_events = {
					"military_pvp_event_su04_01",
					"military_pvp_event_su04_02",
					"military_pvp_event_su04_03",
					"military_pvp_event_su04_04"
				}
			},
			{
				time = 45,
				terror_events = {
					"military_pvp_event_su05_01",
					"military_pvp_event_su05_02",
					"military_pvp_event_su05_03",
					"military_pvp_event_su05_04"
				}
			},
			{
				time = 45,
				terror_events = {
					"military_pvp_event_su06_01",
					"military_pvp_event_su06_02",
					"military_pvp_event_su06_03",
					"military_pvp_event_su06_04"
				}
			}
		},
		bell_pvp = {
			{
				time = 60,
				terror_events = {
					"bell_pvp_event_su01_01",
					"bell_pvp_event_su01_02",
					"bell_pvp_event_su01_03",
					"bell_pvp_event_su01_04"
				}
			},
			{
				time = 55,
				terror_events = {
					"bell_pvp_event_su02_01",
					"bell_pvp_event_su02_02",
					"bell_pvp_event_su02_03",
					"bell_pvp_event_su02_04"
				}
			},
			{
				time = 55,
				terror_events = {
					"bell_pvp_event_su03_01",
					"bell_pvp_event_su03_02",
					"bell_pvp_event_su03_03",
					"bell_pvp_event_su03_04"
				}
			},
			{
				time = 50,
				terror_events = {
					"bell_pvp_event_su04_01",
					"bell_pvp_event_su04_02",
					"bell_pvp_event_su04_03",
					"bell_pvp_event_su04_04"
				}
			},
			{
				time = 45,
				terror_events = {
					"bell_pvp_event_su05_01",
					"bell_pvp_event_su05_02",
					"bell_pvp_event_su05_03",
					"bell_pvp_event_su05_04"
				}
			},
			{
				time = 45,
				terror_events = {
					"bell_pvp_event_su06_01",
					"bell_pvp_event_su06_02",
					"bell_pvp_event_su06_03",
					"bell_pvp_event_su06_04"
				}
			}
		},
		farmlands_pvp = {
			{
				time = 60,
				terror_events = {
					"farmlands_pvp_event_su01_01",
					"farmlands_pvp_event_su01_02",
					"farmlands_pvp_event_su01_03",
					"farmlands_pvp_event_su01_04"
				}
			},
			{
				time = 55,
				terror_events = {
					"farmlands_pvp_event_su02_01",
					"farmlands_pvp_event_su02_02",
					"farmlands_pvp_event_su02_03",
					"farmlands_pvp_event_su02_04"
				}
			},
			{
				time = 55,
				terror_events = {
					"farmlands_pvp_event_su03_01",
					"farmlands_pvp_event_su03_02",
					"farmlands_pvp_event_su03_03",
					"farmlands_pvp_event_su03_04"
				}
			},
			{
				time = 50,
				terror_events = {
					"farmlands_pvp_event_su04_01",
					"farmlands_pvp_event_su04_02",
					"farmlands_pvp_event_su04_03",
					"farmlands_pvp_event_su04_04"
				}
			},
			{
				time = 45,
				terror_events = {
					"farmlands_pvp_event_su05_01",
					"farmlands_pvp_event_su05_02",
					"farmlands_pvp_event_su05_03",
					"farmlands_pvp_event_su05_04"
				}
			},
			{
				time = 45,
				terror_events = {
					"farmlands_pvp_event_su06_01",
					"farmlands_pvp_event_su06_02",
					"farmlands_pvp_event_su06_03",
					"farmlands_pvp_event_su06_04"
				}
			}
		}
	}
}
GameModeSettings.versus.move_dead_players_after_objective_completed = true
GameModeSettings.versus.social_wheel_by_side = {
	heroes = "versus_heroes",
	dark_pact = "dark_pact"
}
GameModeSettings.versus.dark_pact_profile_order = {
	"vs_gutter_runner",
	"vs_packmaster",
	"vs_poison_wind_globadier",
	"vs_ratling_gunner",
	"vs_warpfire_thrower"
}
GameModeSettings.versus.party_fill_method = {
	fill_first_party = "fill_first_party",
	distribute_party_even = "distribute_party_even"
}
GameModeSettings.versus.fill_party_distribution = "distribute_party_even"
GameModeSettings.versus.dark_pact_profile_rules = {
	all = 10
}
GameModeSettings.versus.dark_pact_picking_rules = {
	special_pick_options = 2
}
GameModeSettings.versus.duplicate_hero_profiles_allowed = false
GameModeSettings.versus.duplicate_hero_careers_allowed = false
GameModeSettings.versus.allow_hotjoining_ongoing_game = true
GameModeSettings.versus.allowed_hotjoin_states = {
	"match_running_state",
	"pre_start_round_state",
	"party_lobby",
	"dedicated_server_waiting_for_fully_reserved"
}
GameModeSettings.versus.allow_host_migration = false
GameModeSettings.versus.shuffle_character_picking_order = "players_first"
GameModeSettings.versus.character_picking_settings = {
	player_pick_time = 10,
	parading_duration = 5,
	closing_time = 2,
	startup_time = 10
}
GameModeSettings.versus.display_end_of_match_score_view = true
GameModeSettings.versus.display_parading_view = true
GameModeSettings.versus.parading_times = {
	team_transition = 0.5,
	opponent_transition = 5,
	show_match_info = 4,
	local_player = 5
}
GameModeSettings.versus.party_names_lookup_by_id = {
	[0] = "undecided",
	"team_hammers",
	"team_skulls"
}
GameModeSettings.versus.pre_start_round_duration = 15
GameModeSettings.versus.initial_set_pre_start_duration = 60
GameModeSettings.versus.side_settings = {
	heroes = {
		observe_sides = {
			heroes = function ()
				return true
			end,
			dark_pact = function ()
				return false
			end
		},
		spawn_at_players_on_side = {}
	},
	dark_pact = {
		observe_sides = {
			heroes = function ()
				return true
			end,
			dark_pact = function ()
				return true
			end
		},
		spawn_at_players_on_side = {
			heroes = function ()
				return Managers.state.game_mode:is_round_started()
			end,
			dark_pact = function ()
				return true
			end
		},
		allowed_interactions = {
			ghost_mode = {
				carousel_dark_pact_tunnel = true,
				no_interaction_hud_only = true,
				carousel_dark_pact_spawner = true,
				carousel_dark_pact_climb = true
			},
			normal = {
				carousel_dark_pact_tunnel = true,
				no_interaction_hud_only = true,
				carousel_dark_pact_climb = true,
				door = true
			}
		},
		spawn_times = {
			delayed_death_time = 5
		}
	},
	spectators = {
		observe_sides = {
			heroes = function ()
				return true
			end,
			dark_pact = function ()
				return true
			end
		}
	}
}
GameModeSettings.versus.dark_pact_minimum_spawn_time = 5

local death_time = GameModeSettings.versus.side_settings.dark_pact.spawn_times.delayed_death_time

GameModeSettings.versus.dark_pact_respawn_timers = {
	5 - death_time,
	5 - death_time,
	10 - death_time,
	20 - death_time
}
GameModeSettings.versus.dark_pact_minimum_spawn_distance = 10
GameModeSettings.versus.dark_pact_minimum_spawn_distance_vertical = 3.5
GameModeSettings.versus.forced_difficulty = "versus_base"
GameModeSettings.versus.difficulties = {}
GameModeSettings.versus.power_level_override = 300
GameModeSettings.versus.additional_game_end_reasons = {
	"round_end",
	"party_one_won",
	"party_two_won",
	"party_one_won_early",
	"party_two_won_early",
	"draw"
}
GameModeSettings.versus.disable_achievements = true
GameModeSettings.versus.use_level_jumps = true
GameModeSettings.versus.hide_level_jumps = false
GameModeSettings.versus.show_selected_jump = true
GameModeSettings.versus.specified_pickups = true
GameModeSettings.versus.use_keep_decorations = false
GameModeSettings.versus.round_almost_over_time_breakpoint = 30
GameModeSettings.versus.distance_to_winning_objective_breakpoint = 20
GameModeSettings.versus.max_num_players = 8
GameModeSettings.versus.party_settings = {
	heroes = {
		num_slots = 4,
		name = "heroes",
		party_id = 1,
		using_bots = true,
		game_participating = true,
		tags = {
			heroes = true
		},
		party_relations = {
			enemy = {
				"dark_pact"
			}
		}
	},
	dark_pact = {
		num_slots = 4,
		name = "dark_pact",
		party_id = 2,
		using_bots = false,
		game_participating = true,
		tags = {
			dark_pact = true
		},
		party_relations = {
			enemy = {
				"heroes"
			}
		}
	},
	spectators = {
		num_slots = 4,
		name = "spectators",
		party_id = 3,
		using_bots = false,
		game_participating = false,
		tags = {
			spectators = true
		},
		party_relations = {}
	}
}
GameModeSettings.versus.game_mode_states = {
	"initial_state",
	"waiting_for_players_to_join",
	"dedicated_server_abort_game",
	"character_selection_state",
	"player_team_parading_state",
	"pre_start_round_state",
	"match_running_state",
	"post_round_state"
}
GameModeSettings.versus.experience = {
	win_match = 150,
	complete_all_objectives = 300,
	lose_match = 0,
	complete_match = 350
}
GameModeSettings.versus.mission_givers = {}
GameModeSettings.inn_vs = table.clone(GameModeSettings.versus)
GameModeSettings.inn_vs.disable_achievements = false
GameModeSettings.inn_vs.key = "inn_vs"
GameModeSettings.inn_vs.disable_difficulty_spawning_items = true
GameModeSettings.inn_vs.class_name = "GameModeInnVs"
GameModeSettings.inn_vs.display_name = "gm_bulldozer_inn"
GameModeSettings.inn_vs.end_mission_rewards = false
GameModeSettings.inn_vs.show_profile_on_startup = true
GameModeSettings.inn_vs.cap_power_level = true
GameModeSettings.inn_vs.use_level_progress = false
GameModeSettings.inn_vs.use_level_jumps = true
GameModeSettings.inn_vs.additional_game_end_reasons = nil
GameModeSettings.inn_vs.disable_difficulty_check = true
GameModeSettings.inn_vs.game_mode_states = {
	"initial_state",
	"party_lobby",
	"dedicated_server_waiting_for_fully_reserved",
	"dedicated_server_starting_game"
}
GameModeSettings.inn_vs.mission_givers = nil
GameModeSettings.inn_vs.hud_component_list_path = "scripts/ui/hud_ui/component_list_definitions/hud_component_list_inn_versus"
GameModeSettings.inn_vs.social_wheel_by_side = {
	heroes = "general",
	dark_pact = "general"
}
GameModeSettings.inn_vs.auto_force_start = {
	min_team_size = 2,
	start_after_seconds = 90,
	max_team_disparity = 1,
	enabled = true
}
