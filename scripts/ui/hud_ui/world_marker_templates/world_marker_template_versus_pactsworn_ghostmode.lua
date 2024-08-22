WorldMarkerTemplates = WorldMarkerTemplates or {}

local template = WorldMarkerTemplates.versus_pactsworn_ghostmode

if not template then
	template = {}
	WorldMarkerTemplates.versus_pactsworn_ghostmode = template
end

template.position_offset = {
	0,
	0,
	2
}
template.max_distance = nil
template.screen_clamp = true
template.only_when_clamped = false
template.draw_behind = true
template.screen_margins = {
	down = 150,
	up = 200,
	left = 150,
	right = 150
}

template.create_widget_definition = function (scenegraph_id)
	local icon_scale = 1
	local arrow_offset = 60 * icon_scale

	return {
		element = {
			passes = {
				{
					pass_type = "texture",
					style_id = "icon",
					texture_id = "icon",
					content_check_function = function (content)
						return content.is_clamped
					end
				},
				{
					style_id = "ally_name",
					pass_type = "text",
					text_id = "ally_name"
				},
				{
					pass_type = "rotated_texture",
					style_id = "arrow",
					texture_id = "arrow",
					content_check_function = function (content)
						return content.is_clamped
					end
				},
				{
					pass_type = "texture",
					style_id = "checkmark",
					texture_id = "checkmark",
					content_check_function = function (content)
						return content.countdown_over
					end
				}
			}
		},
		content = {
			checkmark = "matchmaking_checkbox",
			player_name = "player_name",
			ally_name = "ally_name",
			icon = "versus_hud_marker_objective",
			arrow = "versus_world_marker_objective_arrow"
		},
		style = {
			icon = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					70 * icon_scale,
					90 * icon_scale
				},
				default_size = {
					70 * icon_scale,
					90 * icon_scale
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					3
				}
			},
			arrow = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				angle = 0,
				pivot = {
					22,
					11.5 - arrow_offset
				},
				texture_size = {
					44,
					23
				},
				default_size = {
					44,
					23
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					arrow_offset,
					0
				}
			},
			ally_name = {
				font_type = "hell_shark",
				upper_case = false,
				localize = false,
				use_shadow = true,
				font_size = 24,
				horizontal_alignment = "center",
				vertical_alignment = "center",
				size = {
					200,
					30
				},
				area_size = {
					200,
					30
				},
				text_color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					-100,
					60,
					3
				}
			},
			checkmark = {
				vertical_alignment = "center",
				horizontal_alignment = "left",
				size = {
					30,
					25
				},
				offset = {
					0,
					5,
					3
				},
				color = {
					255,
					255,
					255,
					255
				}
			}
		},
		offset = {
			0,
			0,
			0
		},
		scenegraph_id = scenegraph_id
	}
end

template.on_enter = function (widget)
	local content = widget.content

	content.just_entered = true
	content.t = 0
end

template.update_function = function (ui_renderer, widget, marker, settings, dt, t)
	local content = widget.content
	local style = widget.style

	if content.just_entered then
		content.just_entered = false
		content.enter_timer = t

		local player_name_text_width = UIUtils.get_text_width(ui_renderer, style.ally_name, content.ally_name)

		style.checkmark.offset[1] = -(player_name_text_width / 2) - 30 - 10
	end

	local am = math.clamp(0.5 + (1 - content.forward_dot_dir) * 499.99999999999955, 0, 1)
	local timer_delta = t - content.enter_timer
	local alpha = 255 * math.easeOutCubic(math.min(timer_delta, 1)) * am
	local fade_in_alpha = alpha * 0.7

	style.icon.color[1] = fade_in_alpha
	style.arrow.color[1] = fade_in_alpha
	style.arrow.angle = content.angle

	local ally_name_offset_y = content.is_clamped and 60 or 0

	style.ally_name.offset[2] = ally_name_offset_y

	if content.respawn_timer and not content.countdown_over then
		local respawn_delta = content.respawn_timer - Managers.time:time("game")
		local countdown_over = respawn_delta <= 0

		content.ally_name = countdown_over and content.player_name or string.format("{#size(20);color(255,168,0)}%d{#reset()}  %s", math.abs(respawn_delta), content.player_name)
		content.countdown_over = countdown_over
	end

	return true
end
