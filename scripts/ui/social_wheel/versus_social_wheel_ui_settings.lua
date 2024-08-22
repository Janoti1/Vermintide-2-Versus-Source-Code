local pi = math.pi
local settings = {
	radius = 190,
	max_free_events = 5,
	max_entries = 8,
	base_angle = pi / 2,
	entry_size = {
		190,
		140
	},
	wheel_size = {
		200,
		200
	},
	lerp_times = {
		stop_lerp_time_controller = 0.25,
		stop_lerp_time = 0.125,
		start_lerp_time_controller = 0.125,
		start_lerp_time = 0.01
	},
	animation_times = {
		open = {
			move_x = 1.5,
			size = 1.5,
			move_y = 1.5,
			alpha = 0.45
		},
		close = {
			move_x = 0.2,
			size = 0.25,
			move_y = 0.2,
			alpha = 0.1
		}
	},
	animation_times_controller = {
		open = {
			move_x = 0.75,
			size = 0.75,
			move_y = 0.75,
			alpha = 0.45
		},
		close = {
			move_x = 0.2,
			size = 0.25,
			move_y = 0.2,
			alpha = 0.1
		}
	}
}

local function get_ping_hero_event_text(target_unit, event_settings)
	local player_manager = Managers.player
	local callee_player = player_manager:owner(target_unit)

	if callee_player then
		local event_text_id = event_settings.event_text
		local profile_index = callee_player:profile_index()
		local profile = SPProfiles[profile_index]
		local display_name_short = profile.ingame_short_display_name
		local parameters = FrameTable.alloc_table()

		parameters[1] = display_name_short

		return event_text_id, parameters
	end
end

