return function ()
	define_rule({
		name = "egt_spawning_gutter_runner",
		response = "egt_spawning_gutter_runner",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_spawning_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning_gutter_runner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_taunting_bardin",
		response = "egt_taunting_bardin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_taunting_bardin",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_taunting_kerillian",
		response = "egt_taunting_kerillian",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_taunting_kerillian",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_kerillian",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_taunting_kruber",
		response = "egt_taunting_kruber",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_taunting_kruber",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_kruber",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_taunting_saltzpyre",
		response = "egt_taunting_saltzpyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_taunting_saltzpyre",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_saltzpyre",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_taunting_sienna",
		response = "egt_taunting_sienna",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_taunting_sienna",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_affirmative",
		response = "egt_vw_affirmative",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_affirmative"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_gutter_runner_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_gutter_runner_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_ambush",
		response = "egt_vw_ambush",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_ambush"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_gutter_runner_vw_ambush",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_gutter_runner_vw_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_attack_now",
		response = "egt_vw_attack_now",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_attack_now"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_gutter_runner_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_gutter_runner_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_cover_me",
		response = "egt_vw_cover_me",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_cover_me"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_gutter_runner_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_gutter_runner_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_gather",
		response = "egt_vw_gather",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_gather"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_gutter_runner_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_gutter_runner_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_go_here",
		response = "egt_vw_go_here",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_go_here"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_gutter_runner_vw_go_here",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_gutter_runner_vw_go_here",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_negation",
		response = "egt_vw_negation",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_negation"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_gutter_runner_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_gutter_runner_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_thanks",
		response = "egt_vw_thanks",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_thank_you"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_gutter_runner_vw_thanks",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_gutter_runner_vw_thanks",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_wait",
		response = "egt_vw_wait",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_wait"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_gutter_runner_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_gutter_runner_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_spawning_globadier",
		response = "epg_spawning_globadier",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_spawning_globadier",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning_globadier",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_taunting_bardin",
		response = "epg_taunting_bardin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_taunting_bardin",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_taunting_kerillian",
		response = "epg_taunting_kerillian",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_taunting_kerillian",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_kerillian",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_taunting_kruber",
		response = "epg_taunting_kruber",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_taunting_kruber",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_kruber",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_taunting_saltzpyre",
		response = "epg_taunting_saltzpyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_taunting_saltzpyre",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_saltzpyre",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_taunting_sienna",
		response = "epg_taunting_sienna",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_taunting_sienna",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_versus_throwing_globe",
		response = "epg_versus_throwing_globe",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_throwing_globe"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"last_threw_globe",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"user_memory",
				"last_threw_globe",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_affirmative",
		response = "epg_vw_affirmative",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_affirmative"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_globadier_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_globadier_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_ambush",
		response = "epg_vw_ambush",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_ambush"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_globadier_vw_ambush",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_globadier_vw_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_attack_now",
		response = "epg_vw_attack_now",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_attack_now"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_globadier_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_globadier_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_cover_me",
		response = "epg_vw_cover_me",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_cover_me"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_globadier_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_globadier_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_gather",
		response = "epg_vw_gather",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_gather"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_globadier_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_globadier_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_go_here",
		response = "epg_vw_go_here",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_go_here"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_globadier_vw_go_here",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_globadier_vw_go_here",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_negation",
		response = "epg_vw_negation",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_negation"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_globadier_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_globadier_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_thanks",
		response = "epg_vw_thanks",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_thank_you"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_poison_wind_globadier_vw_thanks",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_poison_wind_globadier_vw_thanks",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_wait",
		response = "epg_vw_wait",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_wait"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_globadier_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_globadier_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_packmaster_grab_walk",
		response = "epm_packmaster_grab_walk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"walking"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_grab_walk",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_grab_walk",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_packmaster_hook_fail",
		response = "epm_packmaster_hook_fail",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"hook_fail"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_hook_fail",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_hook_fail",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_packmaster_hook_success",
		response = "epm_packmaster_hook_success",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"hook_success"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_hook_success",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_hook_success",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_packmaster_skulking",
		response = "epm_packmaster_skulking",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"skulking"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_skulking",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_skulking",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_spawning_packmaster",
		response = "epm_spawning_packmaster",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_spawning_packmaster",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning_packmaster",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_taunting_bardin",
		response = "epm_taunting_bardin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_taunting_bardin",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_taunting_kerillian",
		response = "epm_taunting_kerillian",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_taunting_kerillian",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_kerillian",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_taunting_kruber",
		response = "epm_taunting_kruber",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_taunting_kruber",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_kruber",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_taunting_saltzpyre",
		response = "epm_taunting_saltzpyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_taunting_saltzpyre",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_saltzpyre",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_taunting_sienna",
		response = "epm_taunting_sienna",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_taunting_sienna",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_affirmative",
		response = "epm_vw_affirmative",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_affirmative"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_packmaster_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_packmaster_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_ambush",
		response = "epm_vw_ambush",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_ambush"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_packmaster_vw_ambush",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_packmaster_vw_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_attack_now",
		response = "epm_vw_attack_now",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_attack_now"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_packmaster_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_packmaster_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_cover_me",
		response = "epm_vw_cover_me",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_cover_me"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_packmaster_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_packmaster_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_gather",
		response = "epm_vw_gather",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_gather"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_packmaster_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_packmaster_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_go_here",
		response = "epm_vw_go_here",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_go_here"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_packmaster_vw_go_here",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_packmaster_vw_go_here",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_negation",
		response = "epm_vw_negation",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_negation"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_packmaster_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_packmaster_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_thanks",
		response = "epm_vw_thanks",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_thank_you"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_packmaster_vw_thanks",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_packmaster_vw_thanks",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_wait",
		response = "epm_vw_wait",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_wait"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_packmaster_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_packmaster_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_spawning_ratling_gunner",
		response = "erg_spawning_ratling_gunner",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_spawning_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning_ratling_gunner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_taunting_bardin",
		response = "erg_taunting_bardin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_taunting_bardin",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_taunting_kerillian",
		response = "erg_taunting_kerillian",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_taunting_kerillian",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_kerillian",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_taunting_kruber",
		response = "erg_taunting_kruber",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_taunting_kruber",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_kruber",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_taunting_saltzpyre",
		response = "erg_taunting_saltzpyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_taunting_saltzpyre",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_saltzpyre",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_taunting_sienna",
		response = "erg_taunting_sienna",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_taunting_sienna",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_affirmative",
		response = "erg_vw_affirmative",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_affirmative"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_ratling_gunner_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_ratling_gunner_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_ambush",
		response = "erg_vw_ambush",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_ambush"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_ratling_gunner_vw_ambush",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_ratling_gunner_vw_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_attack_now",
		response = "erg_vw_attack_now",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_attack_now"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_ratling_gunner_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_ratling_gunner_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_cover_me",
		response = "erg_vw_cover_me",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_cover_me"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_ratling_gunner_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_ratling_gunner_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_gather",
		response = "erg_vw_gather",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_gather"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_ratling_gunner_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_ratling_gunner_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_go_here",
		response = "erg_vw_go_here",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_go_here"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_ratling_gunner_vw_go_here",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_ratling_gunner_vw_go_here",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_negation",
		response = "erg_vw_negation",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_negation"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_ratling_gunner_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_ratling_gunner_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_thanks",
		response = "erg_vw_thanks",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_thank_you"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_ratling_gunner_vw_thanks",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_ratling_gunner_vw_thanks",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_wait",
		response = "erg_vw_wait",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_wait"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_ratling_gunner_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_ratling_gunner_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_spawning_warpfire_thrower",
		response = "ewt_spawning_warpfire_thrower",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_spawning_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning_warpfire_thrower",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_taunting_bardin",
		response = "ewt_taunting_bardin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_taunting_bardin",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_taunting_kerillian",
		response = "ewt_taunting_kerillian",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_taunting_kerillian",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_kerillian",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_taunting_kruber",
		response = "ewt_taunting_kruber",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_taunting_kruber",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_kruber",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_taunting_saltzpyre",
		response = "ewt_taunting_saltzpyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_taunting_saltzpyre",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_saltzpyre",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_taunting_sienna",
		response = "ewt_taunting_sienna",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunting"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_taunting_sienna",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_affirmative",
		response = "ewt_vw_affirmative",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_affirmative"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_ambush",
		response = "ewt_vw_ambush",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_ambush"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_ambush",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_attack_now",
		response = "ewt_vw_attack_now",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_attack_now"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_cover_me",
		response = "ewt_vw_cover_me",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_cover_me"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_gather",
		response = "ewt_vw_gather",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_gather"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_go_here",
		response = "ewt_vw_go_here",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_go_here"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_go_here",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_go_here",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_negation",
		response = "ewt_vw_negation",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_negation"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_thanks",
		response = "ewt_vw_thanks",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_thank_you"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_thanks",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_thanks",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_wait",
		response = "ewt_vw_wait",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_wait"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_warpfire_thrower_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_walking",
		response = "ewt_walking",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"walking"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_walk_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_walk_warpfire_thrower",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		egt_spawning_gutter_runner = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "pactsworn_player_vo",
			sound_events_n = 5,
			category = "player_alerts",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_spawning_gutter_runner_01",
				"egt_spawning_gutter_runner_02",
				"egt_spawning_gutter_runner_03",
				"egt_spawning_gutter_runner_04",
				"egt_spawning_gutter_runner_05"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_spawning_gutter_runner_01",
				"egt_spawning_gutter_runner_02",
				"egt_spawning_gutter_runner_03",
				"egt_spawning_gutter_runner_04",
				"egt_spawning_gutter_runner_05"
			},
			sound_events_duration = {
				3.6960201263428,
				3.8597495555878,
				3.5872640609741,
				3.0923001766205,
				2.9253997802734
			}
		},
		egt_taunting_bardin = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_taunting_bardin_01",
				"egt_taunting_bardin_02",
				"egt_taunting_bardin_03",
				"egt_taunting_bardin_04",
				"egt_taunting_bardin_05",
				"egt_taunting_bardin_06",
				"egt_taunting_bardin_07",
				"egt_taunting_bardin_08",
				"egt_taunting_bardin_09",
				"egt_taunting_bardin_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_taunting_bardin_01",
				"egt_taunting_bardin_02",
				"egt_taunting_bardin_03",
				"egt_taunting_bardin_04",
				"egt_taunting_bardin_05",
				"egt_taunting_bardin_06",
				"egt_taunting_bardin_07",
				"egt_taunting_bardin_08",
				"egt_taunting_bardin_09",
				"egt_taunting_bardin_10"
			},
			sound_events_duration = {
				3.1533441543579,
				2.8094174861908,
				3.9942402839661,
				3.7840163707733,
				3.9690136909485,
				3.3635683059692,
				1.9222718477249,
				1.9987932443619,
				1.2192822694778,
				1.9424532651901
			}
		},
		egt_taunting_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_taunting_kerillian_01",
				"egt_taunting_kerillian_02",
				"egt_taunting_kerillian_03",
				"egt_taunting_kerillian_04",
				"egt_taunting_kerillian_05",
				"egt_taunting_kerillian_06",
				"egt_taunting_kerillian_07",
				"egt_taunting_kerillian_08",
				"egt_taunting_kerillian_09",
				"egt_taunting_kerillian_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_taunting_kerillian_01",
				"egt_taunting_kerillian_02",
				"egt_taunting_kerillian_03",
				"egt_taunting_kerillian_04",
				"egt_taunting_kerillian_05",
				"egt_taunting_kerillian_06",
				"egt_taunting_kerillian_07",
				"egt_taunting_kerillian_08",
				"egt_taunting_kerillian_09",
				"egt_taunting_kerillian_10"
			},
			sound_events_duration = {
				3.4409306049347,
				3.1533441543579,
				3.3635683059692,
				1.8861130475998,
				2.557989358902,
				3.1617531776428,
				1.79445540905,
				1.6388895511627,
				2.1022236347199,
				1.7389562129974
			}
		},
		egt_taunting_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_taunting_kruber_01",
				"egt_taunting_kruber_02",
				"egt_taunting_kruber_03",
				"egt_taunting_kruber_04",
				"egt_taunting_kruber_05",
				"egt_taunting_kruber_06",
				"egt_taunting_kruber_07",
				"egt_taunting_kruber_08",
				"egt_taunting_kruber_09",
				"egt_taunting_kruber_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_taunting_kruber_01",
				"egt_taunting_kruber_02",
				"egt_taunting_kruber_03",
				"egt_taunting_kruber_04",
				"egt_taunting_kruber_05",
				"egt_taunting_kruber_06",
				"egt_taunting_kruber_07",
				"egt_taunting_kruber_08",
				"egt_taunting_kruber_09",
				"egt_taunting_kruber_10"
			},
			sound_events_duration = {
				2.8186674118042,
				3.0448684692383,
				3.2265019416809,
				3.106253862381,
				3.0305731296539,
				2.4755816459656,
				2.2678802013397,
				1.8903176784515,
				2.0997009277344,
				2.2283580303192
			}
		},
		egt_taunting_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "pactsworn_player_vo",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_taunting_saltzpyre_01",
				"egt_taunting_saltzpyre_02",
				"egt_taunting_saltzpyre_03",
				"egt_taunting_saltzpyre_04",
				"egt_taunting_saltzpyre_05",
				"egt_taunting_saltzpyre_06",
				"egt_taunting_saltzpyre_07",
				"egt_taunting_saltzpyre_09",
				"egt_taunting_saltzpyre_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_taunting_saltzpyre_01",
				"egt_taunting_saltzpyre_02",
				"egt_taunting_saltzpyre_03",
				"egt_taunting_saltzpyre_04",
				"egt_taunting_saltzpyre_05",
				"egt_taunting_saltzpyre_06",
				"egt_taunting_saltzpyre_07",
				"egt_taunting_saltzpyre_09",
				"egt_taunting_saltzpyre_10"
			},
			sound_events_duration = {
				2.1022236347199,
				3.573792219162,
				3.2525696754456,
				2.873325586319,
				3.0364594459534,
				2.1434276103973,
				1.6817753314972,
				1.3370077610016,
				1.6464576721191
			}
		},
		egt_taunting_sienna = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_taunting_sienna_01",
				"egt_taunting_sienna_02",
				"egt_taunting_sienna_03",
				"egt_taunting_sienna_04",
				"egt_taunting_sienna_05",
				"egt_taunting_sienna_06",
				"egt_taunting_sienna_07",
				"egt_taunting_sienna_08",
				"egt_taunting_sienna_09",
				"egt_taunting_sienna_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_taunting_sienna_01",
				"egt_taunting_sienna_02",
				"egt_taunting_sienna_03",
				"egt_taunting_sienna_04",
				"egt_taunting_sienna_05",
				"egt_taunting_sienna_06",
				"egt_taunting_sienna_07",
				"egt_taunting_sienna_08",
				"egt_taunting_sienna_09",
				"egt_taunting_sienna_10"
			},
			sound_events_duration = {
				1.5463910102844,
				2.171177148819,
				2.9717104434967,
				2.5075356960297,
				1.5304139852524,
				2.6900100708008,
				1.3504621982575,
				1.7549333572388,
				1.4379153251648,
				2.1568818092346
			}
		},
		egt_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_affirmative_01",
				"egt_vw_affirmative_02",
				"egt_vw_affirmative_03",
				"egt_vw_affirmative_04",
				"egt_vw_affirmative_05",
				"egt_vw_affirmative_06",
				"egt_vw_affirmative_07",
				"egt_vw_affirmative_08",
				"egt_vw_affirmative_09",
				"egt_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_affirmative_01",
				"egt_vw_affirmative_02",
				"egt_vw_affirmative_03",
				"egt_vw_affirmative_04",
				"egt_vw_affirmative_05",
				"egt_vw_affirmative_06",
				"egt_vw_affirmative_07",
				"egt_vw_affirmative_08",
				"egt_vw_affirmative_09",
				"egt_vw_affirmative_10"
			},
			sound_events_duration = {
				0.74838030338287,
				1.2150954008102,
				0.8476060628891,
				1.585089802742,
				2.4688544273377,
				1.8810678720474,
				2.8388488292694,
				3.7486987113953,
				1.4068021774292,
				1.892840385437
			}
		},
		egt_vw_ambush = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_ambush_01",
				"egt_vw_ambush_02",
				"egt_vw_ambush_03",
				"egt_vw_ambush_04",
				"egt_vw_ambush_05",
				"egt_vw_ambush_06",
				"egt_vw_ambush_07",
				"egt_vw_ambush_08",
				"egt_vw_ambush_09",
				"egt_vw_ambush_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_ambush_01",
				"egt_vw_ambush_02",
				"egt_vw_ambush_03",
				"egt_vw_ambush_04",
				"egt_vw_ambush_05",
				"egt_vw_ambush_06",
				"egt_vw_ambush_07",
				"egt_vw_ambush_08",
				"egt_vw_ambush_09",
				"egt_vw_ambush_10"
			},
			sound_events_duration = {
				0.6129959821701,
				1.3100991249084,
				1.0511029958725,
				1.1158519983292,
				1.0788525342941,
				0.78874331712723,
				1.7263429164886,
				2.2233126163483,
				2.554625749588,
				1.4227792024612
			}
		},
		egt_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_attack_now_01",
				"egt_vw_attack_now_02",
				"egt_vw_attack_now_03",
				"egt_vw_attack_now_04",
				"egt_vw_attack_now_05",
				"egt_vw_attack_now_06",
				"egt_vw_attack_now_07",
				"egt_vw_attack_now_08",
				"egt_vw_attack_now_09",
				"egt_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_attack_now_01",
				"egt_vw_attack_now_02",
				"egt_vw_attack_now_03",
				"egt_vw_attack_now_04",
				"egt_vw_attack_now_05",
				"egt_vw_attack_now_06",
				"egt_vw_attack_now_07",
				"egt_vw_attack_now_08",
				"egt_vw_attack_now_09",
				"egt_vw_attack_now_10"
			},
			sound_events_duration = {
				1.2268503904343,
				1.8188414573669,
				2.0610196590424,
				2.5226719379425,
				1.4740738868713,
				1.1864873170853,
				1.9575892686844,
				1.8482729196549,
				2.4310140609741,
				2.9229383468628
			}
		},
		egt_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_cover_me_01",
				"egt_vw_cover_me_02",
				"egt_vw_cover_me_03",
				"egt_vw_cover_me_04",
				"egt_vw_cover_me_05",
				"egt_vw_cover_me_06",
				"egt_vw_cover_me_07",
				"egt_vw_cover_me_08",
				"egt_vw_cover_me_09",
				"egt_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_cover_me_01",
				"egt_vw_cover_me_02",
				"egt_vw_cover_me_03",
				"egt_vw_cover_me_04",
				"egt_vw_cover_me_05",
				"egt_vw_cover_me_06",
				"egt_vw_cover_me_07",
				"egt_vw_cover_me_08",
				"egt_vw_cover_me_09",
				"egt_vw_cover_me_10"
			},
			sound_events_duration = {
				1.2773041725159,
				2.7505548000336,
				1.9289988279343,
				1.3706436157227,
				1.2613271474838,
				1.111647605896,
				1.5186413526535,
				1.9231126308441,
				2.4360594749451,
				1.9474986791611
			}
		},
		egt_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_gather_01",
				"egt_vw_gather_02",
				"egt_vw_gather_03",
				"egt_vw_gather_04",
				"egt_vw_gather_05",
				"egt_vw_gather_06",
				"egt_vw_gather_07",
				"egt_vw_gather_08",
				"egt_vw_gather_09",
				"egt_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_gather_01",
				"egt_vw_gather_02",
				"egt_vw_gather_03",
				"egt_vw_gather_04",
				"egt_vw_gather_05",
				"egt_vw_gather_06",
				"egt_vw_gather_07",
				"egt_vw_gather_08",
				"egt_vw_gather_09",
				"egt_vw_gather_10"
			},
			sound_events_duration = {
				1.2806676626205,
				0.8728329539299,
				1.347939491272,
				2.1795861721039,
				0.90900903940201,
				0.75006210803986,
				1.1217383146286,
				1.111647605896,
				1.4421198368073,
				3.1112992763519
			}
		},
		egt_vw_go_here = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_go_here_01",
				"egt_vw_go_here_02",
				"egt_vw_go_here_03",
				"egt_vw_go_here_04",
				"egt_vw_go_here_05",
				"egt_vw_go_here_06",
				"egt_vw_go_here_07",
				"egt_vw_go_here_08",
				"egt_vw_go_here_09",
				"egt_vw_go_here_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_go_here_01",
				"egt_vw_go_here_02",
				"egt_vw_go_here_03",
				"egt_vw_go_here_04",
				"egt_vw_go_here_05",
				"egt_vw_go_here_06",
				"egt_vw_go_here_07",
				"egt_vw_go_here_08",
				"egt_vw_go_here_09",
				"egt_vw_go_here_10"
			},
			sound_events_duration = {
				1.6607091426849,
				1.5321921110153,
				0.99931782484055,
				1.46342253685,
				1.5554393529892,
				1.6259783506393,
				1.6233417987824,
				0.95869201421738,
				1.6552257537842,
				1.9720947742462
			}
		},
		egt_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 11,
			database = "pactsworn_player_vo",
			sound_events_n = 11,
			category = "player_alerts",
			dialogue_animations_n = 11,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_negation_01",
				"egt_vw_negation_02",
				"egt_vw_negation_03",
				"egt_vw_negation_04",
				"egt_vw_negation_05",
				"egt_vw_negation_06",
				"egt_vw_negation_07",
				"egt_vw_negation_08",
				"egt_vw_negation_09",
				"egt_vw_negation_10",
				"egt_vw_negation_11"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_negation_01",
				"egt_vw_negation_02",
				"egt_vw_negation_03",
				"egt_vw_negation_04",
				"egt_vw_negation_05",
				"egt_vw_negation_06",
				"egt_vw_negation_07",
				"egt_vw_negation_08",
				"egt_vw_negation_09",
				"egt_vw_negation_10",
				"egt_vw_negation_11"
			},
			sound_events_duration = {
				0.48771992325783,
				0.66008615493774,
				0.86274218559265,
				1.2285321950913,
				1.4093248844147,
				1.3050537109375,
				1.4765965938568,
				0.76351648569107,
				3.2180931568146,
				1.1713511943817,
				1.8667724132538
			}
		},
		egt_vw_thanks = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_thanks_01",
				"egt_vw_thanks_02",
				"egt_vw_thanks_03",
				"egt_vw_thanks_04",
				"egt_vw_thanks_05",
				"egt_vw_thanks_06",
				"egt_vw_thanks_07",
				"egt_vw_thanks_08",
				"egt_vw_thanks_09",
				"egt_vw_thanks_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_thanks_01",
				"egt_vw_thanks_02",
				"egt_vw_thanks_03",
				"egt_vw_thanks_04",
				"egt_vw_thanks_05",
				"egt_vw_thanks_06",
				"egt_vw_thanks_07",
				"egt_vw_thanks_08",
				"egt_vw_thanks_09",
				"egt_vw_thanks_10"
			},
			sound_events_duration = {
				0.70997935533524,
				1.6032565832138,
				1.5384550094605,
				2.1761348247528,
				1.3873740434647,
				0.90780031681061,
				0.7396559715271,
				1.1354904174805,
				1.6641340255737,
				2.09721326828
			}
		},
		egt_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 11,
			database = "pactsworn_player_vo",
			sound_events_n = 11,
			category = "player_alerts",
			dialogue_animations_n = 11,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_wait_01",
				"egt_vw_wait_02",
				"egt_vw_wait_03",
				"egt_vw_wait_04",
				"egt_vw_wait_05",
				"egt_vw_wait_06",
				"egt_vw_wait_07",
				"egt_vw_wait_08",
				"egt_vw_wait_09",
				"egt_vw_wait_10",
				"egt_vw_wait_11"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_wait_01",
				"egt_vw_wait_02",
				"egt_vw_wait_03",
				"egt_vw_wait_04",
				"egt_vw_wait_05",
				"egt_vw_wait_06",
				"egt_vw_wait_07",
				"egt_vw_wait_08",
				"egt_vw_wait_09",
				"egt_vw_wait_10",
				"egt_vw_wait_11"
			},
			sound_events_duration = {
				2.4562411308289,
				1.4816420078278,
				1.4883691072464,
				1.1738739013672,
				1.5270503759384,
				2.0391564369202,
				4.2868723869324,
				1.7969781160355,
				2.3040387630463,
				2.5874207019806,
				3.5384745597839
			}
		},
		epg_spawning_globadier = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "pactsworn_player_vo",
			sound_events_n = 5,
			category = "player_alerts",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_spawning_globadier_01",
				"epg_spawning_globadier_02",
				"epg_spawning_globadier_03",
				"epg_spawning_globadier_04",
				"epg_spawning_globadier_05"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_spawning_globadier_01",
				"epg_spawning_globadier_02",
				"epg_spawning_globadier_03",
				"epg_spawning_globadier_04",
				"epg_spawning_globadier_05"
			},
			sound_events_duration = {
				4.0289790630341,
				3.9064791202545,
				3.0499792098999,
				3.2234791517258,
				4.8373522758484
			}
		},
		epg_taunting_bardin = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "pactsworn_player_vo",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_taunting_bardin_01",
				"epg_taunting_bardin_02",
				"epg_taunting_bardin_03",
				"epg_taunting_bardin_04",
				"epg_taunting_bardin_05",
				"epg_taunting_bardin_06",
				"epg_taunting_bardin_07",
				"epg_taunting_bardin_09",
				"epg_taunting_bardin_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_taunting_bardin_01",
				"epg_taunting_bardin_02",
				"epg_taunting_bardin_03",
				"epg_taunting_bardin_04",
				"epg_taunting_bardin_05",
				"epg_taunting_bardin_06",
				"epg_taunting_bardin_07",
				"epg_taunting_bardin_09",
				"epg_taunting_bardin_10"
			},
			sound_events_duration = {
				1.7489792108536,
				2.5139791965485,
				2.9979791641235,
				2.2329790592194,
				1.852979183197,
				1.8509792089462,
				1.3309791088104,
				1.5809791088104,
				1.6419792175293
			}
		},
		epg_taunting_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_taunting_kerillian_01",
				"epg_taunting_kerillian_02",
				"epg_taunting_kerillian_03",
				"epg_taunting_kerillian_04",
				"epg_taunting_kerillian_05",
				"epg_taunting_kerillian_06",
				"epg_taunting_kerillian_07",
				"epg_taunting_kerillian_08",
				"epg_taunting_kerillian_09",
				"epg_taunting_kerillian_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_taunting_kerillian_01",
				"epg_taunting_kerillian_02",
				"epg_taunting_kerillian_03",
				"epg_taunting_kerillian_04",
				"epg_taunting_kerillian_05",
				"epg_taunting_kerillian_06",
				"epg_taunting_kerillian_07",
				"epg_taunting_kerillian_08",
				"epg_taunting_kerillian_09",
				"epg_taunting_kerillian_10"
			},
			sound_events_duration = {
				2.7269792556763,
				2.5399792194366,
				3.7399792671204,
				2.198979139328,
				2.8489999771118,
				2.7039792537689,
				1.3649791479111,
				1.4309791326523,
				1.4709792137146,
				1.686979174614
			}
		},
		epg_taunting_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_taunting_kruber_01",
				"epg_taunting_kruber_02",
				"epg_taunting_kruber_03",
				"epg_taunting_kruber_04",
				"epg_taunting_kruber_05",
				"epg_taunting_kruber_06",
				"epg_taunting_kruber_07",
				"epg_taunting_kruber_08",
				"epg_taunting_kruber_09",
				"epg_taunting_kruber_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_taunting_kruber_01",
				"epg_taunting_kruber_02",
				"epg_taunting_kruber_03",
				"epg_taunting_kruber_04",
				"epg_taunting_kruber_05",
				"epg_taunting_kruber_06",
				"epg_taunting_kruber_07",
				"epg_taunting_kruber_08",
				"epg_taunting_kruber_09",
				"epg_taunting_kruber_10"
			},
			sound_events_duration = {
				2.9039790630341,
				2.1539790630341,
				2.2669792175293,
				2.716979265213,
				3.6929790973663,
				3.0119791030884,
				1.5579792261124,
				1.7400000095367,
				3.0309791564941,
				2.716979265213
			}
		},
		epg_taunting_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_taunting_saltzpyre_01",
				"epg_taunting_saltzpyre_02",
				"epg_taunting_saltzpyre_03",
				"epg_taunting_saltzpyre_04",
				"epg_taunting_saltzpyre_05",
				"epg_taunting_saltzpyre_06",
				"epg_taunting_saltzpyre_07",
				"epg_taunting_saltzpyre_08",
				"epg_taunting_saltzpyre_09",
				"epg_taunting_saltzpyre_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_taunting_saltzpyre_01",
				"epg_taunting_saltzpyre_02",
				"epg_taunting_saltzpyre_03",
				"epg_taunting_saltzpyre_04",
				"epg_taunting_saltzpyre_05",
				"epg_taunting_saltzpyre_06",
				"epg_taunting_saltzpyre_07",
				"epg_taunting_saltzpyre_08",
				"epg_taunting_saltzpyre_09",
				"epg_taunting_saltzpyre_10"
			},
			sound_events_duration = {
				2.283979177475,
				3.8999791145325,
				2.7109792232513,
				2.3259792327881,
				2.1829791069031,
				2.3159792423248,
				1.3739792108536,
				2.493979215622,
				1.4800000190735,
				3.0719792842865
			}
		},
		epg_taunting_sienna = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_taunting_sienna_01",
				"epg_taunting_sienna_02",
				"epg_taunting_sienna_03",
				"epg_taunting_sienna_04",
				"epg_taunting_sienna_05",
				"epg_taunting_sienna_06",
				"epg_taunting_sienna_07",
				"epg_taunting_sienna_08",
				"epg_taunting_sienna_09",
				"epg_taunting_sienna_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_taunting_sienna_01",
				"epg_taunting_sienna_02",
				"epg_taunting_sienna_03",
				"epg_taunting_sienna_04",
				"epg_taunting_sienna_05",
				"epg_taunting_sienna_06",
				"epg_taunting_sienna_07",
				"epg_taunting_sienna_08",
				"epg_taunting_sienna_09",
				"epg_taunting_sienna_10"
			},
			sound_events_duration = {
				1.8579791784286,
				2.4369790554047,
				2.8409790992737,
				3.0579791069031,
				2.1919791698456,
				1.9049791097641,
				1.4689999818802,
				1.7589999437332,
				1.6349791288376,
				1.7489792108536
			}
		},
		epg_versus_throwing_globe = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "pactsworn_player_vo",
			sound_events_n = 8,
			category = "player_feedback",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_versus_throwing_globe_01",
				"epg_versus_throwing_globe_02",
				"epg_versus_throwing_globe_03",
				"epg_versus_throwing_globe_05",
				"epg_versus_throwing_globe_06",
				"epg_versus_throwing_globe_08",
				"epg_versus_throwing_globe_09",
				"epg_versus_throwing_globe_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_versus_throwing_globe_01",
				"epg_versus_throwing_globe_02",
				"epg_versus_throwing_globe_03",
				"epg_versus_throwing_globe_05",
				"epg_versus_throwing_globe_06",
				"epg_versus_throwing_globe_08",
				"epg_versus_throwing_globe_09",
				"epg_versus_throwing_globe_10"
			},
			sound_events_duration = {
				1.5894895792007,
				1.6729791760445,
				1.6929792165756,
				1.5524791479111,
				1.8364791870117,
				1.1564791202545,
				1.7709791064262,
				1.6454792022705
			}
		},
		epg_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_affirmative_01",
				"epg_vw_affirmative_02",
				"epg_vw_affirmative_03",
				"epg_vw_affirmative_04",
				"epg_vw_affirmative_05",
				"epg_vw_affirmative_06",
				"epg_vw_affirmative_07",
				"epg_vw_affirmative_08",
				"epg_vw_affirmative_09",
				"epg_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_affirmative_01",
				"epg_vw_affirmative_02",
				"epg_vw_affirmative_03",
				"epg_vw_affirmative_04",
				"epg_vw_affirmative_05",
				"epg_vw_affirmative_06",
				"epg_vw_affirmative_07",
				"epg_vw_affirmative_08",
				"epg_vw_affirmative_09",
				"epg_vw_affirmative_10"
			},
			sound_events_duration = {
				0.60197919607162,
				0.73497915267944,
				0.60997915267944,
				1.8939791917801,
				1.8489999771118,
				0.77697914838791,
				2.0639791488648,
				2.3164596557617,
				0.99299997091293,
				1.4079791307449
			}
		},
		epg_vw_ambush = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "pactsworn_player_vo",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_ambush_01",
				"epg_vw_ambush_02",
				"epg_vw_ambush_03",
				"epg_vw_ambush_04",
				"epg_vw_ambush_05",
				"epg_vw_ambush_06",
				"epg_vw_ambush_08",
				"epg_vw_ambush_09",
				"epg_vw_ambush_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_ambush_01",
				"epg_vw_ambush_02",
				"epg_vw_ambush_03",
				"epg_vw_ambush_04",
				"epg_vw_ambush_05",
				"epg_vw_ambush_06",
				"epg_vw_ambush_08",
				"epg_vw_ambush_09",
				"epg_vw_ambush_10"
			},
			sound_events_duration = {
				1.6899791955948,
				1.680999994278,
				2.109375,
				1.6139999628067,
				1.3339999914169,
				2.9916851520538,
				2.772979259491,
				3.7319791316986,
				1.2809791564941
			}
		},
		epg_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_attack_now_01",
				"epg_vw_attack_now_02",
				"epg_vw_attack_now_03",
				"epg_vw_attack_now_04",
				"epg_vw_attack_now_05",
				"epg_vw_attack_now_06",
				"epg_vw_attack_now_07",
				"epg_vw_attack_now_08",
				"epg_vw_attack_now_09",
				"epg_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_attack_now_01",
				"epg_vw_attack_now_02",
				"epg_vw_attack_now_03",
				"epg_vw_attack_now_04",
				"epg_vw_attack_now_05",
				"epg_vw_attack_now_06",
				"epg_vw_attack_now_07",
				"epg_vw_attack_now_08",
				"epg_vw_attack_now_09",
				"epg_vw_attack_now_10"
			},
			sound_events_duration = {
				1.1000000238419,
				1.5879791975021,
				1.5930000543594,
				1.7299791574478,
				0.63997918367386,
				1.0740000009537,
				1.9179999828339,
				1.7699999809265,
				2.5539999008179,
				3.3880000114441
			}
		},
		epg_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "pactsworn_player_vo",
			sound_events_n = 6,
			category = "player_alerts",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_cover_me_01",
				"epg_vw_cover_me_04",
				"epg_vw_cover_me_06",
				"epg_vw_cover_me_08",
				"epg_vw_cover_me_09",
				"epg_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_cover_me_01",
				"epg_vw_cover_me_04",
				"epg_vw_cover_me_06",
				"epg_vw_cover_me_08",
				"epg_vw_cover_me_09",
				"epg_vw_cover_me_10"
			},
			sound_events_duration = {
				0.63397914171219,
				0.95800000429153,
				0.68699997663498,
				1.5835760831833,
				1.6109791994095,
				1.7410000562668
			}
		},
		epg_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "pactsworn_player_vo",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_gather_01",
				"epg_vw_gather_02",
				"epg_vw_gather_03",
				"epg_vw_gather_04",
				"epg_vw_gather_05",
				"epg_vw_gather_07",
				"epg_vw_gather_08",
				"epg_vw_gather_09",
				"epg_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_gather_01",
				"epg_vw_gather_02",
				"epg_vw_gather_03",
				"epg_vw_gather_04",
				"epg_vw_gather_05",
				"epg_vw_gather_07",
				"epg_vw_gather_08",
				"epg_vw_gather_09",
				"epg_vw_gather_10"
			},
			sound_events_duration = {
				1.0859792232513,
				0.56197917461395,
				0.97000002861023,
				1.6619791984558,
				0.61599999666214,
				1.0299999713898,
				0.875,
				0.71799999475479,
				2.5889792442322
			}
		},
		epg_vw_go_here = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_go_here_01",
				"epg_vw_go_here_02",
				"epg_vw_go_here_03",
				"epg_vw_go_here_04",
				"epg_vw_go_here_05",
				"epg_vw_go_here_06",
				"epg_vw_go_here_07",
				"epg_vw_go_here_08",
				"epg_vw_go_here_09",
				"epg_vw_go_here_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_go_here_01",
				"epg_vw_go_here_02",
				"epg_vw_go_here_03",
				"epg_vw_go_here_04",
				"epg_vw_go_here_05",
				"epg_vw_go_here_06",
				"epg_vw_go_here_07",
				"epg_vw_go_here_08",
				"epg_vw_go_here_09",
				"epg_vw_go_here_10"
			},
			sound_events_duration = {
				0.92497915029526,
				1.2979999780655,
				0.7490000128746,
				1.7769999504089,
				1.3829791545868,
				2.073979139328,
				2.8619792461395,
				1.2409791946411,
				1.6319999694824,
				1.6230000257492
			}
		},
		epg_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_negation_01",
				"epg_vw_negation_02",
				"epg_vw_negation_03",
				"epg_vw_negation_04",
				"epg_vw_negation_05",
				"epg_vw_negation_06",
				"epg_vw_negation_07",
				"epg_vw_negation_08",
				"epg_vw_negation_09",
				"epg_vw_negation_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_negation_01",
				"epg_vw_negation_02",
				"epg_vw_negation_03",
				"epg_vw_negation_04",
				"epg_vw_negation_05",
				"epg_vw_negation_06",
				"epg_vw_negation_07",
				"epg_vw_negation_08",
				"epg_vw_negation_09",
				"epg_vw_negation_10"
			},
			sound_events_duration = {
				0.47200000286102,
				0.54997915029526,
				0.82599997520447,
				0.908999979496,
				1.8739792108536,
				1.4899791479111,
				1.0599792003632,
				1.4569791555405,
				2.3869791030884,
				0.92299997806549
			}
		},
		epg_vw_thanks = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "pactsworn_player_vo",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_thanks_01",
				"epg_vw_thanks_02",
				"epg_vw_thanks_03",
				"epg_vw_thanks_04",
				"epg_vw_thanks_05",
				"epg_vw_thanks_06",
				"epg_vw_thanks_07",
				"epg_vw_thanks_08",
				"epg_vw_thanks_09"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_thanks_01",
				"epg_vw_thanks_02",
				"epg_vw_thanks_03",
				"epg_vw_thanks_04",
				"epg_vw_thanks_05",
				"epg_vw_thanks_06",
				"epg_vw_thanks_07",
				"epg_vw_thanks_08",
				"epg_vw_thanks_09"
			},
			sound_events_duration = {
				1.3530207872391,
				0.74779164791107,
				0.6630625128746,
				0.78754168748856,
				0.57833331823349,
				0.84850001335144,
				0.93527084589005,
				2.0857291221619,
				1.6955208778381
			}
		},
		epg_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_wait_01",
				"epg_vw_wait_02",
				"epg_vw_wait_03",
				"epg_vw_wait_04",
				"epg_vw_wait_05",
				"epg_vw_wait_06",
				"epg_vw_wait_07",
				"epg_vw_wait_08",
				"epg_vw_wait_09",
				"epg_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_wait_01",
				"epg_vw_wait_02",
				"epg_vw_wait_03",
				"epg_vw_wait_04",
				"epg_vw_wait_05",
				"epg_vw_wait_06",
				"epg_vw_wait_07",
				"epg_vw_wait_08",
				"epg_vw_wait_09",
				"epg_vw_wait_10"
			},
			sound_events_duration = {
				1.8150000572205,
				0.56297916173935,
				0.77497917413712,
				0.71397918462753,
				0.74597918987274,
				2.0799791812897,
				2.8459792137146,
				1.6739791631699,
				1.2899792194366,
				2.2809791564941
			}
		},
		epm_packmaster_grab_walk = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "pactsworn_player_vo",
			category = "player_feedback",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "player_packmaster_vce_grab_walk"
			},
			sound_events = {
				[1] = "player_packmaster_vce_grab_walk"
			},
			sound_events_duration = {
				[1] = 2.4751597046852
			}
		},
		epm_packmaster_hook_fail = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "pactsworn_player_vo",
			category = "player_alerts",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "player_packmaster_vce_effort"
			},
			sound_events = {
				[1] = "player_packmaster_vce_effort"
			},
			sound_events_duration = {
				[1] = 0.51392015069723
			}
		},
		epm_packmaster_hook_success = {
			randomize_indexes_n = 0,
			face_animations_n = 21,
			database = "pactsworn_player_vo",
			sound_events_n = 21,
			category = "player_alerts",
			dialogue_animations_n = 21,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_hook_success_01",
				"epm_hook_success_02",
				"epm_hook_success_03",
				"epm_hook_success_04",
				"epm_hook_success_05",
				"epm_hook_success_06",
				"epm_hook_success_07",
				"epm_hook_success_08",
				"epm_hook_success_09",
				"epm_hook_success_10",
				"epm_hook_success_11",
				"epm_hook_success_12",
				"epm_hook_success_13",
				"epm_hook_success_14",
				"epm_hook_success_15",
				"epm_hook_success_16",
				"epm_hook_success_17",
				"epm_hook_success_18",
				"epm_hook_success_19",
				"epm_hook_success_20",
				"epm_hook_success_21"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_hook_success_01",
				"epm_hook_success_02",
				"epm_hook_success_03",
				"epm_hook_success_04",
				"epm_hook_success_05",
				"epm_hook_success_06",
				"epm_hook_success_07",
				"epm_hook_success_08",
				"epm_hook_success_09",
				"epm_hook_success_10",
				"epm_hook_success_11",
				"epm_hook_success_12",
				"epm_hook_success_13",
				"epm_hook_success_14",
				"epm_hook_success_15",
				"epm_hook_success_16",
				"epm_hook_success_17",
				"epm_hook_success_18",
				"epm_hook_success_19",
				"epm_hook_success_20",
				"epm_hook_success_21"
			},
			sound_events_duration = {
				0.83057886362076,
				0.88354754447937,
				0.59939467906952,
				0.97962802648544,
				1.1066962480545,
				1.4525414705277,
				2.0352745056152,
				1.4883658885956,
				2.430104970932,
				3.1543214321137,
				1.7359656095505,
				2.5037593841553,
				3.7726202011108,
				3.7602334022522,
				1.9072066545486,
				2.4115936756134,
				1.8989806175232,
				3.2573645114899,
				1.7803119421005,
				3.3432438373566,
				4.1324315071106
			}
		},
		epm_packmaster_skulking = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "pactsworn_player_vo",
			category = "player_feedback",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "Play_packmaster_vce_skulking"
			},
			sound_events = {
				[1] = "Play_packmaster_vce_skulking"
			},
			sound_events_duration = {
				[1] = 2.302490144968
			}
		},
		epm_spawning_packmaster = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "pactsworn_player_vo",
			sound_events_n = 5,
			category = "player_alerts",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_spawning_packmaster_01",
				"epm_spawning_packmaster_02",
				"epm_spawning_packmaster_03",
				"epm_spawning_packmaster_04",
				"epm_spawning_packmaster_05"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_spawning_packmaster_01",
				"epm_spawning_packmaster_02",
				"epm_spawning_packmaster_03",
				"epm_spawning_packmaster_04",
				"epm_spawning_packmaster_05"
			},
			sound_events_duration = {
				5.7431344985962,
				5.5624294281006,
				4.9659090042114,
				6.388231754303,
				7.1693434715271
			}
		},
		epm_taunting_bardin = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_taunting_bardin_01",
				"epm_taunting_bardin_02",
				"epm_taunting_bardin_03",
				"epm_taunting_bardin_04",
				"epm_taunting_bardin_05",
				"epm_taunting_bardin_06",
				"epm_taunting_bardin_07",
				"epm_taunting_bardin_08",
				"epm_taunting_bardin_09",
				"epm_taunting_bardin_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_taunting_bardin_01",
				"epm_taunting_bardin_02",
				"epm_taunting_bardin_03",
				"epm_taunting_bardin_04",
				"epm_taunting_bardin_05",
				"epm_taunting_bardin_06",
				"epm_taunting_bardin_07",
				"epm_taunting_bardin_08",
				"epm_taunting_bardin_09",
				"epm_taunting_bardin_10"
			},
			sound_events_duration = {
				3.6509966850281,
				2.2782220840454,
				2.1072325706482,
				3.188547372818,
				4.0124068260193,
				3.2108926773071,
				1.9352712631226,
				2.1470651626587,
				2.3238842487335,
				2.5949416160584
			}
		},
		epm_taunting_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "pactsworn_player_vo",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_taunting_kerillian_01",
				"epm_taunting_kerillian_02",
				"epm_taunting_kerillian_03",
				"epm_taunting_kerillian_04",
				"epm_taunting_kerillian_05",
				"epm_taunting_kerillian_06",
				"epm_taunting_kerillian_07",
				"epm_taunting_kerillian_09",
				"epm_taunting_kerillian_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_taunting_kerillian_01",
				"epm_taunting_kerillian_02",
				"epm_taunting_kerillian_03",
				"epm_taunting_kerillian_04",
				"epm_taunting_kerillian_05",
				"epm_taunting_kerillian_06",
				"epm_taunting_kerillian_07",
				"epm_taunting_kerillian_09",
				"epm_taunting_kerillian_10"
			},
			sound_events_duration = {
				2.5356781482697,
				3.7899258136749,
				2.9825828075409,
				3.2526686191559,
				2.7251267433166,
				2.7999348640442,
				2.3646886348724,
				4.0813856124878,
				2.4832153320313
			}
		},
		epm_taunting_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_taunting_kruber_01",
				"epm_taunting_kruber_02",
				"epm_taunting_kruber_03",
				"epm_taunting_kruber_04",
				"epm_taunting_kruber_05",
				"epm_taunting_kruber_06",
				"epm_taunting_kruber_07",
				"epm_taunting_kruber_08",
				"epm_taunting_kruber_09",
				"epm_taunting_kruber_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_taunting_kruber_01",
				"epm_taunting_kruber_02",
				"epm_taunting_kruber_03",
				"epm_taunting_kruber_04",
				"epm_taunting_kruber_05",
				"epm_taunting_kruber_06",
				"epm_taunting_kruber_07",
				"epm_taunting_kruber_08",
				"epm_taunting_kruber_09",
				"epm_taunting_kruber_10"
			},
			sound_events_duration = {
				2.9728674888611,
				2.3093111515045,
				3.8851358890533,
				3.0486471652985,
				3.1594014167786,
				2.7222120761871,
				1.5495731830597,
				2.6940379142761,
				3.4119999408722,
				5.476505279541
			}
		},
		epm_taunting_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_taunting_saltzpyre_01",
				"epm_taunting_saltzpyre_02",
				"epm_taunting_saltzpyre_03",
				"epm_taunting_saltzpyre_04",
				"epm_taunting_saltzpyre_05",
				"epm_taunting_saltzpyre_06",
				"epm_taunting_saltzpyre_07",
				"epm_taunting_saltzpyre_08",
				"epm_taunting_saltzpyre_09",
				"epm_taunting_saltzpyre_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_taunting_saltzpyre_01",
				"epm_taunting_saltzpyre_02",
				"epm_taunting_saltzpyre_03",
				"epm_taunting_saltzpyre_04",
				"epm_taunting_saltzpyre_05",
				"epm_taunting_saltzpyre_06",
				"epm_taunting_saltzpyre_07",
				"epm_taunting_saltzpyre_08",
				"epm_taunting_saltzpyre_09",
				"epm_taunting_saltzpyre_10"
			},
			sound_events_duration = {
				3.5962793827057,
				3.847246170044,
				3.9074814319611,
				5.5105085372925,
				3.5519003868103,
				2.8796005249023,
				2.7192976474762,
				2.803820848465,
				1.7710825204849,
				2.4113218784332
			}
		},
		epm_taunting_sienna = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_taunting_sienna_01",
				"epm_taunting_sienna_02",
				"epm_taunting_sienna_03",
				"epm_taunting_sienna_04",
				"epm_taunting_sienna_05",
				"epm_taunting_sienna_06",
				"epm_taunting_sienna_07",
				"epm_taunting_sienna_08",
				"epm_taunting_sienna_09",
				"epm_taunting_sienna_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_taunting_sienna_01",
				"epm_taunting_sienna_02",
				"epm_taunting_sienna_03",
				"epm_taunting_sienna_04",
				"epm_taunting_sienna_05",
				"epm_taunting_sienna_06",
				"epm_taunting_sienna_07",
				"epm_taunting_sienna_08",
				"epm_taunting_sienna_09",
				"epm_taunting_sienna_10"
			},
			sound_events_duration = {
				3.103052854538,
				2.1956419944763,
				4.3563289642334,
				3.2954161167145,
				2.884458065033,
				4.1328763961792,
				1.6593563556671,
				2.0042502880096,
				3.2167220115662,
				2.4326956272125
			}
		},
		epm_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_affirmative_01",
				"epm_vw_affirmative_02",
				"epm_vw_affirmative_03",
				"epm_vw_affirmative_04",
				"epm_vw_affirmative_05",
				"epm_vw_affirmative_06",
				"epm_vw_affirmative_07",
				"epm_vw_affirmative_08",
				"epm_vw_affirmative_09",
				"epm_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_affirmative_01",
				"epm_vw_affirmative_02",
				"epm_vw_affirmative_03",
				"epm_vw_affirmative_04",
				"epm_vw_affirmative_05",
				"epm_vw_affirmative_06",
				"epm_vw_affirmative_07",
				"epm_vw_affirmative_08",
				"epm_vw_affirmative_09",
				"epm_vw_affirmative_10"
			},
			sound_events_duration = {
				0.63244706392288,
				0.53335076570511,
				0.3332152068615,
				0.79857897758484,
				2.4006352424622,
				1.1065546274185,
				3.4032561779022,
				3.5596725940704,
				1.3708113431931,
				2.0246522426605
			}
		},
		epm_vw_ambush = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_ambush_01",
				"epm_vw_ambush_02",
				"epm_vw_ambush_03",
				"epm_vw_ambush_04",
				"epm_vw_ambush_05",
				"epm_vw_ambush_06",
				"epm_vw_ambush_07",
				"epm_vw_ambush_08",
				"epm_vw_ambush_09",
				"epm_vw_ambush_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_ambush_01",
				"epm_vw_ambush_02",
				"epm_vw_ambush_03",
				"epm_vw_ambush_04",
				"epm_vw_ambush_05",
				"epm_vw_ambush_06",
				"epm_vw_ambush_07",
				"epm_vw_ambush_08",
				"epm_vw_ambush_09",
				"epm_vw_ambush_10"
			},
			sound_events_duration = {
				0.67908054590225,
				0.93362194299698,
				2.1082038879395,
				2.2481045722961,
				1.4767082929611,
				1.2027362585068,
				0.89767527580261,
				1.8449189662933,
				2.3724608421326,
				1.0278606414795
			}
		},
		epm_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_attack_now_01",
				"epm_vw_attack_now_02",
				"epm_vw_attack_now_03",
				"epm_vw_attack_now_04",
				"epm_vw_attack_now_05",
				"epm_vw_attack_now_06",
				"epm_vw_attack_now_07",
				"epm_vw_attack_now_08",
				"epm_vw_attack_now_09",
				"epm_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_attack_now_01",
				"epm_vw_attack_now_02",
				"epm_vw_attack_now_03",
				"epm_vw_attack_now_04",
				"epm_vw_attack_now_05",
				"epm_vw_attack_now_06",
				"epm_vw_attack_now_07",
				"epm_vw_attack_now_08",
				"epm_vw_attack_now_09",
				"epm_vw_attack_now_10"
			},
			sound_events_duration = {
				0.88504534959793,
				1.3902418613434,
				2.0401968955994,
				1.664214015007,
				0.76943308115006,
				0.79372131824493,
				1.4825375080109,
				1.8585202693939,
				1.5699753761291,
				3.8657052516937
			}
		},
		epm_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_cover_me_01",
				"epm_vw_cover_me_02",
				"epm_vw_cover_me_03",
				"epm_vw_cover_me_04",
				"epm_vw_cover_me_05",
				"epm_vw_cover_me_06",
				"epm_vw_cover_me_07",
				"epm_vw_cover_me_08",
				"epm_vw_cover_me_09",
				"epm_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_cover_me_01",
				"epm_vw_cover_me_02",
				"epm_vw_cover_me_03",
				"epm_vw_cover_me_04",
				"epm_vw_cover_me_05",
				"epm_vw_cover_me_06",
				"epm_vw_cover_me_07",
				"epm_vw_cover_me_08",
				"epm_vw_cover_me_09",
				"epm_vw_cover_me_10"
			},
			sound_events_duration = {
				0.70531189441681,
				0.60621565580368,
				0.68685281276703,
				0.68588131666184,
				1.0123161077499,
				0.90156137943268,
				1.1104407310486,
				2.0159084796906,
				1.7409650087357,
				1.6098082065582
			}
		},
		epm_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_gather_01",
				"epm_vw_gather_02",
				"epm_vw_gather_03",
				"epm_vw_gather_04",
				"epm_vw_gather_05",
				"epm_vw_gather_06",
				"epm_vw_gather_07",
				"epm_vw_gather_08",
				"epm_vw_gather_09",
				"epm_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_gather_01",
				"epm_vw_gather_02",
				"epm_vw_gather_03",
				"epm_vw_gather_04",
				"epm_vw_gather_05",
				"epm_vw_gather_06",
				"epm_vw_gather_07",
				"epm_vw_gather_08",
				"epm_vw_gather_09",
				"epm_vw_gather_10"
			},
			sound_events_duration = {
				1.3115478754044,
				1.5874630212784,
				1.1240422725677,
				2.1956419944763,
				1.264914393425,
				1.1998217105866,
				1.8740648031235,
				1.2639629840851,
				1.3358361721039,
				2.2539339065552
			}
		},
		epm_vw_go_here = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_go_here_01",
				"epm_vw_go_here_02",
				"epm_vw_go_here_03",
				"epm_vw_go_here_04",
				"epm_vw_go_here_05",
				"epm_vw_go_here_06",
				"epm_vw_go_here_07",
				"epm_vw_go_here_08",
				"epm_vw_go_here_09",
				"epm_vw_go_here_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_go_here_01",
				"epm_vw_go_here_02",
				"epm_vw_go_here_03",
				"epm_vw_go_here_04",
				"epm_vw_go_here_05",
				"epm_vw_go_here_06",
				"epm_vw_go_here_07",
				"epm_vw_go_here_08",
				"epm_vw_go_here_09",
				"epm_vw_go_here_10"
			},
			sound_events_duration = {
				0.99288541078568,
				1.2435405254364,
				0.74320167303085,
				1.9770472049713,
				1.1279282569885,
				1.5524878501892,
				1.706961274147,
				1.3028041124344,
				1.1288999319077,
				2.1606669425964
			}
		},
		epm_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_negation_01",
				"epm_vw_negation_02",
				"epm_vw_negation_03",
				"epm_vw_negation_04",
				"epm_vw_negation_05",
				"epm_vw_negation_06",
				"epm_vw_negation_07",
				"epm_vw_negation_08",
				"epm_vw_negation_09",
				"epm_vw_negation_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_negation_01",
				"epm_vw_negation_02",
				"epm_vw_negation_03",
				"epm_vw_negation_04",
				"epm_vw_negation_05",
				"epm_vw_negation_06",
				"epm_vw_negation_07",
				"epm_vw_negation_08",
				"epm_vw_negation_09",
				"epm_vw_negation_10"
			},
			sound_events_duration = {
				0.70434039831161,
				0.63633316755295,
				0.42453920841217,
				2.0839157104492,
				1.8760079145432,
				1.198850274086,
				0.99774307012558,
				1.6049505472183,
				2.7571873664856,
				2.1082038879395
			}
		},
		epm_vw_thanks = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "pactsworn_player_vo",
			sound_events_n = 7,
			category = "player_alerts",
			dialogue_animations_n = 7,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_thanks_01",
				"epm_vw_thanks_02",
				"epm_vw_thanks_03",
				"epm_vw_thanks_04",
				"epm_vw_thanks_05",
				"epm_vw_thanks_06",
				"epm_vw_thanks_07"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_thanks_01",
				"epm_vw_thanks_02",
				"epm_vw_thanks_03",
				"epm_vw_thanks_04",
				"epm_vw_thanks_05",
				"epm_vw_thanks_06",
				"epm_vw_thanks_07"
			},
			sound_events_duration = {
				1.5424890518189,
				1.1298916339874,
				1.0990252494812,
				1.3755475282669,
				0.63813459873199,
				0.75866520404816,
				1.1122218370438
			}
		},
		epm_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_wait_01",
				"epm_vw_wait_02",
				"epm_vw_wait_03",
				"epm_vw_wait_04",
				"epm_vw_wait_05",
				"epm_vw_wait_06",
				"epm_vw_wait_07",
				"epm_vw_wait_08",
				"epm_vw_wait_09",
				"epm_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_wait_01",
				"epm_vw_wait_02",
				"epm_vw_wait_03",
				"epm_vw_wait_04",
				"epm_vw_wait_05",
				"epm_vw_wait_06",
				"epm_vw_wait_07",
				"epm_vw_wait_08",
				"epm_vw_wait_09",
				"epm_vw_wait_10"
			},
			sound_events_duration = {
				1.9206984043121,
				1.3533236980438,
				0.84521251916885,
				0.6149594783783,
				0.8510417342186,
				1.8798940181732,
				2.0236806869507,
				1.5398578643799,
				0.89670372009277,
				2.0489406585693
			}
		},
		erg_spawning_ratling_gunner = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "pactsworn_player_vo",
			sound_events_n = 5,
			category = "player_alerts",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_spawning_ratling_gunner_01",
				"erg_spawning_ratling_gunner_02",
				"erg_spawning_ratling_gunner_03",
				"erg_spawning_ratling_gunner_04",
				"erg_spawning_ratling_gunner_05"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_spawning_ratling_gunner_01",
				"erg_spawning_ratling_gunner_02",
				"erg_spawning_ratling_gunner_03",
				"erg_spawning_ratling_gunner_04",
				"erg_spawning_ratling_gunner_05"
			},
			sound_events_duration = {
				7.2075262069702,
				6.7256460189819,
				5.4178609848022,
				6.9250726699829,
				4.1212635040283
			}
		},
		erg_taunting_bardin = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_taunting_bardin_01",
				"erg_taunting_bardin_02",
				"erg_taunting_bardin_03",
				"erg_taunting_bardin_04",
				"erg_taunting_bardin_05",
				"erg_taunting_bardin_06",
				"erg_taunting_bardin_07",
				"erg_taunting_bardin_08",
				"erg_taunting_bardin_09",
				"erg_taunting_bardin_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_taunting_bardin_01",
				"erg_taunting_bardin_02",
				"erg_taunting_bardin_03",
				"erg_taunting_bardin_04",
				"erg_taunting_bardin_05",
				"erg_taunting_bardin_06",
				"erg_taunting_bardin_07",
				"erg_taunting_bardin_08",
				"erg_taunting_bardin_09",
				"erg_taunting_bardin_10"
			},
			sound_events_duration = {
				3.9637405872345,
				2.8889696598053,
				3.2705979347229,
				4.1340618133545,
				3.4567,
				5.3284659385681,
				2.8544745445252,
				1.6827301979065,
				2.2723865509033,
				1.9015606641769
			}
		},
		erg_taunting_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_taunting_kerillian_01",
				"erg_taunting_kerillian_02",
				"erg_taunting_kerillian_03",
				"erg_taunting_kerillian_04",
				"erg_taunting_kerillian_05",
				"erg_taunting_kerillian_06",
				"erg_taunting_kerillian_07",
				"erg_taunting_kerillian_08",
				"erg_taunting_kerillian_09",
				"erg_taunting_kerillian_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_taunting_kerillian_01",
				"erg_taunting_kerillian_02",
				"erg_taunting_kerillian_03",
				"erg_taunting_kerillian_04",
				"erg_taunting_kerillian_05",
				"erg_taunting_kerillian_06",
				"erg_taunting_kerillian_07",
				"erg_taunting_kerillian_08",
				"erg_taunting_kerillian_09",
				"erg_taunting_kerillian_10"
			},
			sound_events_duration = {
				2.7089693546295,
				4.2655754089356,
				5.4146823883057,
				3.7481217384338,
				2.7520661354065,
				2.1645658016205,
				2.2917675971985,
				2.2109189033508,
				1.8983266353607,
				4.7636032104492
			}
		},
		erg_taunting_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_taunting_kruber_01",
				"erg_taunting_kruber_02",
				"erg_taunting_kruber_03",
				"erg_taunting_kruber_04",
				"erg_taunting_kruber_05",
				"erg_taunting_kruber_06",
				"erg_taunting_kruber_07",
				"erg_taunting_kruber_08",
				"erg_taunting_kruber_09",
				"erg_taunting_kruber_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_taunting_kruber_01",
				"erg_taunting_kruber_02",
				"erg_taunting_kruber_03",
				"erg_taunting_kruber_04",
				"erg_taunting_kruber_05",
				"erg_taunting_kruber_06",
				"erg_taunting_kruber_07",
				"erg_taunting_kruber_08",
				"erg_taunting_kruber_09",
				"erg_taunting_kruber_10"
			},
			sound_events_duration = {
				3.8570203781128,
				5.8027558326721,
				3.9012174606323,
				5.212043762207,
				3.6888325214386,
				2.4103682041168,
				1.9533038139343,
				2.4739465713501,
				1.8670651912689,
				3.9065849781036
			}
		},
		erg_taunting_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_taunting_saltzpyre_01",
				"erg_taunting_saltzpyre_02",
				"erg_taunting_saltzpyre_03",
				"erg_taunting_saltzpyre_04",
				"erg_taunting_saltzpyre_05",
				"erg_taunting_saltzpyre_06",
				"erg_taunting_saltzpyre_07",
				"erg_taunting_saltzpyre_08",
				"erg_taunting_saltzpyre_09",
				"erg_taunting_saltzpyre_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_taunting_saltzpyre_01",
				"erg_taunting_saltzpyre_02",
				"erg_taunting_saltzpyre_03",
				"erg_taunting_saltzpyre_04",
				"erg_taunting_saltzpyre_05",
				"erg_taunting_saltzpyre_06",
				"erg_taunting_saltzpyre_07",
				"erg_taunting_saltzpyre_08",
				"erg_taunting_saltzpyre_09",
				"erg_taunting_saltzpyre_10"
			},
			sound_events_duration = {
				6.6759214401245,
				5.5483522415161,
				3.8300483226776,
				4.2342915534973,
				6.7330765724182,
				3.4567,
				1.6169507503509,
				1.6783958673477,
				1.8282577991486,
				2.1182124614716
			}
		},
		erg_taunting_sienna = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_taunting_sienna_01",
				"erg_taunting_sienna_02",
				"erg_taunting_sienna_03",
				"erg_taunting_sienna_04",
				"erg_taunting_sienna_05",
				"erg_taunting_sienna_06",
				"erg_taunting_sienna_07",
				"erg_taunting_sienna_08",
				"erg_taunting_sienna_09",
				"erg_taunting_sienna_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_taunting_sienna_01",
				"erg_taunting_sienna_02",
				"erg_taunting_sienna_03",
				"erg_taunting_sienna_04",
				"erg_taunting_sienna_05",
				"erg_taunting_sienna_06",
				"erg_taunting_sienna_07",
				"erg_taunting_sienna_08",
				"erg_taunting_sienna_09",
				"erg_taunting_sienna_10"
			},
			sound_events_duration = {
				1.876767039299,
				6.1132369041443,
				4.8013324737549,
				4.2472500801086,
				5.8254156112671,
				3.4473869800568,
				2.5149323940277,
				1.9414459466934,
				4.0122494697571,
				4.1707129478455
			}
		},
		erg_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_affirmative_01",
				"erg_vw_affirmative_02",
				"erg_vw_affirmative_03",
				"erg_vw_affirmative_04",
				"erg_vw_affirmative_05",
				"erg_vw_affirmative_06",
				"erg_vw_affirmative_07",
				"erg_vw_affirmative_08",
				"erg_vw_affirmative_09",
				"erg_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_affirmative_01",
				"erg_vw_affirmative_02",
				"erg_vw_affirmative_03",
				"erg_vw_affirmative_04",
				"erg_vw_affirmative_05",
				"erg_vw_affirmative_06",
				"erg_vw_affirmative_07",
				"erg_vw_affirmative_08",
				"erg_vw_affirmative_09",
				"erg_vw_affirmative_10"
			},
			sound_events_duration = {
				0.73084944486618,
				0.88392293453217,
				0.83002382516861,
				1.5414921045303,
				2.2022953033447,
				1.3787392377853,
				2.9461028575897,
				4.0434889793396,
				1.9877766370773,
				2.5979144573212
			}
		},
		erg_vw_ambush = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_ambush_01",
				"erg_vw_ambush_02",
				"erg_vw_ambush_03",
				"erg_vw_ambush_04",
				"erg_vw_ambush_05",
				"erg_vw_ambush_06",
				"erg_vw_ambush_07",
				"erg_vw_ambush_08",
				"erg_vw_ambush_09",
				"erg_vw_ambush_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_ambush_01",
				"erg_vw_ambush_02",
				"erg_vw_ambush_03",
				"erg_vw_ambush_04",
				"erg_vw_ambush_05",
				"erg_vw_ambush_06",
				"erg_vw_ambush_07",
				"erg_vw_ambush_08",
				"erg_vw_ambush_09",
				"erg_vw_ambush_10"
			},
			sound_events_duration = {
				0.77399122714996,
				2.3003914356232,
				2.8911480903626,
				2.6248641014099,
				1.4822030067444,
				1.1879138946533,
				2.0880515575409,
				2.7488322257996,
				3.5098874568939,
				2.4739465713501
			}
		},
		erg_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_attack_now_01",
				"erg_vw_attack_now_02",
				"erg_vw_attack_now_03",
				"erg_vw_attack_now_04",
				"erg_vw_attack_now_05",
				"erg_vw_attack_now_06",
				"erg_vw_attack_now_07",
				"erg_vw_attack_now_08",
				"erg_vw_attack_now_09",
				"erg_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_attack_now_01",
				"erg_vw_attack_now_02",
				"erg_vw_attack_now_03",
				"erg_vw_attack_now_04",
				"erg_vw_attack_now_05",
				"erg_vw_attack_now_06",
				"erg_vw_attack_now_07",
				"erg_vw_attack_now_08",
				"erg_vw_attack_now_09",
				"erg_vw_attack_now_10"
			},
			sound_events_duration = {
				2.4383957386017,
				1.9209642410278,
				1.7312170267105,
				2.1915154457092,
				3.0226395130158,
				0.79552841186523,
				1.6072715520859,
				1.8056200742722,
				1.6374324560165,
				4.5016312599182
			}
		},
		erg_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_cover_me_01",
				"erg_vw_cover_me_02",
				"erg_vw_cover_me_03",
				"erg_vw_cover_me_04",
				"erg_vw_cover_me_05",
				"erg_vw_cover_me_06",
				"erg_vw_cover_me_07",
				"erg_vw_cover_me_08",
				"erg_vw_cover_me_09",
				"erg_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_cover_me_01",
				"erg_vw_cover_me_02",
				"erg_vw_cover_me_03",
				"erg_vw_cover_me_04",
				"erg_vw_cover_me_05",
				"erg_vw_cover_me_06",
				"erg_vw_cover_me_07",
				"erg_vw_cover_me_08",
				"erg_vw_cover_me_09",
				"erg_vw_cover_me_10"
			},
			sound_events_duration = {
				0.85050547122955,
				0.83002382516861,
				1.5016292333603,
				2.16135430336,
				1.6622260808945,
				0.96153765916824,
				1.570620059967,
				3.4567,
				1.1987161636352,
				3.4567
			}
		},
		erg_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_gather_01",
				"erg_vw_gather_02",
				"erg_vw_gather_03",
				"erg_vw_gather_04",
				"erg_vw_gather_05",
				"erg_vw_gather_06",
				"erg_vw_gather_07",
				"erg_vw_gather_08",
				"erg_vw_gather_09",
				"erg_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_gather_01",
				"erg_vw_gather_02",
				"erg_vw_gather_03",
				"erg_vw_gather_04",
				"erg_vw_gather_05",
				"erg_vw_gather_06",
				"erg_vw_gather_07",
				"erg_vw_gather_08",
				"erg_vw_gather_09",
				"erg_vw_gather_10"
			},
			sound_events_duration = {
				1.6546802520752,
				0.64245492219925,
				1.1544964313507,
				2.2755978107452,
				1.0186932086945,
				0.5939456820488,
				1.7603224515915,
				1.0154591798782,
				1.2773864269257,
				2.8264470100403
			}
		},
		erg_vw_go_here = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_go_here_01",
				"erg_vw_go_here_02",
				"erg_vw_go_here_03",
				"erg_vw_go_here_04",
				"erg_vw_go_here_05",
				"erg_vw_go_here_06",
				"erg_vw_go_here_07",
				"erg_vw_go_here_08",
				"erg_vw_go_here_09",
				"erg_vw_go_here_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_go_here_01",
				"erg_vw_go_here_02",
				"erg_vw_go_here_03",
				"erg_vw_go_here_04",
				"erg_vw_go_here_05",
				"erg_vw_go_here_06",
				"erg_vw_go_here_07",
				"erg_vw_go_here_08",
				"erg_vw_go_here_09",
				"erg_vw_go_here_10"
			},
			sound_events_duration = {
				1.4649554491043,
				1.7322949171066,
				0.72438162565231,
				1.3776386976242,
				1.8670426607132,
				2.639955997467,
				2.2540383338928,
				1.7980518341065,
				3.4567,
				3.4567
			}
		},
		erg_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_negation_01",
				"erg_vw_negation_02",
				"erg_vw_negation_03",
				"erg_vw_negation_04",
				"erg_vw_negation_05",
				"erg_vw_negation_06",
				"erg_vw_negation_07",
				"erg_vw_negation_08",
				"erg_vw_negation_09",
				"erg_vw_negation_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_negation_01",
				"erg_vw_negation_02",
				"erg_vw_negation_03",
				"erg_vw_negation_04",
				"erg_vw_negation_05",
				"erg_vw_negation_06",
				"erg_vw_negation_07",
				"erg_vw_negation_08",
				"erg_vw_negation_09",
				"erg_vw_negation_10"
			},
			sound_events_duration = {
				0.86561965942383,
				1.1598863601685,
				2.2842442989349,
				2.4577770233154,
				2.1818134784699,
				1.2719966173172,
				1.586789727211,
				1.4929828643799,
				2.477180480957,
				3.4567
			}
		},
		erg_vw_thanks = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "pactsworn_player_vo",
			sound_events_n = 7,
			category = "player_alerts",
			dialogue_animations_n = 7,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_thanks_01",
				"erg_vw_thanks_02",
				"erg_vw_thanks_03",
				"erg_vw_thanks_04",
				"erg_vw_thanks_05",
				"erg_vw_thanks_06",
				"erg_vw_thanks_07"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_thanks_01",
				"erg_vw_thanks_02",
				"erg_vw_thanks_03",
				"erg_vw_thanks_04",
				"erg_vw_thanks_05",
				"erg_vw_thanks_06",
				"erg_vw_thanks_07"
			},
			sound_events_duration = {
				1.4151884317398,
				0.99720084667206,
				1.6237779855728,
				1.0789927244186,
				1.3354402780533,
				0.94316703081131,
				1.539021730423
			}
		},
		erg_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_wait_01",
				"erg_vw_wait_02",
				"erg_vw_wait_03",
				"erg_vw_wait_04",
				"erg_vw_wait_05",
				"erg_vw_wait_06",
				"erg_vw_wait_07",
				"erg_vw_wait_08",
				"erg_vw_wait_09",
				"erg_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_wait_01",
				"erg_vw_wait_02",
				"erg_vw_wait_03",
				"erg_vw_wait_04",
				"erg_vw_wait_05",
				"erg_vw_wait_06",
				"erg_vw_wait_07",
				"erg_vw_wait_08",
				"erg_vw_wait_09",
				"erg_vw_wait_10"
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567
			}
		},
		ewt_spawning_warpfire_thrower = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "pactsworn_player_vo",
			sound_events_n = 5,
			category = "player_alerts",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_spawning_warpfire_thrower_01",
				"ewt_spawning_warpfire_thrower_02",
				"ewt_spawning_warpfire_thrower_03",
				"ewt_spawning_warpfire_thrower_04",
				"ewt_spawning_warpfire_thrower_05"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_spawning_warpfire_thrower_01",
				"ewt_spawning_warpfire_thrower_02",
				"ewt_spawning_warpfire_thrower_03",
				"ewt_spawning_warpfire_thrower_04",
				"ewt_spawning_warpfire_thrower_05"
			},
			sound_events_duration = {
				6.410388469696,
				5.9884572029114,
				4.8433690071106,
				6.163074016571,
				3.7080764770508
			}
		},
		ewt_taunting_bardin = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "pactsworn_player_vo",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_taunting_bardin_01",
				"ewt_taunting_bardin_02",
				"ewt_taunting_bardin_03",
				"ewt_taunting_bardin_04",
				"ewt_taunting_bardin_06",
				"ewt_taunting_bardin_07",
				"ewt_taunting_bardin_08",
				"ewt_taunting_bardin_09",
				"ewt_taunting_bardin_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_taunting_bardin_01",
				"ewt_taunting_bardin_02",
				"ewt_taunting_bardin_03",
				"ewt_taunting_bardin_04",
				"ewt_taunting_bardin_06",
				"ewt_taunting_bardin_07",
				"ewt_taunting_bardin_08",
				"ewt_taunting_bardin_09",
				"ewt_taunting_bardin_10"
			},
			sound_events_duration = {
				3.4706256389618,
				2.5295631885529,
				2.8637144565582,
				3.6197576522827,
				4.6655702590942,
				2.499359369278,
				1.4733877182007,
				1.9896869659424,
				1.6649942398071
			}
		},
		ewt_taunting_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_taunting_kerillian_01",
				"ewt_taunting_kerillian_02",
				"ewt_taunting_kerillian_03",
				"ewt_taunting_kerillian_04",
				"ewt_taunting_kerillian_05",
				"ewt_taunting_kerillian_06",
				"ewt_taunting_kerillian_07",
				"ewt_taunting_kerillian_08",
				"ewt_taunting_kerillian_09",
				"ewt_taunting_kerillian_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_taunting_kerillian_01",
				"ewt_taunting_kerillian_02",
				"ewt_taunting_kerillian_03",
				"ewt_taunting_kerillian_04",
				"ewt_taunting_kerillian_05",
				"ewt_taunting_kerillian_06",
				"ewt_taunting_kerillian_07",
				"ewt_taunting_kerillian_08",
				"ewt_taunting_kerillian_09",
				"ewt_taunting_kerillian_10"
			},
			sound_events_duration = {
				2.371955871582,
				3.7349104881287,
				4.7410607337952,
				3.2818312644959,
				2.4096913337708,
				1.8952797651291,
				2.0066568851471,
				1.935866355896,
				1.6621625423431,
				4.1709804534912
			}
		},
		ewt_taunting_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_taunting_kruber_01",
				"ewt_taunting_kruber_02",
				"ewt_taunting_kruber_03",
				"ewt_taunting_kruber_04",
				"ewt_taunting_kruber_05",
				"ewt_taunting_kruber_06",
				"ewt_taunting_kruber_07",
				"ewt_taunting_kruber_08",
				"ewt_taunting_kruber_09",
				"ewt_taunting_kruber_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_taunting_kruber_01",
				"ewt_taunting_kruber_02",
				"ewt_taunting_kruber_03",
				"ewt_taunting_kruber_04",
				"ewt_taunting_kruber_05",
				"ewt_taunting_kruber_06",
				"ewt_taunting_kruber_07",
				"ewt_taunting_kruber_08",
				"ewt_taunting_kruber_09",
				"ewt_taunting_kruber_10"
			},
			sound_events_duration = {
				3.3771820068359,
				5.0808553695679,
				3.4158809185028,
				4.5636320114136,
				3.2299180030823,
				2.1105029582977,
				1.7103002071381,
				2.1661715507507,
				1.6347901821136,
				3.4205806255341
			}
		},
		ewt_taunting_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "pactsworn_player_vo",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_taunting_saltzpyre_01",
				"ewt_taunting_saltzpyre_02",
				"ewt_taunting_saltzpyre_03",
				"ewt_taunting_saltzpyre_04",
				"ewt_taunting_saltzpyre_05",
				"ewt_taunting_saltzpyre_07",
				"ewt_taunting_saltzpyre_08",
				"ewt_taunting_saltzpyre_09",
				"ewt_taunting_saltzpyre_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_taunting_saltzpyre_01",
				"ewt_taunting_saltzpyre_02",
				"ewt_taunting_saltzpyre_03",
				"ewt_taunting_saltzpyre_04",
				"ewt_taunting_saltzpyre_05",
				"ewt_taunting_saltzpyre_07",
				"ewt_taunting_saltzpyre_08",
				"ewt_taunting_saltzpyre_09",
				"ewt_taunting_saltzpyre_10"
			},
			sound_events_duration = {
				5.8453936576843,
				4.8581013679504,
				3.353565454483,
				3.7075183391571,
				5.8954381942749,
				1.4157916307449,
				1.4695925712585,
				1.6008106470108,
				1.8546931743622
			}
		},
		ewt_taunting_sienna = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_taunting_sienna_01",
				"ewt_taunting_sienna_02",
				"ewt_taunting_sienna_03",
				"ewt_taunting_sienna_04",
				"ewt_taunting_sienna_05",
				"ewt_taunting_sienna_06",
				"ewt_taunting_sienna_07",
				"ewt_taunting_sienna_08",
				"ewt_taunting_sienna_09",
				"ewt_taunting_sienna_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_taunting_sienna_01",
				"ewt_taunting_sienna_02",
				"ewt_taunting_sienna_03",
				"ewt_taunting_sienna_04",
				"ewt_taunting_sienna_05",
				"ewt_taunting_sienna_06",
				"ewt_taunting_sienna_07",
				"ewt_taunting_sienna_08",
				"ewt_taunting_sienna_09",
				"ewt_taunting_sienna_10"
			},
			sound_events_duration = {
				1.6432851552963,
				5.3527107238769,
				4.2040157318115,
				3.718864440918,
				5.1006960868835,
				3.0185098648071,
				2.2020585536957,
				1.6999175548554,
				3.5130999088287,
				3.6518495082855
			}
		},
		ewt_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_affirmative_01",
				"ewt_vw_affirmative_02",
				"ewt_vw_affirmative_03",
				"ewt_vw_affirmative_04",
				"ewt_vw_affirmative_05",
				"ewt_vw_affirmative_06",
				"ewt_vw_affirmative_07",
				"ewt_vw_affirmative_08",
				"ewt_vw_affirmative_09",
				"ewt_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_affirmative_01",
				"ewt_vw_affirmative_02",
				"ewt_vw_affirmative_03",
				"ewt_vw_affirmative_04",
				"ewt_vw_affirmative_05",
				"ewt_vw_affirmative_06",
				"ewt_vw_affirmative_07",
				"ewt_vw_affirmative_08",
				"ewt_vw_affirmative_09",
				"ewt_vw_affirmative_10"
			},
			sound_events_duration = {
				0.63992708921432,
				0.77395725250244,
				0.72676348686218,
				1.3497204780579,
				1.9283155202866,
				1.2072151899338,
				2.5795884132385,
				3.5404527187347,
				1.7404843568802,
				2.274717092514
			}
		},
		ewt_vw_ambush = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_ambush_01",
				"ewt_vw_ambush_02",
				"ewt_vw_ambush_03",
				"ewt_vw_ambush_04",
				"ewt_vw_ambush_05",
				"ewt_vw_ambush_06",
				"ewt_vw_ambush_07",
				"ewt_vw_ambush_08",
				"ewt_vw_ambush_09",
				"ewt_vw_ambush_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_ambush_01",
				"ewt_vw_ambush_02",
				"ewt_vw_ambush_03",
				"ewt_vw_ambush_04",
				"ewt_vw_ambush_05",
				"ewt_vw_ambush_06",
				"ewt_vw_ambush_07",
				"ewt_vw_ambush_08",
				"ewt_vw_ambush_09",
				"ewt_vw_ambush_10"
			},
			sound_events_duration = {
				0.67770171165466,
				2.0142078399658,
				2.5314705371857,
				2.2983140945435,
				1.2978073358536,
				1.0401296615601,
				1.8282843828201,
				2.4068596363068,
				3.0732347965241,
				2.1661715507507
			}
		},
		ewt_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_attack_now_01",
				"ewt_vw_attack_now_02",
				"ewt_vw_attack_now_03",
				"ewt_vw_attack_now_04",
				"ewt_vw_attack_now_05",
				"ewt_vw_attack_now_06",
				"ewt_vw_attack_now_07",
				"ewt_vw_attack_now_08",
				"ewt_vw_attack_now_09",
				"ewt_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_attack_now_01",
				"ewt_vw_attack_now_02",
				"ewt_vw_attack_now_03",
				"ewt_vw_attack_now_04",
				"ewt_vw_attack_now_05",
				"ewt_vw_attack_now_06",
				"ewt_vw_attack_now_07",
				"ewt_vw_attack_now_08",
				"ewt_vw_attack_now_09",
				"ewt_vw_attack_now_10"
			},
			sound_events_duration = {
				2.1350436210632,
				1.6819838285446,
				1.5158424377441,
				1.9188767671585,
				2.6466035842895,
				0.69655954837799,
				1.4073165655136,
				1.5809893608093,
				1.4337253570557,
				3.9415991306305
			}
		},
		ewt_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "pactsworn_player_vo",
			sound_events_n = 8,
			category = "player_alerts",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_cover_me_01",
				"ewt_vw_cover_me_02",
				"ewt_vw_cover_me_03",
				"ewt_vw_cover_me_04",
				"ewt_vw_cover_me_05",
				"ewt_vw_cover_me_06",
				"ewt_vw_cover_me_07",
				"ewt_vw_cover_me_09"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_cover_me_01",
				"ewt_vw_cover_me_02",
				"ewt_vw_cover_me_03",
				"ewt_vw_cover_me_04",
				"ewt_vw_cover_me_05",
				"ewt_vw_cover_me_06",
				"ewt_vw_cover_me_07",
				"ewt_vw_cover_me_09"
			},
			sound_events_duration = {
				0.74469709396362,
				0.72676348686218,
				1.3148168325424,
				1.8924679756165,
				1.4554344415665,
				0.8419161438942,
				1.3752248287201,
				1.0495882034302
			}
		},
		ewt_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_gather_01",
				"ewt_vw_gather_02",
				"ewt_vw_gather_03",
				"ewt_vw_gather_04",
				"ewt_vw_gather_05",
				"ewt_vw_gather_06",
				"ewt_vw_gather_07",
				"ewt_vw_gather_08",
				"ewt_vw_gather_09",
				"ewt_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_gather_01",
				"ewt_vw_gather_02",
				"ewt_vw_gather_03",
				"ewt_vw_gather_04",
				"ewt_vw_gather_05",
				"ewt_vw_gather_06",
				"ewt_vw_gather_07",
				"ewt_vw_gather_08",
				"ewt_vw_gather_09",
				"ewt_vw_gather_10"
			},
			sound_events_duration = {
				1.4488273859024,
				0.56252938508987,
				1.0108696222305,
				1.992498755455,
				0.89196115732193,
				0.52005499601364,
				1.5413269996643,
				0.88912951946259,
				1.1184713840485,
				2.4748187065124
			}
		},
		ewt_vw_go_here = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "pactsworn_player_vo",
			sound_events_n = 8,
			category = "player_alerts",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_go_here_01",
				"ewt_vw_go_here_02",
				"ewt_vw_go_here_03",
				"ewt_vw_go_here_04",
				"ewt_vw_go_here_05",
				"ewt_vw_go_here_06",
				"ewt_vw_go_here_07",
				"ewt_vw_go_here_08"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_go_here_01",
				"ewt_vw_go_here_02",
				"ewt_vw_go_here_03",
				"ewt_vw_go_here_04",
				"ewt_vw_go_here_05",
				"ewt_vw_go_here_06",
				"ewt_vw_go_here_07",
				"ewt_vw_go_here_08"
			},
			sound_events_duration = {
				1.2827054262161,
				1.5167862176895,
				0.63426387310028,
				1.2062516212463,
				1.6347705125809,
				2.3115282058716,
				1.9736212491989,
				1.5743625164032
			}
		},
		ewt_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "pactsworn_player_vo",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_negation_01",
				"ewt_vw_negation_02",
				"ewt_vw_negation_03",
				"ewt_vw_negation_04",
				"ewt_vw_negation_05",
				"ewt_vw_negation_06",
				"ewt_vw_negation_07",
				"ewt_vw_negation_08",
				"ewt_vw_negation_09"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_negation_01",
				"ewt_vw_negation_02",
				"ewt_vw_negation_03",
				"ewt_vw_negation_04",
				"ewt_vw_negation_05",
				"ewt_vw_negation_06",
				"ewt_vw_negation_07",
				"ewt_vw_negation_08",
				"ewt_vw_negation_09"
			},
			sound_events_duration = {
				0.75793099403381,
				1.0155889987946,
				2.0000693798065,
				2.1520137786865,
				1.9103817939758,
				1.1137520074844,
				1.3893828392029,
				1.3072460889816,
				2.1690032482147
			}
		},
		ewt_vw_thanks = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "pactsworn_player_vo",
			sound_events_n = 8,
			category = "player_alerts",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_thanks_01",
				"ewt_vw_thanks_02",
				"ewt_vw_thanks_03",
				"ewt_vw_thanks_04",
				"ewt_vw_thanks_05",
				"ewt_vw_thanks_06",
				"ewt_vw_thanks_07",
				"ewt_vw_thanks_08"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_thanks_01",
				"ewt_vw_thanks_02",
				"ewt_vw_thanks_03",
				"ewt_vw_thanks_04",
				"ewt_vw_thanks_05",
				"ewt_vw_thanks_06",
				"ewt_vw_thanks_07",
				"ewt_vw_thanks_08"
			},
			sound_events_duration = {
				1.2391299009323,
				0.87314265966415,
				1.4217694997788,
				0.94475907087326,
				1.1693028211594,
				0.82583093643188,
				1.347557425499,
				1.0429416894913
			}
		},
		ewt_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "pactsworn_player_vo",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_wait_01",
				"ewt_vw_wait_02",
				"ewt_vw_wait_03",
				"ewt_vw_wait_04",
				"ewt_vw_wait_05",
				"ewt_vw_wait_06",
				"ewt_vw_wait_07",
				"ewt_vw_wait_08",
				"ewt_vw_wait_09",
				"ewt_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_wait_01",
				"ewt_vw_wait_02",
				"ewt_vw_wait_03",
				"ewt_vw_wait_04",
				"ewt_vw_wait_05",
				"ewt_vw_wait_06",
				"ewt_vw_wait_07",
				"ewt_vw_wait_08",
				"ewt_vw_wait_09",
				"ewt_vw_wait_10"
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567
			}
		},
		ewt_walking = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "pactsworn_player_vo",
			category = "player_feedback",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "player_combat_walk_normal"
			},
			sound_events = {
				[1] = "player_combat_walk_normal"
			},
			sound_events_duration = {
				[1] = 4.4834024906158
			}
		}
	})
end
