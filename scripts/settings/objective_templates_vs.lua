local ObjectiveTypes = require("scripts/entity_system/systems/objective/objective_types")

VersusObjectiveSettings = {
	bell_pvp = {
		num_sets = 2,
		round_timer = 1800,
		objective_lists = {
			{
				{
					versus_volume_objective_SZ01 = {
						description = "level_objective_description_vs_safe_zone",
						score_for_completion = 0,
						volume_type = "any_alive",
						volume_name = "versus_bell_reach_SZ_01",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_volume_objective_01 = {
						description = "level_objective_description_bell_01",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_bell_reach_01",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_capture_objective_01 = {
						description = "level_objective_description_bell_02",
						num_sections = 2,
						play_arrive_vo = true,
						capture_time = 120,
						play_complete_vo = true,
						score_per_section = 1,
						objective_type = ObjectiveTypes.objective_capture_point,
						almost_done = function (self, main_objectives, sub_objectives, shared_objective_data)
							local objective_extension = main_objectives[1]

							if objective_extension:get_percentage_done() > 0.75 then
								return true
							end
						end
					}
				},
				{
					versus_volume_objective_alley = {
						description = "level_objective_description_bell_alley",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_bell_reach_alley",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_volume_objective_008 = {
						description = "level_objective_description_bell_02_B",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_bell_reach_01_B",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_volume_objective_02 = {
						description = "level_objective_description_bell_03",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_bell_reach_02",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_socket_objective_01 = {
						description = "level_objective_description_bell_04",
						score_per_socket = 2,
						play_complete_vo = true,
						close_to_win_on_section = 2,
						num_sockets = 3,
						play_arrive_vo = true,
						objective_type = ObjectiveTypes.objective_socket,
						almost_done = function (self, main_objectives, sub_objectives, shared_objective_data)
							local num_sockets = self.num_sockets
							local objective_extension = main_objectives[1]

							if objective_extension:get_percentage_done() >= (num_sockets - 1.5) / num_sockets then
								return true
							end
						end
					}
				},
				{
					versus_volume_objective_03 = {
						description = "level_objective_description_bell_05",
						volume_type = "all_alive",
						play_safehouse_vo = true,
						volume_name = "versus_reach_waystone_round_1",
						score_for_each_player_inside = 1,
						objective_type = ObjectiveTypes.objective_safehouse
					}
				}
			},
			{
				{
					versus_volume_objective_SZ02 = {
						description = "level_objective_description_vs_safe_zone",
						score_for_completion = 0,
						volume_type = "any_alive",
						volume_name = "versus_bell_reach_SZ_02",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_volume_objective_04 = {
						description = "level_objective_description_bell_06",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_bell_reach_03",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_payload_objective_01 = {
						description = "level_objective_description_bell_07",
						num_sections = 3,
						play_arrive_vo = true,
						score_per_section = 1,
						objective_type = ObjectiveTypes.objective_payload,
						almost_done = function (self, main_objectives, sub_objectives, shared_objective_data)
							local objective_extension = main_objectives[1]

							if objective_extension:get_percentage_done() > 0.8 then
								return true
							end
						end
					}
				},
				{
					versus_volume_objective_07_B = {
						description = "level_objective_description_bell_07_B",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_reach_objective_04_B",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_volume_objective_07 = {
						description = "level_objective_description_bell_08A",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_bell_reach_04",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_volume_objective_05 = {
						description = "level_objective_description_bell_08",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_reach_bell",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					sub_objective_container_01 = {
						description = "level_objective_description_bell_09",
						play_complete_vo = true,
						close_to_win_on_section = 3,
						play_arrive_vo = true,
						objective_type = ObjectiveTypes.objective_target,
						almost_done = function (self, main_objectives, sub_objectives, shared_objective_data)
							local objective_system = Managers.state.entity:system("versus_objective_system")
							local num_total = objective_system:num_current_sub_objectives()
							local num_completed = objective_system:num_current_completed_sub_objectives()

							if num_total - num_completed <= 3 then
								return true
							end
						end,
						sub_objectives = {
							sub_sub_objective_container_01 = {
								description = "level_objective_description_bell_09",
								score_for_completion = 3,
								sub_objectives = {
									versus_target_objective_bell_01 = {},
									versus_target_objective_bell_02 = {},
									versus_target_objective_bell_03 = {}
								}
							},
							sub_sub_objective_container_02 = {
								description = "level_objective_description_bell_09",
								score_for_completion = 3,
								sub_objectives = {
									versus_target_objective_bell_04 = {},
									versus_target_objective_bell_05 = {},
									versus_target_objective_bell_06 = {}
								}
							},
							sub_sub_objective_container_03 = {
								description = "level_objective_description_bell_09",
								score_for_completion = 3,
								sub_objectives = {
									versus_target_objective_bell_07 = {},
									versus_target_objective_bell_08 = {},
									versus_target_objective_bell_09 = {}
								}
							}
						}
					}
				},
				{
					versus_volume_objective_06 = {
						description = "level_objective_description_bell_10",
						volume_type = "all_alive",
						play_waystone_vo = true,
						volume_name = "versus_reach_waystone",
						score_for_each_player_inside = 1,
						objective_type = ObjectiveTypes.objective_safehouse
					}
				}
			}
		}
	},
	military_pvp = {
		num_sets = 3,
		round_timer = 1800,
		objective_lists = {
			{
				{
					versus_volume_objective_sz_01 = {
						description = "level_objective_description_vs_safe_zone",
						score_for_completion = 0,
						volume_type = "any_alive",
						volume_name = "versus_military_sz_01",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_volume_objective_franz = {
						description = "level_objective_description_military_01",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_military_reach_franz",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_mission_objective_barricade_sockets = {
						mission_name = "military_pvp_barrels",
						description = "level_objective_description_military_02",
						score_for_completion = 0,
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_socket_objective_blockade = {
						play_complete_vo = true,
						play_arrive_vo = true,
						description = "level_objective_description_military_02",
						objective_type = ObjectiveTypes.objective_socket,
						sub_objectives = {
							versus_socket_objective_blockade_01 = {
								num_sockets = 1,
								score_per_socket = 1
							},
							versus_socket_objective_blockade_02 = {
								num_sockets = 1,
								score_per_socket = 1
							}
						},
						almost_done = function (self, main_objectives, sub_objectives, shared_objective_data)
							local objective_system = Managers.state.entity:system("versus_objective_system")
							local num_total = objective_system:num_current_sub_objectives()
							local num_completed = objective_system:num_current_completed_sub_objectives()

							if num_total - num_completed <= 1 then
								return true
							end
						end
					}
				},
				{
					versus_volume_objective_02 = {
						description = "level_objective_description_military_03",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_military_reach_02",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_mission_objective_001 = {
						description = "level_objective_description_military_04",
						mission_name = "military_open_portcullis",
						play_arrive_vo = true,
						score_for_completion = 1,
						objective_type = ObjectiveTypes.objective_interact
					}
				},
				{
					sub_objective_container_001 = {
						play_complete_vo = true,
						play_arrive_vo = true,
						description = "level_objective_description_military_05",
						objective_type = ObjectiveTypes.objective_survive,
						sub_objectives = {
							versus_mission_objective_survive_courtyard_01 = {
								score_for_completion = 1,
								mission_name = "versus_mission_survive_courtyard_01"
							},
							versus_mission_objective_survive_courtyard_02 = {
								mission_name = "versus_mission_survive_courtyard_02",
								close_to_win_on_completion = true,
								score_for_completion = 1
							},
							versus_mission_objective_survive_courtyard_03 = {
								score_for_completion = 1,
								mission_name = "versus_mission_survive_courtyard_03"
							},
							versus_mission_objective_survive_courtyard_04 = {
								score_for_completion = 1,
								mission_name = "versus_mission_survive_courtyard_04"
							}
						},
						almost_done = function (self, main_objectives, sub_objectives, shared_objective_data)
							local objective_system = Managers.state.entity:system("versus_objective_system")
							local num_total = objective_system:num_current_sub_objectives()
							local num_completed = objective_system:num_current_completed_sub_objectives()

							if num_total - num_completed <= 1 then
								return true
							end
						end
					}
				},
				{
					versus_volume_objective_02B = {
						description = "level_objective_description_military_06",
						volume_type = "all_alive",
						play_safehouse_vo = true,
						volume_name = "versus_military_reach_02B",
						score_for_each_player_inside = 1,
						objective_type = ObjectiveTypes.objective_safehouse
					}
				}
			},
			{
				{
					versus_volume_objective_sz_02 = {
						description = "level_objective_description_vs_safe_zone",
						score_for_completion = 0,
						volume_type = "any_alive",
						volume_name = "versus_military_sz_02",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_volume_objective_03 = {
						description = "level_objective_description_military_07",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_military_reach_03",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_volume_objective_03_B = {
						description = "level_objective_description_military_07_B",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_military_reach_03_B",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_volume_objective_04 = {
						description = "level_objective_description_military_09",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_military_reach_04",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_capture_point_objective_003 = {
						description = "level_objective_description_military_10",
						num_sections = 4,
						play_arrive_vo = true,
						capture_time = 180,
						play_complete_vo = true,
						score_per_section = 1,
						objective_type = ObjectiveTypes.objective_capture_point,
						almost_done = function (self, main_objectives, sub_objectives, shared_objective_data)
							local objective_extension = main_objectives[1]

							if objective_extension:get_percentage_done() > 0.75 then
								return true
							end
						end
					}
				},
				{
					versus_volume_objective_05 = {
						description = "level_objective_description_military_11",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_military_reach_05",
						close_to_win_on_completion = true,
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_mission_objective_003 = {
						description = "level_objective_description_military_12",
						mission_name = "military_move_along_wall",
						play_arrive_vo = true,
						score_for_completion = 1,
						objective_type = ObjectiveTypes.objective_interact
					}
				},
				{
					versus_socket_objective_01 = {
						score_per_socket = 1,
						description = "level_objective_description_military_13",
						num_sockets = 1,
						objective_type = ObjectiveTypes.objective_socket
					}
				},
				{
					versus_mission_objective_003 = {
						mission_name = "military_open_gate",
						description = "level_objective_description_military_14",
						score_for_completion = 1,
						objective_type = ObjectiveTypes.objective_interact
					}
				},
				{
					versus_volume_objective_06 = {
						description = "level_objective_description_military_15",
						volume_type = "all_alive",
						play_safehouse_vo = true,
						volume_name = "versus_military_reach_06",
						score_for_each_player_inside = 1,
						objective_type = ObjectiveTypes.objective_safehouse
					}
				}
			},
			{
				{
					versus_volume_objective_sz_03 = {
						description = "level_objective_description_vs_safe_zone",
						score_for_completion = 0,
						volume_type = "any_alive",
						volume_name = "versus_military_sz_03",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_volume_objective_07 = {
						description = "level_objective_description_military_16",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_military_reach_07",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_capture_point_objective_004 = {
						description = "level_objective_description_military_17",
						num_sections = 5,
						play_arrive_vo = true,
						capture_time = 210,
						play_complete_vo = true,
						score_per_section = 1,
						objective_type = ObjectiveTypes.objective_capture_point,
						almost_done = function (self, main_objectives, sub_objectives, shared_objective_data)
							local objective_extension = main_objectives[1]

							if objective_extension:get_percentage_done() > 0.75 then
								return true
							end
						end
					}
				},
				{
					versus_volume_objective_08 = {
						description = "level_objective_description_military_18",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_military_reach_08",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_mission_objective_004 = {
						description = "level_objective_description_military_19",
						mission_name = "military_ring_bell",
						play_arrive_vo = true,
						score_for_completion = 1,
						objective_type = ObjectiveTypes.objective_interact
					}
				},
				{
					sub_objective_container_002 = {
						play_complete_vo = true,
						description = "level_objective_description_military_20",
						objective_type = ObjectiveTypes.objective_survive,
						sub_objectives = {
							versus_mission_objective_survive_temple_01 = {
								mission_name = "versus_mission_survive_temple_01",
								close_to_win_on_completion = true,
								score_for_completion = 1
							},
							versus_mission_objective_survive_temple_02 = {
								score_for_completion = 2,
								mission_name = "versus_mission_survive_temple_02"
							},
							versus_mission_objective_survive_temple_02_B = {
								score_for_completion = 1,
								mission_name = "versus_mission_survive_temple_02_B"
							},
							versus_mission_objective_survive_temple_03 = {
								score_for_completion = 1,
								mission_name = "versus_mission_survive_temple_03"
							},
							versus_mission_objective_survive_temple_04 = {
								score_for_completion = 1,
								mission_name = "versus_mission_survive_temple_04"
							},
							versus_mission_objective_survive_temple_05 = {
								score_for_completion = 1,
								mission_name = "versus_mission_survive_temple_05"
							},
							versus_mission_objective_survive_temple_06 = {
								score_for_completion = 1,
								mission_name = "versus_mission_survive_temple_06"
							},
							versus_mission_objective_survive_temple_07 = {
								score_for_completion = 1,
								mission_name = "versus_mission_survive_temple_07"
							},
							versus_mission_objective_survive_temple_08 = {
								score_for_completion = 1,
								mission_name = "versus_mission_survive_temple_08"
							}
						},
						almost_done = function (self, main_objectives, sub_objectives, shared_objective_data)
							local objective_system = Managers.state.entity:system("versus_objective_system")
							local num_total = objective_system:num_current_sub_objectives()
							local num_completed = objective_system:num_current_completed_sub_objectives()

							if num_total - num_completed <= 1 then
								return true
							end
						end
					}
				},
				{
					versus_volume_objective_09 = {
						description = "level_objective_description_military_21",
						volume_type = "all_alive",
						play_waystone_vo = true,
						volume_name = "versus_military_reach_09",
						score_for_each_player_inside = 1,
						objective_type = ObjectiveTypes.objective_safehouse
					}
				}
			}
		}
	},
	carousel_test_range = {
		num_sets = 3,
		round_timer = 1800,
		objective_lists = {
			{
				{
					versus_volume_objective_001 = {
						description = "level_objective_description_test_range_01",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_test_range_reach_001",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_capture_point_objective_001 = {
						description = "level_objective_description_test_range_02",
						num_sections = 2,
						capture_time = 120,
						score_per_section = 10,
						objective_type = ObjectiveTypes.objective_capture_point
					}
				},
				{
					versus_volume_objective_002 = {
						description = "level_objective_description_test_range_03",
						volume_type = "all_alive",
						volume_name = "versus_test_range_reach_002",
						score_for_each_player_inside = 1,
						objective_type = ObjectiveTypes.objective_reach
					}
				}
			},
			{
				{
					versus_volume_objective_003 = {
						description = "level_objective_description_test_range_04",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_test_range_reach_003",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_capture_point_objective_002 = {
						description = "level_objective_description_test_range_05",
						num_sections = 3,
						capture_time = 150,
						score_per_section = 1,
						objective_type = ObjectiveTypes.objective_capture_point
					}
				},
				{
					versus_volume_objective_004 = {
						description = "level_objective_description_test_range_06",
						volume_type = "all_alive",
						volume_name = "versus_test_range_reach_004",
						score_for_each_player_inside = 1,
						objective_type = ObjectiveTypes.objective_safehouse
					}
				}
			},
			{
				{
					versus_volume_objective_005 = {
						description = "level_objective_description_test_range_07",
						score_for_completion = 1,
						volume_type = "any_alive",
						volume_name = "versus_test_range_reach_005",
						objective_type = ObjectiveTypes.objective_reach
					}
				},
				{
					versus_capture_point_objective_003 = {
						description = "level_objective_description_test_range_08",
						num_sections = 4,
						capture_time = 180,
						score_per_section = 1,
						objective_type = ObjectiveTypes.objective_capture_point
					}
				},
				{
					versus_volume_objective_006 = {
						description = "level_objective_description_test_range_09",
						volume_type = "all_alive",
						play_safehouse_vo = true,
						volume_name = "versus_test_range_reach_006",
						score_for_each_player_inside = 1,
						objective_type = ObjectiveTypes.objective_reach
					}
				}
			}
		}
	}
}

local allowed_objective_terms = {
	capture_time = true,
	mission_name = true,
	play_safehouse_vo = true,
	play_waystone_vo = true,
	almost_done = true,
	score_for_each_player_inside = true,
	volume_name = true,
	num_sockets = true,
	score_per_socket = true,
	score_for_completion = true,
	play_arrive_vo = true,
	close_to_win_on_completion = true,
	description = true,
	num_sections = true,
	objective_type = true,
	sub_objectives = true,
	play_complete_vo = true,
	close_to_win_on_section = true,
	score_per_section = true,
	volume_type = {
		all_alive = true,
		any_alive = true
	}
}

local function nearest_word(bad_string, allowed_terms)
	local lowest_dist = 999
	local best_string

	for k, v in pairs(allowed_terms) do
		local dist = string.damerau_levenshtein_distance(k, bad_string, 5)

		if dist < lowest_dist then
			lowest_dist = dist
			best_string = k
		end
	end

	if best_string then
		return best_string
	end
end

local recursive_add_name

function recursive_add_name(data)
	local score = 0

	for objective_name, objective_data in pairs(data) do
		for k, v in pairs(objective_data) do
			local term = allowed_objective_terms[k]

			if not term then
				local close_string = nearest_word(k, allowed_objective_terms)

				if close_string then
					fassert(false, "Bad objective keyword found in objective_templates_vs.lua: '%s', did you mean '%s' ?", k, close_string)
				else
					fassert(false, "Bad objective keyword found objective_templates_vs.lua: '%s', was it misspelled?", k)
				end
			end

			if type(term) == "table" then
				local close_string = nearest_word(v, term)

				fassert(term[v], "Bad objective: Objective keyword '%s' is set to '%s' which does not exist or is misspelled. Did you mean '%s' ?", k, v, close_string)
			end
		end

		GameModeSettings.versus.objective_names[objective_name] = true

		if objective_data.sub_objectives then
			score = score + recursive_add_name(objective_data.sub_objectives)
		end

		score = score + (objective_data.score_for_completion or 0)

		local score_per_section = objective_data.score_per_section

		if score_per_section then
			score = score + score_per_section * objective_data.num_sections
		end

		local score_per_socket = objective_data.score_per_socket

		if score_per_socket then
			score = score + score_per_socket * objective_data.num_sockets
		end

		local score_for_each_player_inside = objective_data.score_for_each_player_inside

		if score_for_each_player_inside then
			score = score + score_for_each_player_inside * 4
		end
	end

	return score
end

GameModeSettings.versus.objective_names = {}

for level_key, level_data in pairs(VersusObjectiveSettings) do
	local objective_lists = level_data.objective_lists

	level_data.max_score = 0

	for i = 1, #objective_lists do
		local set = objective_lists[i]
		local set_score = 0

		for j = 1, #set do
			local set_data = set[j]

			set_score = set_score + recursive_add_name(set_data)
		end

		set.max_score = set_score
		level_data.max_score = level_data.max_score + set_score
	end
end
