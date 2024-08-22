local function count_event_breed(breed_name)
	return Managers.state.conflict:count_units_by_breed_during_event(breed_name)
end

local weighted_random_terror_events
local HARDEST = 5
local CATACLYSM = 6
local terror_event_blueprints = {
	canyon_bell_event = {
		{
			"set_master_event_running",
			name = "canyon_bell_event"
		},
		{
			"set_time_challenge",
			time_challenge_name = "bell_speed_event"
		},
		{
			"set_time_challenge",
			time_challenge_name = "bell_speed_event_cata"
		},
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "canyon_bell_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "canyon_bell_event",
			composition_type = "plague_monks_small"
		},
		{
			"event_horde",
			spawner_id = "canyon_bell_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_slave") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "canyon_bell_event_done"
		}
	},
	canyon_ogre_boss = {
		{
			"spawn_at_raw",
			spawner_id = "canyon_ogre_boss",
			breed_name = "skaven_rat_ogre"
		}
	},
	bell_event_two = {
		{
			"set_master_event_running",
			name = "military_courtyard"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_military_courtyard_plague_monks"
		},
		{
			"event_horde",
			limit_spawners = 8,
			composition_type = "event_small"
		}
	},
	canyon_escape_event = {
		{
			"set_master_event_running",
			name = "canyon_escape_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "canyon_escape_event",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_specials",
			enable = true
		},
		{
			"control_pacing",
			enable = false
		}
	},
	canyon_escape_event_completion_check = {
		{
			"has_completed_time_challenge",
			time_challenge_name = "bell_speed_event"
		},
		{
			"has_completed_time_challenge",
			time_challenge_name = "bell_speed_event_cata"
		}
	},
	bell_pvp_event_su01_01 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_medium_shield"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_small"
		}
	},
	bell_pvp_event_su01_02 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_medium_shield"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_medium"
		}
	},
	bell_pvp_event_su01_03 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_small_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_small_chaos"
		}
	},
	bell_pvp_event_su01_04 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_extra_spice_medium"
		}
	},
	bell_pvp_event_su02_01 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_extra_spice_medium"
		}
	},
	bell_pvp_event_su02_02 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_large_chaos"
		}
	},
	bell_pvp_event_su02_03 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_chaos_extra_spice_small"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "chaos_berzerkers_medium"
		}
	},
	bell_pvp_event_su02_04 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 1,
			composition_type = "chaos_warriors"
		}
	},
	bell_pvp_event_su03_01 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 1,
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 1,
			composition_type = "chaos_warriors"
		}
	},
	bell_pvp_event_su03_02 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_medium_shield"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_medium"
		},
		{
			"event_horde",
			limit_spawners = 6,
			composition_type = "event_medium_shield"
		}
	},
	bell_pvp_event_su03_03 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_medium_chaos"
		}
	},
	bell_pvp_event_su03_04 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_small_chaos"
		}
	},
	bell_pvp_event_su04_01 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 1,
			composition_type = "chaos_warriors"
		}
	},
	bell_pvp_event_su04_02 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "chaos_berzerkers_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "chaos_shields"
		}
	},
	bell_pvp_event_su04_03 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_medium_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_large_chaos"
		}
	},
	bell_pvp_event_su04_04 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "plague_monks_medium"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_small"
		}
	},
	bell_pvp_event_su05_01 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "plague_monks_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_small"
		}
	},
	bell_pvp_event_su05_02 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "chaos_raiders_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_chaos_extra_spice_medium"
		}
	},
	bell_pvp_event_su05_03 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "event_medium_shield"
		},
		{
			"event_horde",
			limit_spawners = 6,
			composition_type = "event_large"
		}
	},
	bell_pvp_event_su05_04 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_large_chaos"
		}
	},
	bell_pvp_event_su06_01 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 4,
			composition_type = "event_large_chaos"
		}
	},
	bell_pvp_event_su06_02 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 6,
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 6,
			composition_type = "event_large"
		}
	},
	bell_pvp_event_su06_03 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "chaos_berzerkers_medium"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "chaos_shields"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "chaos_warriors"
		}
	},
	bell_pvp_event_su06_04 = {
		{
			"set_master_event_running",
			name = "horde_surge_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "chaos_raiders_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "chaos_warriors"
		},
		{
			"event_horde",
			limit_spawners = 2,
			composition_type = "chaos_warriors"
		}
	}
}

return terror_event_blueprints, weighted_random_terror_events
