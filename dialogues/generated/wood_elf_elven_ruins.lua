return function ()
	define_rule({
		name = "pwe_elven_ruins_intro_a",
		response = "pwe_elven_ruins_intro_a",
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
				"elven_ruins_intro_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"elven_ruins_intro_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"elven_ruins_intro_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_elven_ruins_intro_b",
		response = "pwe_elven_ruins_intro_b",
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
				"elven_ruins_intro_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"elven_ruins_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"elven_ruins_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_elven_ruins_intro_c",
		response = "pwe_elven_ruins_intro_c",
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
				"elven_ruins_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"elven_ruins_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"elven_ruins_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_big_tree",
		response = "pwe_level_elven_ruins_big_tree",
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
				"elven_ruins_big_tree"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_big_tree",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_big_tree",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_broken_waystone",
		response = "pwe_level_elven_ruins_broken_waystone",
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
				"elven_ruins_broken_waystone"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_elven_ruins_broken_waystone",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_broken_waystone",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_clearing",
		response = "pwe_level_elven_ruins_clearing",
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
				"elven_ruins_clearing"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_clearing",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_clearing",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_cliff_edge",
		response = "pwe_level_elven_ruins_cliff_edge",
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
				"elven_ruins_cliff_edge"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_elven_ruins_cliff_edge",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_cliff_edge",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_entering_ruins",
		response = "pwe_level_elven_ruins_entering_ruins",
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
				"elven_ruins_entering_ruins"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_entering_ruins",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_entering_ruins",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_exit",
		response = "pwe_level_elven_ruins_exit",
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
				"elven_ruins_exit"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"elven_ruins_exit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"elven_ruins_exit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_first_aligned_pleasant_feeling",
		response = "pwe_level_elven_ruins_first_aligned_pleasant_feeling",
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
				"elven_ruins_first_aligned_pleasant_feeling"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_first_aligned_pleasant_feeling",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_first_aligned_pleasant_feeling",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_great_glade",
		response = "pwe_level_elven_ruins_great_glade",
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
				"elven_ruins_great_glade"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_elven_ruins_great_glade",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_great_glade",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_maze_approach",
		response = "pwe_level_elven_ruins_maze_approach",
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
				"elven_ruins_maze_approach"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_elven_ruins_maze_approach",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_maze_approach",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_maze_interior",
		response = "pwe_level_elven_ruins_maze_interior",
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
				"elven_ruins_maze_approach"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_elven_ruins_maze_approach",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_maze_approach",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_noisy_puzzle",
		response = "pwe_level_elven_ruins_noisy_puzzle",
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
				"elven_ruins_noisy_puzzle"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_noisy_puzzle",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_noisy_puzzle",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_ravine_approach",
		response = "pwe_level_elven_ruins_ravine_approach",
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
				"elven_ruins_ravine_approach"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_elven_ruins_ravine_approach",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_ravine_approach",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_second_aligned",
		response = "pwe_level_elven_ruins_second_aligned",
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
				"elven_ruins_second_aligned"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_second_aligned",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_second_aligned",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_seeing_puzzle",
		response = "pwe_level_elven_ruins_seeing_puzzle",
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
				"elven_ruins_seeing_puzzle"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_seeing_puzzle",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_seeing_puzzle",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_seeing_puzzle_crystals",
		response = "pwe_level_elven_ruins_seeing_puzzle_crystals",
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
				"elven_ruins_seeing_puzzle_crystals"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_seeing_puzzle_crystals",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_seeing_puzzle_crystals",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_shattered_temple",
		response = "pwe_level_elven_ruins_shattered_temple",
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
				"elven_ruins_shattered_temple"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_shattered_temple",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_shattered_temple",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_skaven_banners",
		response = "pwe_level_elven_ruins_skaven_banners",
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
				"elven_ruins_skaven_banners"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_elven_ruins_skaven_banners",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_skaven_banners",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_task_complete",
		response = "pwe_level_elven_ruins_task_complete",
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
				"elven_ruins_task_complete"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_elven_ruins_task_complete",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_task_complete",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_elven_ruins_untouched",
		response = "pwe_level_elven_ruins_untouched",
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
				"elven_ruins_untouched"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_elven_ruins_untouched",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_untouched",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pwe_elven_ruins_intro_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "wood_elf_elven_ruins",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral"
			},
			localization_strings = {
				[1] = "pwe_elven_ruins_intro_a_01",
				[2] = "pwe_elven_ruins_intro_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwe_elven_ruins_intro_a_01",
				[2] = "pwe_elven_ruins_intro_a_02"
			},
			sound_events_duration = {
				[1] = 3.1409583091736,
				[2] = 4.4510416984558
			}
		},
		pwe_elven_ruins_intro_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "wood_elf_elven_ruins",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral"
			},
			localization_strings = {
				[1] = "pwe_elven_ruins_intro_b_01",
				[2] = "pwe_elven_ruins_intro_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwe_elven_ruins_intro_b_01",
				[2] = "pwe_elven_ruins_intro_b_02"
			},
			sound_events_duration = {
				[1] = 5.940354347229,
				[2] = 4.2336249351502
			}
		},
		pwe_elven_ruins_intro_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "wood_elf_elven_ruins",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral"
			},
			localization_strings = {
				[1] = "pwe_elven_ruins_intro_c_01",
				[2] = "pwe_elven_ruins_intro_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwe_elven_ruins_intro_c_01",
				[2] = "pwe_elven_ruins_intro_c_02"
			},
			sound_events_duration = {
				[1] = 3.8464270830154,
				[2] = 4.367666721344
			}
		},
		pwe_level_elven_ruins_big_tree = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwe_level_elven_ruins_big_tree_01",
				"pwe_level_elven_ruins_big_tree_02",
				"pwe_level_elven_ruins_big_tree_03",
				"pwe_level_elven_ruins_big_tree_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_big_tree_01",
				"pwe_level_elven_ruins_big_tree_02",
				"pwe_level_elven_ruins_big_tree_03",
				"pwe_level_elven_ruins_big_tree_04"
			},
			sound_events_duration = {
				4.6173124313355,
				6.9906873703003,
				7.8157291412353,
				5.3315424919128
			}
		},
		pwe_level_elven_ruins_broken_waystone = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_neutral",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pwe_level_elven_ruins_broken_waystone_01",
				"pwe_level_elven_ruins_broken_waystone_02",
				"pwe_level_elven_ruins_broken_waystone_03",
				"pwe_level_elven_ruins_broken_waystone_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_broken_waystone_01",
				"pwe_level_elven_ruins_broken_waystone_02",
				"pwe_level_elven_ruins_broken_waystone_03",
				"pwe_level_elven_ruins_broken_waystone_04"
			},
			sound_events_duration = {
				4.7756772041321,
				2.8505415916443,
				3.5897083282471,
				6.8867917060852
			}
		},
		pwe_level_elven_ruins_clearing = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwe_level_elven_ruins_clearing_01",
				"pwe_level_elven_ruins_clearing_02",
				"pwe_level_elven_ruins_clearing_03",
				"pwe_level_elven_ruins_clearing_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_clearing_01",
				"pwe_level_elven_ruins_clearing_02",
				"pwe_level_elven_ruins_clearing_03",
				"pwe_level_elven_ruins_clearing_04"
			},
			sound_events_duration = {
				7.6038541793823,
				5.9889373779297,
				6.9608540534973,
				6.8286876678467
			}
		},
		pwe_level_elven_ruins_cliff_edge = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_happy",
				"face_contempt",
				"face_contempt",
				"face_neutral"
			},
			localization_strings = {
				"pwe_level_elven_ruins_cliff_edge_01",
				"pwe_level_elven_ruins_cliff_edge_02",
				"pwe_level_elven_ruins_cliff_edge_03",
				"pwe_level_elven_ruins_cliff_edge_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_cliff_edge_01",
				"pwe_level_elven_ruins_cliff_edge_02",
				"pwe_level_elven_ruins_cliff_edge_03",
				"pwe_level_elven_ruins_cliff_edge_04"
			},
			sound_events_duration = {
				3.5180208683014,
				2.6875624656677,
				4.6675102710724,
				3.3533749580383
			}
		},
		pwe_level_elven_ruins_entering_ruins = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwe_level_elven_ruins_entering_ruins_01",
				"pwe_level_elven_ruins_entering_ruins_02",
				"pwe_level_elven_ruins_entering_ruins_03",
				"pwe_level_elven_ruins_entering_ruins_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_entering_ruins_01",
				"pwe_level_elven_ruins_entering_ruins_02",
				"pwe_level_elven_ruins_entering_ruins_03",
				"pwe_level_elven_ruins_entering_ruins_04"
			},
			sound_events_duration = {
				3.2599792480469,
				5.7018542289734,
				5.8772916793823,
				4.0381460189819
			}
		},
		pwe_level_elven_ruins_exit = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwe_level_elven_ruins_exit_01",
				"pwe_level_elven_ruins_exit_02",
				"pwe_level_elven_ruins_exit_03",
				"pwe_level_elven_ruins_exit_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_exit_01",
				"pwe_level_elven_ruins_exit_02",
				"pwe_level_elven_ruins_exit_03",
				"pwe_level_elven_ruins_exit_04"
			},
			sound_events_duration = {
				2.1886562108993,
				2.4056251049042,
				1.8923958539963,
				2.9351665973663
			}
		},
		pwe_level_elven_ruins_first_aligned_pleasant_feeling = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwe_level_elven_ruins_first_aligned_pleasant_feeling_01",
				"pwe_level_elven_ruins_first_aligned_pleasant_feeling_02",
				"pwe_level_elven_ruins_first_aligned_pleasant_feeling_03",
				"pwe_level_elven_ruins_first_aligned_pleasant_feeling_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_first_aligned_pleasant_feeling_01",
				"pwe_level_elven_ruins_first_aligned_pleasant_feeling_02",
				"pwe_level_elven_ruins_first_aligned_pleasant_feeling_03",
				"pwe_level_elven_ruins_first_aligned_pleasant_feeling_04"
			},
			sound_events_duration = {
				4.6101562976837,
				3.6593959331513,
				3.388729095459,
				4.7251873016357
			}
		},
		pwe_level_elven_ruins_great_glade = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwe_level_elven_ruins_great_glade_01",
				"pwe_level_elven_ruins_great_glade_02",
				"pwe_level_elven_ruins_great_glade_03",
				"pwe_level_elven_ruins_great_glade_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_great_glade_01",
				"pwe_level_elven_ruins_great_glade_02",
				"pwe_level_elven_ruins_great_glade_03",
				"pwe_level_elven_ruins_great_glade_04"
			},
			sound_events_duration = {
				4.908625125885,
				4.0461459159851,
				4.3327083587647,
				8.3667707443237
			}
		},
		pwe_level_elven_ruins_maze_approach = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pwe_level_elven_ruins_maze_approach_01",
				"pwe_level_elven_ruins_maze_approach_02",
				"pwe_level_elven_ruins_maze_approach_03",
				"pwe_level_elven_ruins_maze_approach_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_maze_approach_01",
				"pwe_level_elven_ruins_maze_approach_02",
				"pwe_level_elven_ruins_maze_approach_03",
				"pwe_level_elven_ruins_maze_approach_04"
			},
			sound_events_duration = {
				5.6056666374206,
				5.2449584007263,
				5.8045835494995,
				3.1039373874664
			}
		},
		pwe_level_elven_ruins_maze_interior = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pwe_level_elven_ruins_maze_interior_01",
				"pwe_level_elven_ruins_maze_interior_02",
				"pwe_level_elven_ruins_maze_interior_03",
				"pwe_level_elven_ruins_maze_interior_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_maze_interior_01",
				"pwe_level_elven_ruins_maze_interior_02",
				"pwe_level_elven_ruins_maze_interior_03",
				"pwe_level_elven_ruins_maze_interior_04"
			},
			sound_events_duration = {
				2.1049165725708,
				3.495395898819,
				3.2706146240234,
				2.3615417480469
			}
		},
		pwe_level_elven_ruins_noisy_puzzle = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwe_level_elven_ruins_noisy_puzzle_01",
				"pwe_level_elven_ruins_noisy_puzzle_02",
				"pwe_level_elven_ruins_noisy_puzzle_03",
				"pwe_level_elven_ruins_noisy_puzzle_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_noisy_puzzle_01",
				"pwe_level_elven_ruins_noisy_puzzle_02",
				"pwe_level_elven_ruins_noisy_puzzle_03",
				"pwe_level_elven_ruins_noisy_puzzle_04"
			},
			sound_events_duration = {
				2.8166041374206,
				4.8951873779297,
				2.3698749542236,
				2.2693541049957
			}
		},
		pwe_level_elven_ruins_ravine_approach = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwe_level_elven_ruins_ravine_approach_01",
				"pwe_level_elven_ruins_ravine_approach_02",
				"pwe_level_elven_ruins_ravine_approach_03",
				"pwe_level_elven_ruins_ravine_approach_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_ravine_approach_01",
				"pwe_level_elven_ruins_ravine_approach_02",
				"pwe_level_elven_ruins_ravine_approach_03",
				"pwe_level_elven_ruins_ravine_approach_04"
			},
			sound_events_duration = {
				4.0869998931885,
				3.3618021011352,
				5.2165832519531,
				4.2658333778381
			}
		},
		pwe_level_elven_ruins_second_aligned = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwe_level_elven_ruins_second_aligned_01",
				"pwe_level_elven_ruins_second_aligned_02",
				"pwe_level_elven_ruins_second_aligned_03",
				"pwe_level_elven_ruins_second_aligned_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_second_aligned_01",
				"pwe_level_elven_ruins_second_aligned_02",
				"pwe_level_elven_ruins_second_aligned_03",
				"pwe_level_elven_ruins_second_aligned_04"
			},
			sound_events_duration = {
				3.1353125572205,
				2.6021459102631,
				2.6596040725708,
				3.0942499637604
			}
		},
		pwe_level_elven_ruins_seeing_puzzle = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwe_level_elven_ruins_seeing_puzzle_01",
				"pwe_level_elven_ruins_seeing_puzzle_02",
				"pwe_level_elven_ruins_seeing_puzzle_03",
				"pwe_level_elven_ruins_seeing_puzzle_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_seeing_puzzle_01",
				"pwe_level_elven_ruins_seeing_puzzle_02",
				"pwe_level_elven_ruins_seeing_puzzle_03",
				"pwe_level_elven_ruins_seeing_puzzle_04"
			},
			sound_events_duration = {
				2.7052083015442,
				4.2687501907349,
				4.0626459121704,
				3.9306874275208
			}
		},
		pwe_level_elven_ruins_seeing_puzzle_crystals = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwe_level_elven_ruins_seeing_puzzle_crystals_01",
				"pwe_level_elven_ruins_seeing_puzzle_crystals_02",
				"pwe_level_elven_ruins_seeing_puzzle_crystals_03",
				"pwe_level_elven_ruins_seeing_puzzle_crystals_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_seeing_puzzle_crystals_01",
				"pwe_level_elven_ruins_seeing_puzzle_crystals_02",
				"pwe_level_elven_ruins_seeing_puzzle_crystals_03",
				"pwe_level_elven_ruins_seeing_puzzle_crystals_04"
			},
			sound_events_duration = {
				2.2723333835602,
				3.9061665534973,
				3.6220624446869,
				5.3328123092651
			}
		},
		pwe_level_elven_ruins_shattered_temple = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwe_level_elven_ruins_shattered_temple_01",
				"pwe_level_elven_ruins_shattered_temple_02",
				"pwe_level_elven_ruins_shattered_temple_03",
				"pwe_level_elven_ruins_shattered_temple_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_shattered_temple_01",
				"pwe_level_elven_ruins_shattered_temple_02",
				"pwe_level_elven_ruins_shattered_temple_03",
				"pwe_level_elven_ruins_shattered_temple_04"
			},
			sound_events_duration = {
				5.5849375724792,
				5.2161145210266,
				3.5611040592194,
				4.5556874275208
			}
		},
		pwe_level_elven_ruins_skaven_banners = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwe_level_elven_ruins_skaven_banners_01",
				"pwe_level_elven_ruins_skaven_banners_02",
				"pwe_level_elven_ruins_skaven_banners_03",
				"pwe_level_elven_ruins_skaven_banners_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_skaven_banners_01",
				"pwe_level_elven_ruins_skaven_banners_02",
				"pwe_level_elven_ruins_skaven_banners_03",
				"pwe_level_elven_ruins_skaven_banners_04"
			},
			sound_events_duration = {
				2.7958750724792,
				4.312958240509,
				4.5076251029968,
				2.7218332290649
			}
		},
		pwe_level_elven_ruins_task_complete = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwe_level_elven_ruins_task_complete_01",
				"pwe_level_elven_ruins_task_complete_02",
				"pwe_level_elven_ruins_task_complete_03",
				"pwe_level_elven_ruins_task_complete_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_task_complete_01",
				"pwe_level_elven_ruins_task_complete_02",
				"pwe_level_elven_ruins_task_complete_03",
				"pwe_level_elven_ruins_task_complete_04"
			},
			sound_events_duration = {
				3.7635624408722,
				2.8215625286102,
				3.9272708892822,
				4.8551874160767
			}
		},
		pwe_level_elven_ruins_untouched = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_elven_ruins",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwe_level_elven_ruins_untouched_01",
				"pwe_level_elven_ruins_untouched_02",
				"pwe_level_elven_ruins_untouched_03",
				"pwe_level_elven_ruins_untouched_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_level_elven_ruins_untouched_01",
				"pwe_level_elven_ruins_untouched_02",
				"pwe_level_elven_ruins_untouched_03",
				"pwe_level_elven_ruins_untouched_04"
			},
			sound_events_duration = {
				6.0912709236145,
				3.4207291603088,
				6.5170001983643,
				4.6549372673035
			}
		}
	})
end
