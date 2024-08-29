return function ()
	define_rule({
		name = "pbw_vw_affirmative",
		response = "pbw_vw_affirmative",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_bright_wizard_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_bright_wizard_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_vw_answer_ping",
		response = "pbw_vw_answer_ping",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_answer_ping"
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_bright_wizard_vw_answer_ping",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_bright_wizard_vw_answer_ping",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_vw_attack_now",
		response = "pbw_vw_attack_now",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_bright_wizard_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_bright_wizard_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_vw_cover_me",
		response = "pbw_vw_cover_me",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_bright_wizard_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_bright_wizard_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_vw_gather",
		response = "pbw_vw_gather",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_bright_wizard_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_bright_wizard_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_vw_go_there",
		response = "pbw_vw_go_there",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_bright_wizard_vw_go_there",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_bright_wizard_vw_go_there",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_vw_negation",
		response = "pbw_vw_negation",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_bright_wizard_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_bright_wizard_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_vw_objective_in_sight",
		response = "pbw_vw_objective_in_sight",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_objective_in_sight"
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_vw_objective_in_sight",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_vw_objective_in_sight",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_vw_thank_you",
		response = "pbw_vw_thank_you",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_bright_wizard_vw_thank_you",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_bright_wizard_vw_thank_you",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_vw_wait",
		response = "pbw_vw_wait",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_bright_wizard_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_bright_wizard_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_vw_affirmative",
		response = "pdr_vw_affirmative",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_vw_answer_ping",
		response = "pdr_vw_answer_ping",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_answer_ping"
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_answer_ping",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_answer_ping",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_vw_attack_now",
		response = "pdr_vw_attack_now",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_vw_cover_me",
		response = "pdr_vw_cover_me",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_vw_gather",
		response = "pdr_vw_gather",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_vw_go_there",
		response = "pdr_vw_go_there",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_go_there",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_go_there",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_vw_negation",
		response = "pdr_vw_negation",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_vw_objective_in_sight",
		response = "pdr_vw_objective_in_sight",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_objective_in_sight"
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_vw_objective_in_sight",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_vw_objective_in_sight",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_vw_thank_you",
		response = "pdr_vw_thank_you",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_thank_you",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_thank_you",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_vw_wait",
		response = "pdr_vw_wait",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_dwarf_ranger_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_vw_affirmative",
		response = "pes_vw_affirmative",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_memory",
				"time_since_empire_soldier_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_empire_soldier_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_vw_answer_ping",
		response = "pes_vw_answer_ping",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_answer_ping"
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_memory",
				"time_since_empire_soldier_vw_answer_ping",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_empire_soldier_vw_answer_ping",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_vw_attack_now",
		response = "pes_vw_attack_now",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_memory",
				"time_since_empire_soldier_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_empire_soldier_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_vw_cover_me",
		response = "pes_vw_cover_me",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_memory",
				"time_since_empire_soldier_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_empire_soldier_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_vw_gather",
		response = "pes_vw_gather",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_memory",
				"time_since_empire_soldier_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_empire_soldier_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_vw_go_there",
		response = "pes_vw_go_there",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_memory",
				"time_since_empire_soldier_vw_go_there",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_empire_soldier_vw_go_there",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_vw_negation",
		response = "pes_vw_negation",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_memory",
				"time_since_empire_soldier_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_empire_soldier_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_vw_objective_in_sight",
		response = "pes_vw_objective_in_sight",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_objective_in_sight"
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"time_since_vw_objective_in_sight",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_vw_objective_in_sight",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_vw_thank_you",
		response = "pes_vw_thank_you",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_memory",
				"time_since_empire_soldier_vw_thank_you",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_empire_soldier_vw_thank_you",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_vw_wait",
		response = "pes_vw_wait",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_memory",
				"time_since_empire_soldier_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_empire_soldier_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_vw_affirmative",
		response = "pwe_vw_affirmative",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_memory",
				"time_since_wood_elf_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_wood_elf_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_vw_answer_ping",
		response = "pwe_vw_answer_ping",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_answer_ping"
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_memory",
				"time_since_wood_elf_vw_answer_ping",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_wood_elf_vw_answer_ping",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_vw_attack_now",
		response = "pwe_vw_attack_now",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_memory",
				"time_since_wood_elf_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_wood_elf_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_vw_cover_me",
		response = "pwe_vw_cover_me",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_memory",
				"time_since_wood_elf_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_wood_elf_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_vw_gather",
		response = "pwe_vw_gather",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_memory",
				"time_since_wood_elf_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_wood_elf_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_vw_go_there",
		response = "pwe_vw_go_there",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_memory",
				"time_since_wood_elf_vw_go_there",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_wood_elf_vw_go_there",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_vw_negation",
		response = "pwe_vw_negation",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_memory",
				"time_since_wood_elf_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_wood_elf_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_vw_objective_in_sight",
		response = "pwe_vw_objective_in_sight",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_objective_in_sight"
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
				"time_since_vw_objective_in_sight",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_vw_objective_in_sight",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_vw_thank_you",
		response = "pwe_vw_thank_you",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_memory",
				"time_since_wood_elf_vw_thank_you",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_wood_elf_vw_thank_you",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_vw_wait",
		response = "pwe_vw_wait",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_memory",
				"time_since_wood_elf_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_wood_elf_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_vw_affirmative",
		response = "pwh_vw_affirmative",
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
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"time_since_witch_hunter_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_witch_hunter_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_vw_answer_ping",
		response = "pwh_vw_answer_ping",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_answer_ping"
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
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"time_since_witch_hunter_vw_answer_ping",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_witch_hunter_vw_answer_ping",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_vw_attack_now",
		response = "pwh_vw_attack_now",
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
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"time_since_witch_hunter_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_witch_hunter_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_vw_cover_me",
		response = "pwh_vw_cover_me",
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
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"time_since_witch_hunter_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_witch_hunter_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_vw_gather",
		response = "pwh_vw_gather",
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
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"time_since_witch_hunter_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_witch_hunter_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_vw_go_there",
		response = "pwh_vw_go_there",
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
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"time_since_witch_hunter_vw_go_there",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_witch_hunter_vw_go_there",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_vw_negation",
		response = "pwh_vw_negation",
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
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"time_since_witch_hunter_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_witch_hunter_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_vw_objective_in_sight",
		response = "pwh_vw_objective_in_sight",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_objective_in_sight"
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
				"time_since_vw_objective_in_sight",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_vw_objective_in_sight",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_vw_thank_you",
		response = "pwh_vw_thank_you",
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
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"time_since_witch_hunter_vw_thank_you",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_witch_hunter_vw_thank_you",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_vw_wait",
		response = "pwh_vw_wait",
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
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_memory",
				"time_since_witch_hunter_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_witch_hunter_vw_wait",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		pbw_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pbw_vw_affirmative_01",
				"pbw_vw_affirmative_02",
				"pbw_vw_affirmative_03",
				"pbw_vw_affirmative_04",
				"pbw_vw_affirmative_05",
				"pbw_vw_affirmative_06",
				"pbw_vw_affirmative_07",
				"pbw_vw_affirmative_08",
				"pbw_vw_affirmative_09",
				"pbw_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_vw_affirmative_01",
				"pbw_vw_affirmative_02",
				"pbw_vw_affirmative_03",
				"pbw_vw_affirmative_04",
				"pbw_vw_affirmative_05",
				"pbw_vw_affirmative_06",
				"pbw_vw_affirmative_07",
				"pbw_vw_affirmative_08",
				"pbw_vw_affirmative_09",
				"pbw_vw_affirmative_10"
			},
			sound_events_duration = {
				0.966000020504,
				0.72200000286102,
				1.9319791793823,
				2.2359790802002,
				0.82197916507721,
				2.0899999141693,
				0.77499997615814,
				1.2529791593552,
				1.7089999914169,
				2.6949791908264
			}
		},
		pbw_vw_answer_ping = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pbw_vw_answer_ping_01",
				"pbw_vw_answer_ping_02",
				"pbw_vw_answer_ping_03",
				"pbw_vw_answer_ping_04",
				"pbw_vw_answer_ping_05",
				"pbw_vw_answer_ping_06",
				"pbw_vw_answer_ping_07",
				"pbw_vw_answer_ping_08",
				"pbw_vw_answer_ping_09",
				"pbw_vw_answer_ping_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_vw_answer_ping_01",
				"pbw_vw_answer_ping_02",
				"pbw_vw_answer_ping_03",
				"pbw_vw_answer_ping_04",
				"pbw_vw_answer_ping_05",
				"pbw_vw_answer_ping_06",
				"pbw_vw_answer_ping_07",
				"pbw_vw_answer_ping_08",
				"pbw_vw_answer_ping_09",
				"pbw_vw_answer_ping_10"
			},
			sound_events_duration = {
				1.2469999790192,
				0.60399997234345,
				0.83999997377396,
				1.0119792222977,
				1.1379791498184,
				2.533979177475,
				2.0869998931885,
				2.4919791221619,
				2.8989791870117,
				2.2479791641235
			}
		},
		pbw_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pbw_vw_attack_now_01",
				"pbw_vw_attack_now_02",
				"pbw_vw_attack_now_03",
				"pbw_vw_attack_now_04",
				"pbw_vw_attack_now_05",
				"pbw_vw_attack_now_06",
				"pbw_vw_attack_now_07",
				"pbw_vw_attack_now_08",
				"pbw_vw_attack_now_09",
				"pbw_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_vw_attack_now_01",
				"pbw_vw_attack_now_02",
				"pbw_vw_attack_now_03",
				"pbw_vw_attack_now_04",
				"pbw_vw_attack_now_05",
				"pbw_vw_attack_now_06",
				"pbw_vw_attack_now_07",
				"pbw_vw_attack_now_08",
				"pbw_vw_attack_now_09",
				"pbw_vw_attack_now_10"
			},
			sound_events_duration = {
				1.1360000371933,
				1.1389791965485,
				1.6469792127609,
				1.2829999923706,
				0.84600001573563,
				1.408979177475,
				1.1959791183472,
				0.96899998188019,
				1.7159999608993,
				1.215979218483
			}
		},
		pbw_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pbw_vw_cover_me_01",
				"pbw_vw_cover_me_02",
				"pbw_vw_cover_me_03",
				"pbw_vw_cover_me_04",
				"pbw_vw_cover_me_05",
				"pbw_vw_cover_me_06",
				"pbw_vw_cover_me_07",
				"pbw_vw_cover_me_08",
				"pbw_vw_cover_me_09",
				"pbw_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_vw_cover_me_01",
				"pbw_vw_cover_me_02",
				"pbw_vw_cover_me_03",
				"pbw_vw_cover_me_04",
				"pbw_vw_cover_me_05",
				"pbw_vw_cover_me_06",
				"pbw_vw_cover_me_07",
				"pbw_vw_cover_me_08",
				"pbw_vw_cover_me_09",
				"pbw_vw_cover_me_10"
			},
			sound_events_duration = {
				0.95999997854233,
				1.4329999685288,
				2.4179999828339,
				3.0689792633057,
				1.0719791650772,
				1.4650000333786,
				1.430999994278,
				1.5099791288376,
				2.6489791870117,
				1.2219791412354
			}
		},
		pbw_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pbw_vw_gather_01",
				"pbw_vw_gather_02",
				"pbw_vw_gather_03",
				"pbw_vw_gather_04",
				"pbw_vw_gather_05",
				"pbw_vw_gather_06",
				"pbw_vw_gather_07",
				"pbw_vw_gather_08",
				"pbw_vw_gather_09",
				"pbw_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_vw_gather_01",
				"pbw_vw_gather_02",
				"pbw_vw_gather_03",
				"pbw_vw_gather_04",
				"pbw_vw_gather_05",
				"pbw_vw_gather_06",
				"pbw_vw_gather_07",
				"pbw_vw_gather_08",
				"pbw_vw_gather_09",
				"pbw_vw_gather_10"
			},
			sound_events_duration = {
				1.352979183197,
				0.74699997901917,
				1.3140000104904,
				1.2630000114441,
				3.4759790897369,
				1.6219999790192,
				1.8679791688919,
				2.0920000076294,
				1.3090000152588,
				1.1920000314713
			}
		},
		pbw_vw_go_there = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pbw_vw_go_there_01",
				"pbw_vw_go_there_02",
				"pbw_vw_go_there_03",
				"pbw_vw_go_there_04",
				"pbw_vw_go_there_05",
				"pbw_vw_go_there_06",
				"pbw_vw_go_there_07",
				"pbw_vw_go_there_08",
				"pbw_vw_go_there_09",
				"pbw_vw_go_there_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_vw_go_there_01",
				"pbw_vw_go_there_02",
				"pbw_vw_go_there_03",
				"pbw_vw_go_there_04",
				"pbw_vw_go_there_05",
				"pbw_vw_go_there_06",
				"pbw_vw_go_there_07",
				"pbw_vw_go_there_08",
				"pbw_vw_go_there_09",
				"pbw_vw_go_there_10"
			},
			sound_events_duration = {
				1.3509999513626,
				1.3890000581741,
				0.68497914075851,
				1.7960000038147,
				1.1759999990463,
				1.6339999437332,
				2.0299999713898,
				1.2349791526794,
				1.1849999427795,
				1.7819999456406
			}
		},
		pbw_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pbw_vw_negation_01",
				"pbw_vw_negation_02",
				"pbw_vw_negation_03",
				"pbw_vw_negation_04",
				"pbw_vw_negation_05",
				"pbw_vw_negation_06",
				"pbw_vw_negation_07",
				"pbw_vw_negation_08",
				"pbw_vw_negation_09",
				"pbw_vw_negation_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_vw_negation_01",
				"pbw_vw_negation_02",
				"pbw_vw_negation_03",
				"pbw_vw_negation_04",
				"pbw_vw_negation_05",
				"pbw_vw_negation_06",
				"pbw_vw_negation_07",
				"pbw_vw_negation_08",
				"pbw_vw_negation_09",
				"pbw_vw_negation_10"
			},
			sound_events_duration = {
				0.58399999141693,
				0.69300001859665,
				1.2789791822434,
				1.3029999732971,
				1.8549791574478,
				1.3099792003632,
				0.47897917032242,
				1.4459791183472,
				1.0489791631699,
				1.5529791116715
			}
		},
		pbw_vw_objective_in_sight = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pbw_vw_objective_in_sight_01",
				"pbw_vw_objective_in_sight_02",
				"pbw_vw_objective_in_sight_03",
				"pbw_vw_objective_in_sight_04",
				"pbw_vw_objective_in_sight_05",
				"pbw_vw_objective_in_sight_06",
				"pbw_vw_objective_in_sight_07",
				"pbw_vw_objective_in_sight_08",
				"pbw_vw_objective_in_sight_09",
				"pbw_vw_objective_in_sight_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_vw_objective_in_sight_01",
				"pbw_vw_objective_in_sight_02",
				"pbw_vw_objective_in_sight_03",
				"pbw_vw_objective_in_sight_04",
				"pbw_vw_objective_in_sight_05",
				"pbw_vw_objective_in_sight_06",
				"pbw_vw_objective_in_sight_07",
				"pbw_vw_objective_in_sight_08",
				"pbw_vw_objective_in_sight_09",
				"pbw_vw_objective_in_sight_10"
			},
			sound_events_duration = {
				1.9309791326523,
				1.4589999914169,
				2.5869791507721,
				1.8569791316986,
				2.4399790763855,
				1.7970000505447,
				2.8559792041779,
				2.6569790840149,
				2.1549792289734,
				2.7739791870117
			}
		},
		pbw_vw_thank_you = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pbw_vw_thank_you_01",
				"pbw_vw_thank_you_02",
				"pbw_vw_thank_you_03",
				"pbw_vw_thank_you_04",
				"pbw_vw_thank_you_05",
				"pbw_vw_thank_you_06",
				"pbw_vw_thank_you_07",
				"pbw_vw_thank_you_08",
				"pbw_vw_thank_you_09",
				"pbw_vw_thank_you_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_vw_thank_you_01",
				"pbw_vw_thank_you_02",
				"pbw_vw_thank_you_03",
				"pbw_vw_thank_you_04",
				"pbw_vw_thank_you_05",
				"pbw_vw_thank_you_06",
				"pbw_vw_thank_you_07",
				"pbw_vw_thank_you_08",
				"pbw_vw_thank_you_09",
				"pbw_vw_thank_you_10"
			},
			sound_events_duration = {
				1.0269792079925,
				1.0139791965485,
				1.3869792222977,
				1.868979215622,
				0.6690000295639,
				1.3199791908264,
				1.8079792261124,
				1.6319791078568,
				2.1529791355133,
				1.2970000505447
			}
		},
		pbw_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pbw_vw_wait_01",
				"pbw_vw_wait_02",
				"pbw_vw_wait_03",
				"pbw_vw_wait_04",
				"pbw_vw_wait_05",
				"pbw_vw_wait_06",
				"pbw_vw_wait_07",
				"pbw_vw_wait_08",
				"pbw_vw_wait_09",
				"pbw_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_vw_wait_01",
				"pbw_vw_wait_02",
				"pbw_vw_wait_03",
				"pbw_vw_wait_04",
				"pbw_vw_wait_05",
				"pbw_vw_wait_06",
				"pbw_vw_wait_07",
				"pbw_vw_wait_08",
				"pbw_vw_wait_09",
				"pbw_vw_wait_10"
			},
			sound_events_duration = {
				1.1569999456406,
				0.75599998235703,
				0.97297918796539,
				0.91299998760223,
				1.3780000209808,
				2.5329792499542,
				1.7309999465942,
				1.8469791412354,
				0.58399999141693,
				1.75
			}
		},
		pdr_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pdr_vw_affirmative_01",
				"pdr_vw_affirmative_02",
				"pdr_vw_affirmative_03",
				"pdr_vw_affirmative_04",
				"pdr_vw_affirmative_05",
				"pdr_vw_affirmative_06",
				"pdr_vw_affirmative_07",
				"pdr_vw_affirmative_08",
				"pdr_vw_affirmative_09",
				"pdr_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_vw_affirmative_01",
				"pdr_vw_affirmative_02",
				"pdr_vw_affirmative_03",
				"pdr_vw_affirmative_04",
				"pdr_vw_affirmative_05",
				"pdr_vw_affirmative_06",
				"pdr_vw_affirmative_07",
				"pdr_vw_affirmative_08",
				"pdr_vw_affirmative_09",
				"pdr_vw_affirmative_10"
			},
			sound_events_duration = {
				0.85399997234345,
				1.1022917032242,
				1.1888333559036,
				1.858479142189,
				0.89912497997284,
				0.91418749094009,
				1.2264374494553,
				1.6327291727066,
				1.7757083177566,
				1.114458322525
			}
		},
		pdr_vw_answer_ping = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pdr_vw_answer_ping_01",
				"pdr_vw_answer_ping_02",
				"pdr_vw_answer_ping_03",
				"pdr_vw_answer_ping_04",
				"pdr_vw_answer_ping_05",
				"pdr_vw_answer_ping_06",
				"pdr_vw_answer_ping_07",
				"pdr_vw_answer_ping_08",
				"pdr_vw_answer_ping_09",
				"pdr_vw_answer_ping_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_vw_answer_ping_01",
				"pdr_vw_answer_ping_02",
				"pdr_vw_answer_ping_03",
				"pdr_vw_answer_ping_04",
				"pdr_vw_answer_ping_05",
				"pdr_vw_answer_ping_06",
				"pdr_vw_answer_ping_07",
				"pdr_vw_answer_ping_08",
				"pdr_vw_answer_ping_09",
				"pdr_vw_answer_ping_10"
			},
			sound_events_duration = {
				1.3205624818802,
				0.78097915649414,
				0.97268748283386,
				1.9193124771118,
				1.5901458263397,
				1.2148125171661,
				2.0552084445953,
				1.6849792003632,
				1.3354375362396,
				1.574041724205
			}
		},
		pdr_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pdr_vw_attack_now_01",
				"pdr_vw_attack_now_02",
				"pdr_vw_attack_now_03",
				"pdr_vw_attack_now_04",
				"pdr_vw_attack_now_05",
				"pdr_vw_attack_now_06",
				"pdr_vw_attack_now_07",
				"pdr_vw_attack_now_08",
				"pdr_vw_attack_now_09",
				"pdr_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_vw_attack_now_01",
				"pdr_vw_attack_now_02",
				"pdr_vw_attack_now_03",
				"pdr_vw_attack_now_04",
				"pdr_vw_attack_now_05",
				"pdr_vw_attack_now_06",
				"pdr_vw_attack_now_07",
				"pdr_vw_attack_now_08",
				"pdr_vw_attack_now_09",
				"pdr_vw_attack_now_10"
			},
			sound_events_duration = {
				0.93062502145767,
				1.3266249895096,
				1.5896874666214,
				0.99566668272018,
				1.0098333358765,
				1.2672291994095,
				1.7254583835602,
				1.3074791431427,
				2.2233126163483,
				1.8131458759308
			}
		},
		pdr_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pdr_vw_cover_me_01",
				"pdr_vw_cover_me_02",
				"pdr_vw_cover_me_03",
				"pdr_vw_cover_me_04",
				"pdr_vw_cover_me_05",
				"pdr_vw_cover_me_06",
				"pdr_vw_cover_me_07",
				"pdr_vw_cover_me_08",
				"pdr_vw_cover_me_09",
				"pdr_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_vw_cover_me_01",
				"pdr_vw_cover_me_02",
				"pdr_vw_cover_me_03",
				"pdr_vw_cover_me_04",
				"pdr_vw_cover_me_05",
				"pdr_vw_cover_me_06",
				"pdr_vw_cover_me_07",
				"pdr_vw_cover_me_08",
				"pdr_vw_cover_me_09",
				"pdr_vw_cover_me_10"
			},
			sound_events_duration = {
				1.1092292070389,
				1.0202292203903,
				1.1795417070389,
				1.2581458091736,
				1.5613958835602,
				1.6688958406448,
				1.6915208101273,
				2.3251457214356,
				1.1031666994095,
				1.62600004673
			}
		},
		pdr_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pdr_vw_gather_01",
				"pdr_vw_gather_02",
				"pdr_vw_gather_03",
				"pdr_vw_gather_04",
				"pdr_vw_gather_05",
				"pdr_vw_gather_06",
				"pdr_vw_gather_07",
				"pdr_vw_gather_08",
				"pdr_vw_gather_09",
				"pdr_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_vw_gather_01",
				"pdr_vw_gather_02",
				"pdr_vw_gather_03",
				"pdr_vw_gather_04",
				"pdr_vw_gather_05",
				"pdr_vw_gather_06",
				"pdr_vw_gather_07",
				"pdr_vw_gather_08",
				"pdr_vw_gather_09",
				"pdr_vw_gather_10"
			},
			sound_events_duration = {
				0.69693750143051,
				1.2866250276566,
				0.76535415649414,
				0.90906250476837,
				1.7456041574478,
				1.3769375085831,
				1.4916042089462,
				1.3071875572205,
				1.6279791593552,
				1.2289791107178
			}
		},
		pdr_vw_go_there = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pdr_vw_go_there_01",
				"pdr_vw_go_there_02",
				"pdr_vw_go_there_03",
				"pdr_vw_go_there_04",
				"pdr_vw_go_there_05",
				"pdr_vw_go_there_06",
				"pdr_vw_go_there_07",
				"pdr_vw_go_there_08",
				"pdr_vw_go_there_09",
				"pdr_vw_go_there_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_vw_go_there_01",
				"pdr_vw_go_there_02",
				"pdr_vw_go_there_03",
				"pdr_vw_go_there_04",
				"pdr_vw_go_there_05",
				"pdr_vw_go_there_06",
				"pdr_vw_go_there_07",
				"pdr_vw_go_there_08",
				"pdr_vw_go_there_09",
				"pdr_vw_go_there_10"
			},
			sound_events_duration = {
				1.5223333835602,
				1.3826874494553,
				1.5191041231155,
				1.7289375066757,
				1.7004791498184,
				1.8264166116715,
				2.3670625686645,
				1.1871458292007,
				1.9268958568573,
				0.74906247854233
			}
		},
		pdr_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pdr_vw_negation_01",
				"pdr_vw_negation_02",
				"pdr_vw_negation_03",
				"pdr_vw_negation_04",
				"pdr_vw_negation_05",
				"pdr_vw_negation_06",
				"pdr_vw_negation_07",
				"pdr_vw_negation_08",
				"pdr_vw_negation_09",
				"pdr_vw_negation_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_vw_negation_01",
				"pdr_vw_negation_02",
				"pdr_vw_negation_03",
				"pdr_vw_negation_04",
				"pdr_vw_negation_05",
				"pdr_vw_negation_06",
				"pdr_vw_negation_07",
				"pdr_vw_negation_08",
				"pdr_vw_negation_09",
				"pdr_vw_negation_10"
			},
			sound_events_duration = {
				0.4527083337307,
				1.1361666917801,
				1.4145624637604,
				1.2903958559036,
				1.7042291164398,
				1.7493749856949,
				1.4605417251587,
				1.4483958482742,
				1.7568957805634,
				1.5687916278839
			}
		},
		pdr_vw_objective_in_sight = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pdr_vw_objective_in_sight_01",
				"pdr_vw_objective_in_sight_02",
				"pdr_vw_objective_in_sight_03",
				"pdr_vw_objective_in_sight_04",
				"pdr_vw_objective_in_sight_05",
				"pdr_vw_objective_in_sight_06",
				"pdr_vw_objective_in_sight_07",
				"pdr_vw_objective_in_sight_08",
				"pdr_vw_objective_in_sight_09",
				"pdr_vw_objective_in_sight_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_vw_objective_in_sight_01",
				"pdr_vw_objective_in_sight_02",
				"pdr_vw_objective_in_sight_03",
				"pdr_vw_objective_in_sight_04",
				"pdr_vw_objective_in_sight_05",
				"pdr_vw_objective_in_sight_06",
				"pdr_vw_objective_in_sight_07",
				"pdr_vw_objective_in_sight_08",
				"pdr_vw_objective_in_sight_09",
				"pdr_vw_objective_in_sight_10"
			},
			sound_events_duration = {
				1.557000041008,
				2.2374582290649,
				1.3622291088104,
				2.3962292671204,
				1.9630833864212,
				2.0790417194366,
				3.1857917308807,
				1.7673958539963,
				1.8910207748413,
				1.8203333616257
			}
		},
		pdr_vw_thank_you = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pdr_vw_thank_you_01",
				"pdr_vw_thank_you_02",
				"pdr_vw_thank_you_03",
				"pdr_vw_thank_you_04",
				"pdr_vw_thank_you_05",
				"pdr_vw_thank_you_06",
				"pdr_vw_thank_you_07",
				"pdr_vw_thank_you_08",
				"pdr_vw_thank_you_09",
				"pdr_vw_thank_you_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_vw_thank_you_01",
				"pdr_vw_thank_you_02",
				"pdr_vw_thank_you_03",
				"pdr_vw_thank_you_04",
				"pdr_vw_thank_you_05",
				"pdr_vw_thank_you_06",
				"pdr_vw_thank_you_07",
				"pdr_vw_thank_you_08",
				"pdr_vw_thank_you_09",
				"pdr_vw_thank_you_10"
			},
			sound_events_duration = {
				1.2268542051315,
				1.1733332872391,
				1.041312456131,
				0.78333336114883,
				0.88985419273376,
				0.6738333106041,
				0.96558332443237,
				1.1904166936874,
				1.5051457881927,
				1.1336041688919
			}
		},
		pdr_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pdr_vw_wait_01",
				"pdr_vw_wait_02",
				"pdr_vw_wait_03",
				"pdr_vw_wait_04",
				"pdr_vw_wait_05",
				"pdr_vw_wait_06",
				"pdr_vw_wait_07",
				"pdr_vw_wait_08",
				"pdr_vw_wait_09",
				"pdr_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_vw_wait_01",
				"pdr_vw_wait_02",
				"pdr_vw_wait_03",
				"pdr_vw_wait_04",
				"pdr_vw_wait_05",
				"pdr_vw_wait_06",
				"pdr_vw_wait_07",
				"pdr_vw_wait_08",
				"pdr_vw_wait_09",
				"pdr_vw_wait_10"
			},
			sound_events_duration = {
				0.8768749833107,
				1.4595832824707,
				1.7282916307449,
				0.85141664743423,
				1.2106666564941,
				2.353437423706,
				1.0268125534058,
				1.5387707948685,
				1.402999997139,
				2.113979101181
			}
		},
		pes_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pes_vw_affirmative_01",
				"pes_vw_affirmative_02",
				"pes_vw_affirmative_03",
				"pes_vw_affirmative_04",
				"pes_vw_affirmative_05",
				"pes_vw_affirmative_06",
				"pes_vw_affirmative_07",
				"pes_vw_affirmative_08",
				"pes_vw_affirmative_09",
				"pes_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_vw_affirmative_01",
				"pes_vw_affirmative_02",
				"pes_vw_affirmative_03",
				"pes_vw_affirmative_04",
				"pes_vw_affirmative_05",
				"pes_vw_affirmative_06",
				"pes_vw_affirmative_07",
				"pes_vw_affirmative_08",
				"pes_vw_affirmative_09",
				"pes_vw_affirmative_10"
			},
			sound_events_duration = {
				0.70999997854233,
				0.71799999475479,
				0.539979159832,
				1.2589792013168,
				0.57300001382828,
				0.48597916960716,
				0.36197915673256,
				0.97500002384186,
				0.81597918272018,
				0.48100000619888
			}
		},
		pes_vw_answer_ping = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pes_vw_answer_ping_01",
				"pes_vw_answer_ping_02",
				"pes_vw_answer_ping_03",
				"pes_vw_answer_ping_04",
				"pes_vw_answer_ping_05",
				"pes_vw_answer_ping_06",
				"pes_vw_answer_ping_07",
				"pes_vw_answer_ping_08",
				"pes_vw_answer_ping_09",
				"pes_vw_answer_ping_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_vw_answer_ping_01",
				"pes_vw_answer_ping_02",
				"pes_vw_answer_ping_03",
				"pes_vw_answer_ping_04",
				"pes_vw_answer_ping_05",
				"pes_vw_answer_ping_06",
				"pes_vw_answer_ping_07",
				"pes_vw_answer_ping_08",
				"pes_vw_answer_ping_09",
				"pes_vw_answer_ping_10"
			},
			sound_events_duration = {
				1.3189791440964,
				0.51800000667572,
				0.5450000166893,
				1.5559791326523,
				1.2619999647141,
				0.95097917318344,
				1.0629999637604,
				0.90597915649414,
				1.3889791965485,
				1.743979215622
			}
		},
		pes_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pes_vw_attack_now_01",
				"pes_vw_attack_now_02",
				"pes_vw_attack_now_03",
				"pes_vw_attack_now_04",
				"pes_vw_attack_now_05",
				"pes_vw_attack_now_06",
				"pes_vw_attack_now_07",
				"pes_vw_attack_now_08",
				"pes_vw_attack_now_09",
				"pes_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_vw_attack_now_01",
				"pes_vw_attack_now_02",
				"pes_vw_attack_now_03",
				"pes_vw_attack_now_04",
				"pes_vw_attack_now_05",
				"pes_vw_attack_now_06",
				"pes_vw_attack_now_07",
				"pes_vw_attack_now_08",
				"pes_vw_attack_now_09",
				"pes_vw_attack_now_10"
			},
			sound_events_duration = {
				1.0119999647141,
				0.9549999833107,
				1.7869791984558,
				1.1909999847412,
				1.7409791946411,
				1.3709791898727,
				1.9780000448227,
				1.0249999761581,
				1.777999997139,
				1.4290000200272
			}
		},
		pes_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pes_vw_cover_me_01",
				"pes_vw_cover_me_02",
				"pes_vw_cover_me_03",
				"pes_vw_cover_me_04",
				"pes_vw_cover_me_05",
				"pes_vw_cover_me_06",
				"pes_vw_cover_me_07",
				"pes_vw_cover_me_08",
				"pes_vw_cover_me_09",
				"pes_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_vw_cover_me_01",
				"pes_vw_cover_me_02",
				"pes_vw_cover_me_03",
				"pes_vw_cover_me_04",
				"pes_vw_cover_me_05",
				"pes_vw_cover_me_06",
				"pes_vw_cover_me_07",
				"pes_vw_cover_me_08",
				"pes_vw_cover_me_09",
				"pes_vw_cover_me_10"
			},
			sound_events_duration = {
				0.60799998044968,
				0.80299997329712,
				1.1200000047684,
				1.1440000534058,
				1.2020000219345,
				1.1870000362396,
				2.0409791469574,
				1.720999956131,
				1.779000043869,
				1.1089792251587
			}
		},
		pes_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pes_vw_gather_01",
				"pes_vw_gather_02",
				"pes_vw_gather_03",
				"pes_vw_gather_04",
				"pes_vw_gather_05",
				"pes_vw_gather_06",
				"pes_vw_gather_07",
				"pes_vw_gather_08",
				"pes_vw_gather_09",
				"pes_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_vw_gather_01",
				"pes_vw_gather_02",
				"pes_vw_gather_03",
				"pes_vw_gather_04",
				"pes_vw_gather_05",
				"pes_vw_gather_06",
				"pes_vw_gather_07",
				"pes_vw_gather_08",
				"pes_vw_gather_09",
				"pes_vw_gather_10"
			},
			sound_events_duration = {
				0.81300002336502,
				0.66799998283386,
				1.7469791173935,
				1.3509792089462,
				1.3579791784286,
				1.1339999437332,
				0.88899999856949,
				0.64297914505005,
				0.36797916889191,
				1.4079999923706
			}
		},
		pes_vw_go_there = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pes_vw_go_there_01",
				"pes_vw_go_there_02",
				"pes_vw_go_there_03",
				"pes_vw_go_there_04",
				"pes_vw_go_there_05",
				"pes_vw_go_there_06",
				"pes_vw_go_there_07",
				"pes_vw_go_there_08",
				"pes_vw_go_there_09",
				"pes_vw_go_there_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_vw_go_there_01",
				"pes_vw_go_there_02",
				"pes_vw_go_there_03",
				"pes_vw_go_there_04",
				"pes_vw_go_there_05",
				"pes_vw_go_there_06",
				"pes_vw_go_there_07",
				"pes_vw_go_there_08",
				"pes_vw_go_there_09",
				"pes_vw_go_there_10"
			},
			sound_events_duration = {
				0.95200002193451,
				1.3679791688919,
				1.5099999904633,
				1.727979183197,
				0.77300000190735,
				0.86799997091293,
				1.3009999990463,
				1.6410000324249,
				1.5520000457764,
				1.277999997139
			}
		},
		pes_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pes_vw_negation_01",
				"pes_vw_negation_02",
				"pes_vw_negation_03",
				"pes_vw_negation_04",
				"pes_vw_negation_05",
				"pes_vw_negation_06",
				"pes_vw_negation_07",
				"pes_vw_negation_08",
				"pes_vw_negation_09",
				"pes_vw_negation_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_vw_negation_01",
				"pes_vw_negation_02",
				"pes_vw_negation_03",
				"pes_vw_negation_04",
				"pes_vw_negation_05",
				"pes_vw_negation_06",
				"pes_vw_negation_07",
				"pes_vw_negation_08",
				"pes_vw_negation_09",
				"pes_vw_negation_10"
			},
			sound_events_duration = {
				0.44200000166893,
				1.198979139328,
				0.69997918605804,
				1.2089791297913,
				0.95497918128967,
				1.4880000352859,
				1.0609999895096,
				1.2189999818802,
				1.448979139328,
				1.6559791564941
			}
		},
		pes_vw_objective_in_sight = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pes_vw_objective_in_sight_01",
				"pes_vw_objective_in_sight_02",
				"pes_vw_objective_in_sight_03",
				"pes_vw_objective_in_sight_04",
				"pes_vw_objective_in_sight_05",
				"pes_vw_objective_in_sight_06",
				"pes_vw_objective_in_sight_07",
				"pes_vw_objective_in_sight_08",
				"pes_vw_objective_in_sight_09",
				"pes_vw_objective_in_sight_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_vw_objective_in_sight_01",
				"pes_vw_objective_in_sight_02",
				"pes_vw_objective_in_sight_03",
				"pes_vw_objective_in_sight_04",
				"pes_vw_objective_in_sight_05",
				"pes_vw_objective_in_sight_06",
				"pes_vw_objective_in_sight_07",
				"pes_vw_objective_in_sight_08",
				"pes_vw_objective_in_sight_09",
				"pes_vw_objective_in_sight_10"
			},
			sound_events_duration = {
				1.2580000162125,
				1.2929791212082,
				1.3769791126251,
				1.5589791536331,
				1.4739999771118,
				1.2209792137146,
				1.3539791107178,
				1.5439791679382,
				1.7009791135788,
				2.158979177475
			}
		},
		pes_vw_thank_you = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pes_vw_thank_you_01",
				"pes_vw_thank_you_02",
				"pes_vw_thank_you_03",
				"pes_vw_thank_you_04",
				"pes_vw_thank_you_05",
				"pes_vw_thank_you_06",
				"pes_vw_thank_you_07",
				"pes_vw_thank_you_08",
				"pes_vw_thank_you_09",
				"pes_vw_thank_you_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_vw_thank_you_01",
				"pes_vw_thank_you_02",
				"pes_vw_thank_you_03",
				"pes_vw_thank_you_04",
				"pes_vw_thank_you_05",
				"pes_vw_thank_you_06",
				"pes_vw_thank_you_07",
				"pes_vw_thank_you_08",
				"pes_vw_thank_you_09",
				"pes_vw_thank_you_10"
			},
			sound_events_duration = {
				0.47499999403954,
				0.91500002145767,
				0.7099791765213,
				0.50297915935516,
				1.0149999856949,
				2.0259792804718,
				1.243979215622,
				0.91197913885117,
				1.186979174614,
				0.8349791765213
			}
		},
		pes_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pes_vw_wait_01",
				"pes_vw_wait_02",
				"pes_vw_wait_03",
				"pes_vw_wait_04",
				"pes_vw_wait_05",
				"pes_vw_wait_06",
				"pes_vw_wait_07",
				"pes_vw_wait_08",
				"pes_vw_wait_09",
				"pes_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_vw_wait_01",
				"pes_vw_wait_02",
				"pes_vw_wait_03",
				"pes_vw_wait_04",
				"pes_vw_wait_05",
				"pes_vw_wait_06",
				"pes_vw_wait_07",
				"pes_vw_wait_08",
				"pes_vw_wait_09",
				"pes_vw_wait_10"
			},
			sound_events_duration = {
				0.58697915077209,
				0.67397916316986,
				1.2859791517258,
				1.1419999599457,
				1.562979221344,
				0.88400000333786,
				0.67297917604446,
				1.2120000123978,
				1.4669791460037,
				1.3719999790192
			}
		},
		pwe_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwe_vw_affirmative_01",
				"pwe_vw_affirmative_02",
				"pwe_vw_affirmative_03",
				"pwe_vw_affirmative_04",
				"pwe_vw_affirmative_05",
				"pwe_vw_affirmative_06",
				"pwe_vw_affirmative_07",
				"pwe_vw_affirmative_08",
				"pwe_vw_affirmative_09",
				"pwe_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_vw_affirmative_01",
				"pwe_vw_affirmative_02",
				"pwe_vw_affirmative_03",
				"pwe_vw_affirmative_04",
				"pwe_vw_affirmative_05",
				"pwe_vw_affirmative_06",
				"pwe_vw_affirmative_07",
				"pwe_vw_affirmative_08",
				"pwe_vw_affirmative_09",
				"pwe_vw_affirmative_10"
			},
			sound_events_duration = {
				0.88597917556763,
				1.7119791507721,
				1.164999961853,
				1.1080000400543,
				0.92199999094009,
				1.3489791154861,
				0.82300001382828,
				1.0060000419617,
				1.7760000228882,
				2.3499791622162
			}
		},
		pwe_vw_answer_ping = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwe_vw_answer_ping_01",
				"pwe_vw_answer_ping_02",
				"pwe_vw_answer_ping_03",
				"pwe_vw_answer_ping_04",
				"pwe_vw_answer_ping_05",
				"pwe_vw_answer_ping_06",
				"pwe_vw_answer_ping_07",
				"pwe_vw_answer_ping_08",
				"pwe_vw_answer_ping_09",
				"pwe_vw_answer_ping_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_vw_answer_ping_01",
				"pwe_vw_answer_ping_02",
				"pwe_vw_answer_ping_03",
				"pwe_vw_answer_ping_04",
				"pwe_vw_answer_ping_05",
				"pwe_vw_answer_ping_06",
				"pwe_vw_answer_ping_07",
				"pwe_vw_answer_ping_08",
				"pwe_vw_answer_ping_09",
				"pwe_vw_answer_ping_10"
			},
			sound_events_duration = {
				2.0839791297913,
				0.83399999141693,
				1.6169791221619,
				1.89297914505,
				2.2509999275208,
				2.6429791450501,
				1.879979133606,
				1.0110000371933,
				2.0780000686645,
				2.4499790668488
			}
		},
		pwe_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwe_vw_attack_now_01",
				"pwe_vw_attack_now_02",
				"pwe_vw_attack_now_03",
				"pwe_vw_attack_now_04",
				"pwe_vw_attack_now_05",
				"pwe_vw_attack_now_06",
				"pwe_vw_attack_now_07",
				"pwe_vw_attack_now_08",
				"pwe_vw_attack_now_09",
				"pwe_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_vw_attack_now_01",
				"pwe_vw_attack_now_02",
				"pwe_vw_attack_now_03",
				"pwe_vw_attack_now_04",
				"pwe_vw_attack_now_05",
				"pwe_vw_attack_now_06",
				"pwe_vw_attack_now_07",
				"pwe_vw_attack_now_08",
				"pwe_vw_attack_now_09",
				"pwe_vw_attack_now_10"
			},
			sound_events_duration = {
				1.8109999895096,
				0.74199998378754,
				0.84299999475479,
				1.1510000228882,
				1.4930000305176,
				1.2130000591278,
				1.8289791345596,
				1.8020000457764,
				0.96697914600372,
				1.1579999923706
			}
		},
		pwe_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwe_vw_cover_me_01",
				"pwe_vw_cover_me_02",
				"pwe_vw_cover_me_03",
				"pwe_vw_cover_me_04",
				"pwe_vw_cover_me_05",
				"pwe_vw_cover_me_06",
				"pwe_vw_cover_me_07",
				"pwe_vw_cover_me_08",
				"pwe_vw_cover_me_09",
				"pwe_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_vw_cover_me_01",
				"pwe_vw_cover_me_02",
				"pwe_vw_cover_me_03",
				"pwe_vw_cover_me_04",
				"pwe_vw_cover_me_05",
				"pwe_vw_cover_me_06",
				"pwe_vw_cover_me_07",
				"pwe_vw_cover_me_08",
				"pwe_vw_cover_me_09",
				"pwe_vw_cover_me_10"
			},
			sound_events_duration = {
				0.82700002193451,
				0.97997915744782,
				1.5939791202545,
				1.4649791717529,
				1.2949792146683,
				1.3099999427795,
				0.74599999189377,
				1.1779791116715,
				1.9589999914169,
				1.1939791440964
			}
		},
		pwe_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwe_vw_gather_01",
				"pwe_vw_gather_02",
				"pwe_vw_gather_03",
				"pwe_vw_gather_04",
				"pwe_vw_gather_05",
				"pwe_vw_gather_06",
				"pwe_vw_gather_07",
				"pwe_vw_gather_08",
				"pwe_vw_gather_09",
				"pwe_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_vw_gather_01",
				"pwe_vw_gather_02",
				"pwe_vw_gather_03",
				"pwe_vw_gather_04",
				"pwe_vw_gather_05",
				"pwe_vw_gather_06",
				"pwe_vw_gather_07",
				"pwe_vw_gather_08",
				"pwe_vw_gather_09",
				"pwe_vw_gather_10"
			},
			sound_events_duration = {
				0.93699997663498,
				1.3140000104904,
				1.7169791460037,
				0.79297918081284,
				0.71899998188019,
				1.5399792194366,
				2.3309791088104,
				1.936979174614,
				1.3550000190735,
				1.3200000524521
			}
		},
		pwe_vw_go_there = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwe_vw_go_there_01",
				"pwe_vw_go_there_02",
				"pwe_vw_go_there_03",
				"pwe_vw_go_there_04",
				"pwe_vw_go_there_05",
				"pwe_vw_go_there_06",
				"pwe_vw_go_there_07",
				"pwe_vw_go_there_08",
				"pwe_vw_go_there_09",
				"pwe_vw_go_there_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_vw_go_there_01",
				"pwe_vw_go_there_02",
				"pwe_vw_go_there_03",
				"pwe_vw_go_there_04",
				"pwe_vw_go_there_05",
				"pwe_vw_go_there_06",
				"pwe_vw_go_there_07",
				"pwe_vw_go_there_08",
				"pwe_vw_go_there_09",
				"pwe_vw_go_there_10"
			},
			sound_events_duration = {
				1.8509999513626,
				1.8400000333786,
				1.055999994278,
				1.557000041008,
				1.5479999780655,
				1.8079999685288,
				1.1790000200272,
				1.7459791898727,
				2.5349791049957,
				2.2880001068115
			}
		},
		pwe_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwe_vw_negation_01",
				"pwe_vw_negation_02",
				"pwe_vw_negation_03",
				"pwe_vw_negation_04",
				"pwe_vw_negation_05",
				"pwe_vw_negation_06",
				"pwe_vw_negation_07",
				"pwe_vw_negation_08",
				"pwe_vw_negation_09",
				"pwe_vw_negation_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_vw_negation_01",
				"pwe_vw_negation_02",
				"pwe_vw_negation_03",
				"pwe_vw_negation_04",
				"pwe_vw_negation_05",
				"pwe_vw_negation_06",
				"pwe_vw_negation_07",
				"pwe_vw_negation_08",
				"pwe_vw_negation_09",
				"pwe_vw_negation_10"
			},
			sound_events_duration = {
				0.63099998235703,
				0.93997919559479,
				1.3559999465942,
				1.0189791917801,
				1.4429792165756,
				1.095999956131,
				1.2399791479111,
				1.1720000505447,
				1.3029999732971,
				1.7050000429153
			}
		},
		pwe_vw_objective_in_sight = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwe_vw_objective_in_sight_01",
				"pwe_vw_objective_in_sight_02",
				"pwe_vw_objective_in_sight_03",
				"pwe_vw_objective_in_sight_04",
				"pwe_vw_objective_in_sight_05",
				"pwe_vw_objective_in_sight_06",
				"pwe_vw_objective_in_sight_07",
				"pwe_vw_objective_in_sight_08",
				"pwe_vw_objective_in_sight_09",
				"pwe_vw_objective_in_sight_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_vw_objective_in_sight_01",
				"pwe_vw_objective_in_sight_02",
				"pwe_vw_objective_in_sight_03",
				"pwe_vw_objective_in_sight_04",
				"pwe_vw_objective_in_sight_05",
				"pwe_vw_objective_in_sight_06",
				"pwe_vw_objective_in_sight_07",
				"pwe_vw_objective_in_sight_08",
				"pwe_vw_objective_in_sight_09",
				"pwe_vw_objective_in_sight_10"
			},
			sound_events_duration = {
				2.1389791965485,
				2.3069999217987,
				1.2829791307449,
				1.7719999551773,
				1.6259791851044,
				1.7560000419617,
				2.1219792366028,
				1.2979791164398,
				1.784979224205,
				2.3019790649414
			}
		},
		pwe_vw_thank_you = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwe_vw_thank_you_01",
				"pwe_vw_thank_you_02",
				"pwe_vw_thank_you_03",
				"pwe_vw_thank_you_04",
				"pwe_vw_thank_you_05",
				"pwe_vw_thank_you_06",
				"pwe_vw_thank_you_07",
				"pwe_vw_thank_you_08",
				"pwe_vw_thank_you_09",
				"pwe_vw_thank_you_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_vw_thank_you_01",
				"pwe_vw_thank_you_02",
				"pwe_vw_thank_you_03",
				"pwe_vw_thank_you_04",
				"pwe_vw_thank_you_05",
				"pwe_vw_thank_you_06",
				"pwe_vw_thank_you_07",
				"pwe_vw_thank_you_08",
				"pwe_vw_thank_you_09",
				"pwe_vw_thank_you_10"
			},
			sound_events_duration = {
				0.96700000762939,
				1.8990000486374,
				0.81297916173935,
				2.5529792308807,
				1.4859999418259,
				1.3279792070389,
				2.2399792671204,
				1.6590000391007,
				1.0799791812897,
				2.64097905159
			}
		},
		pwe_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwe_vw_wait_01",
				"pwe_vw_wait_02",
				"pwe_vw_wait_03",
				"pwe_vw_wait_04",
				"pwe_vw_wait_05",
				"pwe_vw_wait_06",
				"pwe_vw_wait_07",
				"pwe_vw_wait_08",
				"pwe_vw_wait_09",
				"pwe_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_vw_wait_01",
				"pwe_vw_wait_02",
				"pwe_vw_wait_03",
				"pwe_vw_wait_04",
				"pwe_vw_wait_05",
				"pwe_vw_wait_06",
				"pwe_vw_wait_07",
				"pwe_vw_wait_08",
				"pwe_vw_wait_09",
				"pwe_vw_wait_10"
			},
			sound_events_duration = {
				0.71299999952316,
				1.01797914505,
				1.3830000162125,
				1.2350000143051,
				1.8120000362396,
				1.7979791164398,
				2.2460000514984,
				2.3539791107178,
				1.3669999837875,
				2.1559998989105
			}
		},
		pwh_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwh_vw_affirmative_01",
				"pwh_vw_affirmative_02",
				"pwh_vw_affirmative_03",
				"pwh_vw_affirmative_04",
				"pwh_vw_affirmative_05",
				"pwh_vw_affirmative_06",
				"pwh_vw_affirmative_07",
				"pwh_vw_affirmative_08",
				"pwh_vw_affirmative_09",
				"pwh_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_vw_affirmative_01",
				"pwh_vw_affirmative_02",
				"pwh_vw_affirmative_03",
				"pwh_vw_affirmative_04",
				"pwh_vw_affirmative_05",
				"pwh_vw_affirmative_06",
				"pwh_vw_affirmative_07",
				"pwh_vw_affirmative_08",
				"pwh_vw_affirmative_09",
				"pwh_vw_affirmative_10"
			},
			sound_events_duration = {
				0.92799997329712,
				1.0729999542236,
				1.7519999742508,
				1.0110000371933,
				2.7369792461395,
				0.72797918319702,
				1.1319999694824,
				1.3569999933243,
				1.6829792261124,
				1.7329791784286
			}
		},
		pwh_vw_answer_ping = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwh_vw_answer_ping_01",
				"pwh_vw_answer_ping_02",
				"pwh_vw_answer_ping_03",
				"pwh_vw_answer_ping_04",
				"pwh_vw_answer_ping_05",
				"pwh_vw_answer_ping_06",
				"pwh_vw_answer_ping_07",
				"pwh_vw_answer_ping_08",
				"pwh_vw_answer_ping_09",
				"pwh_vw_answer_ping_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_vw_answer_ping_01",
				"pwh_vw_answer_ping_02",
				"pwh_vw_answer_ping_03",
				"pwh_vw_answer_ping_04",
				"pwh_vw_answer_ping_05",
				"pwh_vw_answer_ping_06",
				"pwh_vw_answer_ping_07",
				"pwh_vw_answer_ping_08",
				"pwh_vw_answer_ping_09",
				"pwh_vw_answer_ping_10"
			},
			sound_events_duration = {
				1.7120000123978,
				0.60297918319702,
				0.96397918462753,
				1.2469791173935,
				1.6549791097641,
				0.89997917413712,
				1.6519792079925,
				2.9619791507721,
				2.5089790821075,
				3.8019790649414
			}
		},
		pwh_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwh_vw_attack_now_01",
				"pwh_vw_attack_now_02",
				"pwh_vw_attack_now_03",
				"pwh_vw_attack_now_04",
				"pwh_vw_attack_now_05",
				"pwh_vw_attack_now_06",
				"pwh_vw_attack_now_07",
				"pwh_vw_attack_now_08",
				"pwh_vw_attack_now_09",
				"pwh_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_vw_attack_now_01",
				"pwh_vw_attack_now_02",
				"pwh_vw_attack_now_03",
				"pwh_vw_attack_now_04",
				"pwh_vw_attack_now_05",
				"pwh_vw_attack_now_06",
				"pwh_vw_attack_now_07",
				"pwh_vw_attack_now_08",
				"pwh_vw_attack_now_09",
				"pwh_vw_attack_now_10"
			},
			sound_events_duration = {
				1.5889999866486,
				2.9989790916443,
				3.131979227066,
				1.2660000324249,
				2.308000087738,
				2.1110000610352,
				1.8109791278839,
				4.0039792060852,
				2.2429790496826,
				2.4739792346954
			}
		},
		pwh_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwh_vw_cover_me_01",
				"pwh_vw_cover_me_02",
				"pwh_vw_cover_me_03",
				"pwh_vw_cover_me_04",
				"pwh_vw_cover_me_05",
				"pwh_vw_cover_me_06",
				"pwh_vw_cover_me_07",
				"pwh_vw_cover_me_08",
				"pwh_vw_cover_me_09",
				"pwh_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_vw_cover_me_01",
				"pwh_vw_cover_me_02",
				"pwh_vw_cover_me_03",
				"pwh_vw_cover_me_04",
				"pwh_vw_cover_me_05",
				"pwh_vw_cover_me_06",
				"pwh_vw_cover_me_07",
				"pwh_vw_cover_me_08",
				"pwh_vw_cover_me_09",
				"pwh_vw_cover_me_10"
			},
			sound_events_duration = {
				1.5779792070389,
				1.8729791641235,
				2.8069791793823,
				1.4869791269302,
				3.6559791564941,
				1.7729791402817,
				0.56697916984558,
				1.1179791688919,
				1.9239791631699,
				1.0310000181198
			}
		},
		pwh_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwh_vw_gather_01",
				"pwh_vw_gather_02",
				"pwh_vw_gather_03",
				"pwh_vw_gather_04",
				"pwh_vw_gather_05",
				"pwh_vw_gather_06",
				"pwh_vw_gather_07",
				"pwh_vw_gather_08",
				"pwh_vw_gather_09",
				"pwh_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_vw_gather_01",
				"pwh_vw_gather_02",
				"pwh_vw_gather_03",
				"pwh_vw_gather_04",
				"pwh_vw_gather_05",
				"pwh_vw_gather_06",
				"pwh_vw_gather_07",
				"pwh_vw_gather_08",
				"pwh_vw_gather_09",
				"pwh_vw_gather_10"
			},
			sound_events_duration = {
				0.93699997663498,
				0.65799999237061,
				0.914979159832,
				1.7399791479111,
				1.0469791889191,
				2.8559792041779,
				1.9059791564941,
				2.0089790821075,
				1.6139999628067,
				1.6169791221619
			}
		},
		pwh_vw_go_there = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwh_vw_go_there_01",
				"pwh_vw_go_there_02",
				"pwh_vw_go_there_03",
				"pwh_vw_go_there_04",
				"pwh_vw_go_there_05",
				"pwh_vw_go_there_06",
				"pwh_vw_go_there_07",
				"pwh_vw_go_there_08",
				"pwh_vw_go_there_09",
				"pwh_vw_go_there_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_vw_go_there_01",
				"pwh_vw_go_there_02",
				"pwh_vw_go_there_03",
				"pwh_vw_go_there_04",
				"pwh_vw_go_there_05",
				"pwh_vw_go_there_06",
				"pwh_vw_go_there_07",
				"pwh_vw_go_there_08",
				"pwh_vw_go_there_09",
				"pwh_vw_go_there_10"
			},
			sound_events_duration = {
				1.074979186058,
				1.9500000476837,
				0.84399998188019,
				1.164999961853,
				1.7699999809265,
				1.9399791955948,
				2.9139790534973,
				0.77899998426437,
				1.5620000362396,
				1.6549999713898
			}
		},
		pwh_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwh_vw_negation_01",
				"pwh_vw_negation_02",
				"pwh_vw_negation_03",
				"pwh_vw_negation_04",
				"pwh_vw_negation_05",
				"pwh_vw_negation_06",
				"pwh_vw_negation_07",
				"pwh_vw_negation_08",
				"pwh_vw_negation_09",
				"pwh_vw_negation_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_vw_negation_01",
				"pwh_vw_negation_02",
				"pwh_vw_negation_03",
				"pwh_vw_negation_04",
				"pwh_vw_negation_05",
				"pwh_vw_negation_06",
				"pwh_vw_negation_07",
				"pwh_vw_negation_08",
				"pwh_vw_negation_09",
				"pwh_vw_negation_10"
			},
			sound_events_duration = {
				0.69999998807907,
				1.1039791107178,
				1.2940000295639,
				1.1789791584015,
				2.6279792785645,
				0.93797916173935,
				2.7919790744781,
				3.006979227066,
				1.7189791202545,
				2.4989790916443
			}
		},
		pwh_vw_objective_in_sight = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwh_vw_objective_in_sight_01",
				"pwh_vw_objective_in_sight_02",
				"pwh_vw_objective_in_sight_03",
				"pwh_vw_objective_in_sight_04",
				"pwh_vw_objective_in_sight_05",
				"pwh_vw_objective_in_sight_06",
				"pwh_vw_objective_in_sight_07",
				"pwh_vw_objective_in_sight_08",
				"pwh_vw_objective_in_sight_09",
				"pwh_vw_objective_in_sight_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_vw_objective_in_sight_01",
				"pwh_vw_objective_in_sight_02",
				"pwh_vw_objective_in_sight_03",
				"pwh_vw_objective_in_sight_04",
				"pwh_vw_objective_in_sight_05",
				"pwh_vw_objective_in_sight_06",
				"pwh_vw_objective_in_sight_07",
				"pwh_vw_objective_in_sight_08",
				"pwh_vw_objective_in_sight_09",
				"pwh_vw_objective_in_sight_10"
			},
			sound_events_duration = {
				1.2179791927338,
				2.1999790668488,
				2.8669791221619,
				1.9269791841507,
				2.6449792385101,
				1.76797914505,
				2.4189791679382,
				1.754979133606,
				1.8839792013168,
				2.1519792079926
			}
		},
		pwh_vw_thank_you = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwh_vw_thank_you_01",
				"pwh_vw_thank_you_02",
				"pwh_vw_thank_you_03",
				"pwh_vw_thank_you_04",
				"pwh_vw_thank_you_05",
				"pwh_vw_thank_you_06",
				"pwh_vw_thank_you_07",
				"pwh_vw_thank_you_08",
				"pwh_vw_thank_you_09",
				"pwh_vw_thank_you_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_vw_thank_you_01",
				"pwh_vw_thank_you_02",
				"pwh_vw_thank_you_03",
				"pwh_vw_thank_you_04",
				"pwh_vw_thank_you_05",
				"pwh_vw_thank_you_06",
				"pwh_vw_thank_you_07",
				"pwh_vw_thank_you_08",
				"pwh_vw_thank_you_09",
				"pwh_vw_thank_you_10"
			},
			sound_events_duration = {
				1.311979174614,
				1.2730000019074,
				1.7979791164398,
				3.1689999103546,
				1.0939791202545,
				2.0090000629425,
				2.183000087738,
				1.9949791431427,
				2.3859791755676,
				1.465979218483
			}
		},
		pwh_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo",
			sound_events_n = 10,
			category = "special_occasion",
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
				"pwh_vw_wait_01",
				"pwh_vw_wait_02",
				"pwh_vw_wait_03",
				"pwh_vw_wait_04",
				"pwh_vw_wait_05",
				"pwh_vw_wait_06",
				"pwh_vw_wait_07",
				"pwh_vw_wait_08",
				"pwh_vw_wait_09",
				"pwh_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_vw_wait_01",
				"pwh_vw_wait_02",
				"pwh_vw_wait_03",
				"pwh_vw_wait_04",
				"pwh_vw_wait_05",
				"pwh_vw_wait_06",
				"pwh_vw_wait_07",
				"pwh_vw_wait_08",
				"pwh_vw_wait_09",
				"pwh_vw_wait_10"
			},
			sound_events_duration = {
				1.4559999704361,
				1.0429791212082,
				1.7469791173935,
				0.42197915911675,
				1.3549791574478,
				1.7639791965485,
				2.4500000476837,
				2.044979095459,
				3.3089792728424,
				2.379979133606
			}
		}
	})
end