local layout_settings = {
	versus_heroes = {
		validation_function = function ()
			local is_versus = Managers.mechanism:current_mechanism_name() == "versus"

			if not is_versus then
				return false
			end

			local game_mode = Managers.state.game_mode:game_mode_key()
			local mechanism_settings = MechanismSettings[Managers.mechanism:current_mechanism_name()]
			local is_in_versus_gamemode = mechanism_settings.gamemode_lookup.default == game_mode

			return is_in_versus_gamemode
		end,
		{
			text = "social_wheel_heroes_general_help",
			event_text = "social_wheel_heroes_general_help",
			name = "social_wheel_heroes_general_help",
			ping_sound_effect = "versus_ping_marker_imminent",
			vo_event_name = "vw_cover_me",
			icon = "radial_chat_icon_help",
			data = {},
			ping_type = PingTypes.VO_ONLY
		},
		{
			text = "social_wheel_heroes_general_need_ammunition",
			event_text = "social_wheel_heroes_general_need_ammunition",
			name = "social_wheel_heroes_general_need_ammunition",
			ping_sound_effect = "versus_ping_marker_communication",
			icon = "radial_chat_icon_need_ammo",
			data = {},
			ping_type = PingTypes.VO_ONLY
		},
		{
			text = "social_wheel_heroes_general_come_here",
			event_text = "social_wheel_heroes_general_come_here",
			name = "social_wheel_heroes_general_come_here",
			ping_sound_effect = "versus_ping_marker_tactical",
			vo_event_name = "vw_gather",
			icon = "radial_chat_icon_come_here",
			data = {},
			ping_type = PingTypes.VO_ONLY
		},
		{
			text = "social_wheel_heroes_general_yes",
			event_text = "social_wheel_heroes_general_yes",
			name = "social_wheel_heroes_general_yes",
			ping_sound_effect = "versus_ping_marker_communication",
			vo_event_name = "vw_affirmative",
			icon = "radial_chat_icon_yes",
			data = {},
			ping_type = PingTypes.VO_ONLY
		},
		{
			text = "social_wheel_heroes_general_thank_you",
			event_text = "social_wheel_heroes_general_thank_you",
			name = "social_wheel_heroes_general_thank_you",
			ping_sound_effect = "versus_ping_marker_communication",
			vo_event_name = "vw_thank_you",
			icon = "radial_chat_icon_thank_you",
			data = {},
			ping_type = PingTypes.VO_ONLY
		},
		{
			text = "social_wheel_heroes_general_no",
			event_text = "social_wheel_heroes_general_no",
			name = "social_wheel_heroes_general_no",
			ping_sound_effect = "versus_ping_marker_communication_no",
			vo_event_name = "vw_negation",
			icon = "radial_chat_icon_no",
			data = {},
			ping_type = PingTypes.VO_ONLY
		},
		{
			text = "social_wheel_heroes_general_boss",
			event_text = "social_wheel_heroes_general_boss",
			name = "social_wheel_heroes_general_boss",
			ping_sound_effect = "versus_ping_marker_imminent",
			icon = "radial_chat_icon_boss",
			data = {},
			ping_type = PingTypes.VO_ONLY
		},
		{
			text = "social_wheel_heroes_general_need_healing",
			event_text = "social_wheel_heroes_general_need_healing",
			name = "social_wheel_heroes_general_need_healing",
			ping_sound_effect = "versus_ping_marker_communication",
			icon = "radial_chat_icon_need_healing",
			data = {},
			ping_type = PingTypes.VO_ONLY
		}
	},
	dark_pact = {
		validation_function = function ()
			local is_versus = Managers.mechanism:current_mechanism_name() == "versus"

			if not is_versus then
				return false
			end

			local game_mode = Managers.state.game_mode:game_mode_key()
			local mechanism_settings = MechanismSettings[Managers.mechanism:current_mechanism_name()]
			local is_in_versus_gamemode = mechanism_settings.gamemode_lookup.default == game_mode

			return is_in_versus_gamemode
		end,
		{
			text = "vs_social_wheel_dark_pact_general_attack",
			event_text = "vs_social_wheel_dark_pact_general_attack",
			name = "vs_social_wheel_dark_pact_general_attack",
			ping_sound_effect = "versus_ping_marker_imminent",
			vo_event_name = "vw_attack_now",
			icon = "radial_chat_icon_attack",
			data = {},
			ping_type = PingTypes.VO_ONLY
		},
		{
			text = "vs_social_wheel_dark_pact_general_ready",
			event_text = "vs_social_wheel_dark_pact_general_ready",
			name = "vs_social_wheel_dark_pact_general_ready",
			ping_sound_effect = "versus_ping_marker_tactical",
			vo_event_name = "vw_affirmative",
			icon = "radial_chat_icon_ready",
			data = {},
			ping_type = PingTypes.VO_ONLY
		},
		{
			text = "vs_social_wheel_dark_pact_general_group_up",
			event_text = "vs_social_wheel_dark_pact_general_group_up",
			name = "vs_social_wheel_dark_pact_general_group_up",
			ping_sound_effect = "versus_ping_marker_tactical",
			vo_event_name = "vw_gather",
			icon = "radial_chat_icon_gather",
			data = {},
			ping_type = PingTypes.VO_ONLY
		},
		{
			text = "vs_social_wheel_dark_pact_general_yes",
			event_text = "vs_social_wheel_dark_pact_general_yes",
			name = "vs_social_wheel_dark_pact_general_yes",
			ping_sound_effect = "versus_ping_marker_communication",
			vo_event_name = "vw_affirmative",
			icon = "radial_chat_icon_yes",
			data = {},
			ping_type = PingTypes.VO_ONLY
		},
		{
			text = "social_wheel_dark_pact_general_thank_you",
			event_text = "social_wheel_dark_pact_general_thank_you",
			name = "social_wheel_dark_pact_general_thank_you",
			ping_sound_effect = "versus_ping_marker_communication",
			vo_event_name = "vw_thank_you",
			icon = "radial_chat_icon_thank_you",
			data = {},
			ping_type = PingTypes.VO_ONLY
		},
		{
			text = "vs_social_wheel_dark_pact_general_no",
			event_text = "vs_social_wheel_dark_pact_general_no",
			name = "vs_social_wheel_dark_pact_general_no",
			ping_sound_effect = "versus_ping_marker_communication",
			vo_event_name = "vw_negation",
			icon = "radial_chat_icon_no",
			data = {},
			ping_type = PingTypes.VO_ONLY
		},
		{
			text = "vs_social_wheel_dark_pact_general_cover_me",
			event_text = "vs_social_wheel_dark_pact_general_cover_me",
			name = "vs_social_wheel_dark_pact_general_cover_me",
			ping_sound_effect = "versus_ping_marker_tactical",
			vo_event_name = "vw_cover_me",
			icon = "radial_chat_icon_cover",
			data = {},
			ping_type = PingTypes.VO_ONLY
		},
		{
			text = "vs_social_wheel_dark_pact_general_wait",
			event_text = "vs_social_wheel_dark_pact_general_wait",
			name = "vs_social_wheel_dark_pact_general_wait",
			ping_sound_effect = "versus_ping_marker_tactical",
			vo_event_name = "vw_wait",
			icon = "radial_chat_icon_wait",
			data = {},
			ping_type = PingTypes.VO_ONLY
		}
	},
	enemy_hero_player = {
		validation_function = function ()
			local is_versus = Managers.mechanism:current_mechanism_name() == "versus"

			if not is_versus then
				return false
			end

			local game_mode = Managers.state.game_mode:game_mode_key()
			local mechanism_settings = MechanismSettings[Managers.mechanism:current_mechanism_name()]
			local is_in_versus_gamemode = mechanism_settings.gamemode_lookup.default == game_mode

			return is_in_versus_gamemode
		end,
		{
			icon = "radial_chat_icon_ambush",
			vo_event_name = "vw_ambush",
			event_text = "vs_social_wheel_dark_pact_player_ambush",
			ping_sound_effect = "versus_ping_marker_imminent",
			name = "vs_social_wheel_dark_pact_player_ambush",
			text = "vs_social_wheel_dark_pact_general_ambush",
			event_text_func = get_ping_hero_event_text,
			data = {},
			ping_type = PingTypes.ENEMY_AMBUSH
		},
		{
			icon = "radial_chat_icon_cover",
			vo_event_name = "vw_cover_me",
			event_text = "vs_social_wheel_dark_pact_player_cover_me",
			ping_sound_effect = "versus_ping_marker_tactical",
			name = "vs_social_wheel_dark_pact_player_cover_me",
			text = "vs_social_wheel_dark_pact_general_cover_me",
			event_text_func = get_ping_hero_event_text,
			data = {},
			ping_type = PingTypes.PLAYER_COVER_ME
		},
		{
			icon = "radial_chat_icon_attack",
			vo_event_name = "vw_attack_now",
			event_text = "vs_social_wheel_dark_pact_player_attack",
			ping_sound_effect = "versus_ping_marker_imminent",
			name = "vs_social_wheel_dark_pact_player_attack",
			text = "vs_social_wheel_dark_pact_general_attack",
			event_text_func = get_ping_hero_event_text,
			data = {},
			ping_type = PingTypes.ENEMY_ATTACK
		}
	}
}

SocialWheelSettings = SocialWheelSettings or {}
SocialWheelSettings.versus_heroes = layout_settings.versus_heroes
SocialWheelSettings.dark_pact = layout_settings.dark_pact
SocialWheelSettings.enemy_hero_player = layout_settings.enemy_hero_player
SocialWheelPriority = SocialWheelPriority or {}
SocialWheelPriority[#SocialWheelPriority + 1] = {
	"enemy_hero_player",
	function (active_context, player, social_wheel_unit)
		local target_player = social_wheel_unit and Managers.player:owner(social_wheel_unit)

		if not target_player then
			return false
		end

		local player_side = Managers.state.side.side_by_unit[player.player_unit]

		if player_side:name() ~= "dark_pact" then
			return false
		end

		local target_side = Managers.state.side.side_by_unit[target_player.player_unit]

		return Managers.state.side:is_enemy_by_side(player_side, target_side)
	end
}

return settings
