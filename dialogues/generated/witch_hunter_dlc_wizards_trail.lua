return function ()
	define_rule({
		name = "pwh_wizard_trail_bridge_down",
		response = "pwh_wizard_trail_bridge_down",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizard_trail_bridge_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"wizard_trail_bridge_down",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"wizard_trail_bridge_down",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pwh_wizard_trail_caravan_b",
		name = "pwh_wizard_trail_caravan_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_wizard_trail_caravan_a_done"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		name = "pwh_wizard_trail_cargo",
		response = "pwh_wizard_trail_cargo",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizard_trail_cargo"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"wizard_trail_cargo",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"wizard_trail_cargo",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_wizard_trail_crate_down",
		response = "pwh_wizard_trail_crate_down",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizard_trail_crate_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"wizard_trail_crate_down",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"wizard_trail_crate_down",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pwh_wizard_trail_crate_drop_b",
		name = "pwh_wizard_trail_crate_drop_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_wizard_trail_crate_drop_a_done"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		name = "pwh_wizard_trail_free_sleigh",
		response = "pwh_wizard_trail_free_sleigh",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizard_trail_free_sleigh"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"wizard_trail_free_sleigh",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"wizard_trail_free_sleigh",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_wizard_trail_illusion_fades_a",
		response = "pwh_wizard_trail_illusion_fades_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizard_trail_illusion_fades_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"wizard_trail_illusion_fades_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"wizard_trail_illusion_fades_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pwh_wizard_trail_illusion_fades_b",
		name = "pwh_wizard_trail_illusion_fades_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizard_trail_illusion_fades_b"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_wizard_trail_illusion_fades_c",
		name = "pwh_wizard_trail_illusion_fades_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"wizard_trail_illusion_fades_b"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		name = "pwh_wizard_trail_intro_b",
		response = "pwh_wizard_trail_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_wizard_trail_intro_a_done"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"wizard_trail_intro_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"wizard_trail_intro_b",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_wizard_trail_intro_c",
		response = "pwh_wizard_trail_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"wizard_trail_intro_b"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"wizard_trail_intro_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"wizard_trail_intro_c",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pwh_wizard_trail_intruders_b",
		name = "pwh_wizard_trail_intruders_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nsf_wizard_trail_intruders_a_done"
			},
			{
				"global_context",
				"bright_wizard",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_wizard_trail_lower_bridge_b",
		name = "pwh_wizard_trail_lower_bridge_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_wizard_trail_lower_bridge_a_done"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_wizard_trail_olesya_revealed_b",
		name = "pwh_wizard_trail_olesya_revealed_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_wizard_trail_olesya_revealed_a"
			},
			{
				"query_context",
				"friends_distant",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_wizard_trail_olesya_revealed_b_distance",
		name = "pwh_wizard_trail_olesya_revealed_b_distance",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"wizard_trail_olesya_revealed_a_done"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		name = "pwh_wizard_trail_open_crate",
		response = "pwh_wizard_trail_open_crate",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizard_trail_open_crate"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"wizard_trail_open_crate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"wizard_trail_open_crate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_wizard_trail_shove",
		response = "pwh_wizard_trail_shove",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizard_trail_shove"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"wizard_trail_shove",
				OP.LT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"wizard_trail_shove",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_wizard_trail_sleigh_found",
		response = "pwh_wizard_trail_sleigh_found",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizard_trail_sleigh_found"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"wizard_trail_sleigh_found",
				OP.LT,
				2
			},
			{
				"faction_memory",
				"time_since_sleigh_found",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_sleigh_found",
				OP.TIMESET
			},
			{
				"faction_memory",
				"wizard_trail_sleigh_found",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_wizard_trail_sleigh_gone",
		response = "pwh_wizard_trail_sleigh_gone",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizard_trail_sleigh_gone"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"wizard_trail_sleigh_gone",
				OP.LT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"wizard_trail_sleigh_gone",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_wizard_trail_stuck_a",
		response = "pwh_wizard_trail_stuck_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizard_trail_stuck_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"wizard_trail_stuck_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"wizard_trail_stuck_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pwh_wizard_trail_stuck_b",
		name = "pwh_wizard_trail_stuck_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"wizard_trail_stuck_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		name = "pwh_wizard_trail_vista",
		response = "pwh_wizard_trail_vista",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizard_trail_vista"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"wizard_trail_vista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"wizard_trail_vista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_wizard_trail_vista_two",
		response = "pwh_wizard_trail_vista_two",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizard_trail_vista_two"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"wizard_trail_vista_two",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"wizard_trail_vista_two",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pwh_wizard_trail_bridge_down = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_bridge_down_01",
				"pwh_wizard_trail_bridge_down_02",
				"pwh_wizard_trail_bridge_down_03",
				"pwh_wizard_trail_bridge_down_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_bridge_down_01",
				"pwh_wizard_trail_bridge_down_02",
				"pwh_wizard_trail_bridge_down_03",
				"pwh_wizard_trail_bridge_down_04"
			},
			sound_events_duration = {
				4.0659999847412,
				3.238979101181,
				2.9990000724792,
				2.4170000553131
			}
		},
		pwh_wizard_trail_caravan_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_wizard_trail_caravan_b_01",
				[2] = "pwh_wizard_trail_caravan_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_wizard_trail_caravan_b_01",
				[2] = "pwh_wizard_trail_caravan_b_02"
			},
			sound_events_duration = {
				[1] = 2.5130000114441,
				[2] = 3.0190000534058
			}
		},
		pwh_wizard_trail_cargo = {
			override_awareness = "wizard_trail_winch",
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_cargo_01",
				"pwh_wizard_trail_cargo_02",
				"pwh_wizard_trail_cargo_03",
				"pwh_wizard_trail_cargo_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_cargo_01",
				"pwh_wizard_trail_cargo_02",
				"pwh_wizard_trail_cargo_03",
				"pwh_wizard_trail_cargo_04"
			},
			sound_events_duration = {
				6.3769793510437,
				4.2689790725708,
				4.1569790840149,
				3.2599792480469
			}
		},
		pwh_wizard_trail_crate_down = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_crate_down_01",
				"pwh_wizard_trail_crate_down_02",
				"pwh_wizard_trail_crate_down_03",
				"pwh_wizard_trail_crate_down_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_crate_down_01",
				"pwh_wizard_trail_crate_down_02",
				"pwh_wizard_trail_crate_down_03",
				"pwh_wizard_trail_crate_down_04"
			},
			sound_events_duration = {
				3.3729791641235,
				4.2449793815613,
				4.1339793205261,
				4.1959791183472
			}
		},
		pwh_wizard_trail_crate_drop_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_crate_drop_b_01",
				"pwh_wizard_trail_crate_drop_b_02",
				"pwh_wizard_trail_crate_drop_b_03",
				"pwh_wizard_trail_crate_drop_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_crate_drop_b_01",
				"pwh_wizard_trail_crate_drop_b_02",
				"pwh_wizard_trail_crate_drop_b_03",
				"pwh_wizard_trail_crate_drop_b_04"
			},
			sound_events_duration = {
				5.9239792823792,
				3.1159791946411,
				5.5639791488647,
				5.1359791755676
			}
		},
		pwh_wizard_trail_free_sleigh = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_free_sleigh_01",
				"pwh_wizard_trail_free_sleigh_02",
				"pwh_wizard_trail_free_sleigh_03",
				"pwh_wizard_trail_free_sleigh_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_free_sleigh_01",
				"pwh_wizard_trail_free_sleigh_02",
				"pwh_wizard_trail_free_sleigh_03",
				"pwh_wizard_trail_free_sleigh_04"
			},
			sound_events_duration = {
				4.1139793395996,
				3.0599999427795,
				6.3389792442322,
				2.835000038147
			}
		},
		pwh_wizard_trail_illusion_fades_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_illusion_fades_a_01",
				"pwh_wizard_trail_illusion_fades_a_02",
				"pwh_wizard_trail_illusion_fades_a_03",
				"pwh_wizard_trail_illusion_fades_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_illusion_fades_a_01",
				"pwh_wizard_trail_illusion_fades_a_02",
				"pwh_wizard_trail_illusion_fades_a_03",
				"pwh_wizard_trail_illusion_fades_a_04"
			},
			sound_events_duration = {
				2.441999912262,
				2.9989790916443,
				3.4249999523163,
				4.2619791030884
			}
		},
		pwh_wizard_trail_illusion_fades_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_illusion_fades_b_01",
				"pwh_wizard_trail_illusion_fades_b_02",
				"pwh_wizard_trail_illusion_fades_b_03",
				"pwh_wizard_trail_illusion_fades_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_illusion_fades_b_01",
				"pwh_wizard_trail_illusion_fades_b_02",
				"pwh_wizard_trail_illusion_fades_b_03",
				"pwh_wizard_trail_illusion_fades_b_04"
			},
			sound_events_duration = {
				5.3588542938232,
				5.8156876564026,
				3.5831665992737,
				4.4491457939148
			}
		},
		pwh_wizard_trail_illusion_fades_c = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_illusion_fades_c_01",
				"pwh_wizard_trail_illusion_fades_c_02",
				"pwh_wizard_trail_illusion_fades_c_03",
				"pwh_wizard_trail_illusion_fades_c_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_illusion_fades_c_01",
				"pwh_wizard_trail_illusion_fades_c_02",
				"pwh_wizard_trail_illusion_fades_c_03",
				"pwh_wizard_trail_illusion_fades_c_04"
			},
			sound_events_duration = {
				2.5234582424164,
				1.7646458148956,
				5.1126251220703,
				4.0126667022705
			}
		},
		pwh_wizard_trail_intro_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 2,
			category = "level_talk_must_play",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_wizard_trail_intro_b_01",
				[2] = "pwh_wizard_trail_intro_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_wizard_trail_intro_b_01",
				[2] = "pwh_wizard_trail_intro_b_02"
			},
			sound_events_duration = {
				[1] = 4.0779790878296,
				[2] = 5.1109790802002
			}
		},
		pwh_wizard_trail_intro_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 2,
			category = "level_talk_must_play",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_wizard_trail_intro_c_01",
				[2] = "pwh_wizard_trail_intro_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_wizard_trail_intro_c_01",
				[2] = "pwh_wizard_trail_intro_c_02"
			},
			sound_events_duration = {
				[1] = 4.5189790725708,
				[2] = 8.6919794082642
			}
		},
		pwh_wizard_trail_intruders_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_wizard_trail_intruders_b_01",
				[2] = "pwh_wizard_trail_intruders_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_wizard_trail_intruders_b_01",
				[2] = "pwh_wizard_trail_intruders_b_02"
			},
			sound_events_duration = {
				[1] = 2.9549791812897,
				[2] = 3.6519792079926
			}
		},
		pwh_wizard_trail_lower_bridge_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_wizard_trail_lower_bridge_b_01",
				[2] = "pwh_wizard_trail_lower_bridge_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_wizard_trail_lower_bridge_b_01",
				[2] = "pwh_wizard_trail_lower_bridge_b_02"
			},
			sound_events_duration = {
				[1] = 4.9229793548584,
				[2] = 4.9809789657593
			}
		},
		pwh_wizard_trail_olesya_revealed_b = {
			override_awareness = "wizard_trail_olesya_revealed_b_done",
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_olesya_revealed_b_01",
				"pwh_wizard_trail_olesya_revealed_b_02",
				"pwh_wizard_trail_olesya_revealed_b_03",
				"pwh_wizard_trail_olesya_revealed_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_olesya_revealed_b_01",
				"pwh_wizard_trail_olesya_revealed_b_02",
				"pwh_wizard_trail_olesya_revealed_b_03",
				"pwh_wizard_trail_olesya_revealed_b_04"
			},
			sound_events_duration = {
				1.2400000095367,
				1.493979215622,
				2.6379792690277,
				2.8570001125336
			}
		},
		pwh_wizard_trail_olesya_revealed_b_distance = {
			override_awareness = "wizard_trail_olesya_revealed_b_done",
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_olesya_revealed_b_01",
				"pwh_wizard_trail_olesya_revealed_b_02",
				"pwh_wizard_trail_olesya_revealed_b_03",
				"pwh_wizard_trail_olesya_revealed_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_olesya_revealed_b_01",
				"pwh_wizard_trail_olesya_revealed_b_02",
				"pwh_wizard_trail_olesya_revealed_b_03",
				"pwh_wizard_trail_olesya_revealed_b_04"
			},
			sound_events_duration = {
				1.2400000095367,
				1.493979215622,
				2.6379792690277,
				2.8570001125336
			}
		},
		pwh_wizard_trail_open_crate = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_open_crate_01",
				"pwh_wizard_trail_open_crate_02",
				"pwh_wizard_trail_open_crate_03",
				"pwh_wizard_trail_open_crate_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_open_crate_01",
				"pwh_wizard_trail_open_crate_02",
				"pwh_wizard_trail_open_crate_03",
				"pwh_wizard_trail_open_crate_04"
			},
			sound_events_duration = {
				3.2249791622162,
				2.6679792404175,
				4.3249793052673,
				3.8879792690277
			}
		},
		pwh_wizard_trail_shove = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_shove_01",
				"pwh_wizard_trail_shove_02",
				"pwh_wizard_trail_shove_03",
				"pwh_wizard_trail_shove_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_shove_01",
				"pwh_wizard_trail_shove_02",
				"pwh_wizard_trail_shove_03",
				"pwh_wizard_trail_shove_04"
			},
			sound_events_duration = {
				3.6999790668488,
				1.7120000123978,
				3.4269790649414,
				1.9559999704361
			}
		},
		pwh_wizard_trail_sleigh_found = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_sleigh_found_01",
				"pwh_wizard_trail_sleigh_found_02",
				"pwh_wizard_trail_sleigh_found_03",
				"pwh_wizard_trail_sleigh_found_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_sleigh_found_01",
				"pwh_wizard_trail_sleigh_found_02",
				"pwh_wizard_trail_sleigh_found_03",
				"pwh_wizard_trail_sleigh_found_04"
			},
			sound_events_duration = {
				2.3029999732971,
				2.4279999732971,
				4.2199997901917,
				4.9770002365112
			}
		},
		pwh_wizard_trail_sleigh_gone = {
			override_awareness = "wizard_trail_sleigh_lost",
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_sleigh_gone_01",
				"pwh_wizard_trail_sleigh_gone_02",
				"pwh_wizard_trail_sleigh_gone_03",
				"pwh_wizard_trail_sleigh_gone_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_sleigh_gone_01",
				"pwh_wizard_trail_sleigh_gone_02",
				"pwh_wizard_trail_sleigh_gone_03",
				"pwh_wizard_trail_sleigh_gone_04"
			},
			sound_events_duration = {
				3.6480000019074,
				3.3809790611267,
				3.6689999103546,
				3.1149792671204
			}
		},
		pwh_wizard_trail_stuck_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_stuck_a_01",
				"pwh_wizard_trail_stuck_a_02",
				"pwh_wizard_trail_stuck_a_03",
				"pwh_wizard_trail_stuck_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_stuck_a_01",
				"pwh_wizard_trail_stuck_a_02",
				"pwh_wizard_trail_stuck_a_03",
				"pwh_wizard_trail_stuck_a_04"
			},
			sound_events_duration = {
				3.8449790477753,
				3.0549790859222,
				3.4679791927338,
				4.3539791107178
			}
		},
		pwh_wizard_trail_stuck_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_stuck_b_01",
				"pwh_wizard_trail_stuck_b_02",
				"pwh_wizard_trail_stuck_b_03",
				"pwh_wizard_trail_stuck_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_stuck_b_01",
				"pwh_wizard_trail_stuck_b_02",
				"pwh_wizard_trail_stuck_b_03",
				"pwh_wizard_trail_stuck_b_04"
			},
			sound_events_duration = {
				4.7179999351502,
				2.5789792537689,
				3.5480000972748,
				3.0309791564941
			}
		},
		pwh_wizard_trail_vista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_vista_01",
				"pwh_wizard_trail_vista_02",
				"pwh_wizard_trail_vista_03",
				"pwh_wizard_trail_vista_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_vista_01",
				"pwh_wizard_trail_vista_02",
				"pwh_wizard_trail_vista_03",
				"pwh_wizard_trail_vista_04"
			},
			sound_events_duration = {
				2.6719999313355,
				3.5779790878296,
				5.4629793167114,
				3.4949998855591
			}
		},
		pwh_wizard_trail_vista_two = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_wizards_trail",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_wizard_trail_vista_two_01",
				"pwh_wizard_trail_vista_two_02",
				"pwh_wizard_trail_vista_two_03",
				"pwh_wizard_trail_vista_two_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_wizard_trail_vista_two_01",
				"pwh_wizard_trail_vista_two_02",
				"pwh_wizard_trail_vista_two_03",
				"pwh_wizard_trail_vista_two_04"
			},
			sound_events_duration = {
				2.9209792613983,
				3.4999792575836,
				2.8929998874664,
				3.8019790649414
			}
		}
	})
end
