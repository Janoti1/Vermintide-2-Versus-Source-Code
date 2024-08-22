local MAX_SCORE_PANEL_ROWS = 20
local tab_layouts = {
	{
		class_name = "EndViewStateScoreVSTabDetails",
		name = "end_view_state_score_vs_tab_details",
		display_name = "end_view_state_score_vs_tab_details_display_name"
	}
}
local game_option_size = {
	220,
	68
}
local scenegraph_definition = {
	screen = {
		scale = "fit",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			UILayer.end_screen
		}
	},
	panel = {
		vertical_alignment = "top",
		scale = "fit_width",
		size = {
			1920,
			79
		},
		position = {
			0,
			0,
			UILayer.default + 1
		}
	},
	panel_edge = {
		vertical_alignment = "top",
		scale = "fit_width",
		size = {
			1920,
			4
		},
		position = {
			0,
			0,
			UILayer.default + 10
		}
	},
	bottom_panel = {
		vertical_alignment = "bottom",
		scale = "fit_width",
		size = {
			1920,
			79
		},
		position = {
			0,
			0,
			UILayer.default + 1
		}
	},
	back_button = {
		vertical_alignment = "top",
		parent = "panel",
		horizontal_alignment = "left",
		size = {
			0,
			0
		},
		position = {
			40,
			-120,
			3
		}
	},
	close_button = {
		vertical_alignment = "top",
		parent = "panel",
		horizontal_alignment = "left",
		size = {
			0,
			0
		},
		position = {
			40,
			-34,
			3
		}
	},
	panel_entry_area = {
		vertical_alignment = "top",
		parent = "panel",
		horizontal_alignment = "left",
		size = {
			1600,
			70
		},
		position = {
			70,
			0,
			1
		}
	},
	game_mode_option = {
		vertical_alignment = "top",
		parent = "panel_entry_area",
		horizontal_alignment = "left",
		size = game_option_size,
		position = {
			20,
			0,
			14
		}
	},
	continue_button = {
		vertical_alignment = "bottom",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			300,
			75
		},
		position = {
			0,
			100,
			0
		}
	}
}
local summary_title_style = {
	word_wrap = true,
	font_size = 150,
	localize = false,
	use_shadow = true,
	horizontal_alignment = "center",
	vertical_alignment = "center",
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_title", 255),
	offset = {
		0,
		0,
		2
	}
}
local widgets = {
	continue_button = UIWidgets.create_default_button("continue_button", scenegraph_definition.continue_button.size, nil, nil, Localize("popup_choice_continue"), 25)
}
local animation_definitions = {
	transition_enter = {
		{
			name = "fade_in",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.alpha_multiplier = 0
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				params.render_settings.alpha_multiplier = math.easeOutCubic(progress)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	transition_exit = {
		{
			name = "fade_out",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.alpha_multiplier = 1
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeInCubic(progress)

				params.render_settings.alpha_multiplier = 1 - anim_progress
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	}
}

local function create_panel_button(scenegraph_id, size, text, font_size, optional_offset, optional_horizontal_alignment, highlight_color)
	local new_marker_offset = {
		-19,
		-25,
		10
	}
	local marker_offset = {
		0,
		-3,
		1
	}
	local selection_offset = {
		0,
		-4,
		0
	}
	local shadow_offset = {
		2,
		3,
		3
	}

	if optional_offset then
		shadow_offset[1] = shadow_offset[1] + optional_offset[1]
		shadow_offset[2] = shadow_offset[2] + optional_offset[2]
		shadow_offset[3] = optional_offset[3] - 1
		selection_offset[1] = selection_offset[1] + optional_offset[1]
		selection_offset[2] = selection_offset[2] + optional_offset[2]
		selection_offset[3] = optional_offset[3] - 3
		marker_offset[1] = marker_offset[1] + optional_offset[1]
		marker_offset[2] = marker_offset[2] + optional_offset[2]
		marker_offset[3] = optional_offset[3] - 2
		new_marker_offset[1] = new_marker_offset[1] + optional_offset[1]
		new_marker_offset[2] = new_marker_offset[2] + optional_offset[2]
		new_marker_offset[3] = optional_offset[3] - 2
	end

	return {
		element = {
			passes = {
				{
					pass_type = "hotspot",
					content_id = "button_hotspot"
				},
				{
					style_id = "text_shadow",
					pass_type = "text",
					text_id = "text_field"
				},
				{
					style_id = "text_hover",
					pass_type = "text",
					text_id = "text_field",
					content_check_function = function (content)
						return not content.button_hotspot.disable_button and (content.button_hotspot.is_hover or content.button_hotspot.is_selected)
					end
				},
				{
					style_id = "text",
					pass_type = "text",
					text_id = "text_field",
					content_check_function = function (content)
						return not content.button_hotspot.disable_button and not content.button_hotspot.is_hover and not content.button_hotspot.is_selected
					end
				},
				{
					style_id = "text_disabled",
					pass_type = "text",
					text_id = "text_field",
					content_check_function = function (content)
						return content.button_hotspot.disable_button
					end
				},
				{
					texture_id = "selected_texture",
					style_id = "selected_texture",
					pass_type = "texture",
					content_check_function = function (content)
						return not content.button_hotspot.disable_button
					end
				},
				{
					texture_id = "marker",
					style_id = "marker_left",
					pass_type = "texture"
				},
				{
					texture_id = "marker",
					style_id = "marker_right",
					pass_type = "texture"
				},
				{
					texture_id = "marker_highlight",
					style_id = "marker_highlight_left",
					pass_type = "texture",
					content_check_function = function (content)
						return content.button_hotspot.is_selected
					end
				},
				{
					texture_id = "marker_highlight",
					style_id = "marker_highlight_right",
					pass_type = "texture",
					content_check_function = function (content)
						return content.button_hotspot.is_selected
					end
				},
				{
					texture_id = "new_marker",
					style_id = "new_marker",
					pass_type = "texture",
					content_check_function = function (content)
						return content.new
					end
				}
			}
		},
		content = {
			marker = "morris_panel_divider",
			marker_highlight = "morris_panel_highlight",
			selected_texture = "hero_panel_selection_glow",
			new_marker = "list_item_tag_new",
			button_hotspot = {},
			text_field = text,
			default_font_size = font_size
		},
		style = {
			text = {
				word_wrap = false,
				upper_case = true,
				localize = true,
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark_header",
				font_size = font_size,
				horizontal_alignment = optional_horizontal_alignment or "left",
				text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
				default_offset = optional_offset or {
					0,
					10,
					4
				},
				offset = optional_offset or {
					0,
					5,
					4
				},
				size = size
			},
			text_shadow = {
				word_wrap = false,
				upper_case = true,
				localize = true,
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark_header",
				font_size = font_size,
				horizontal_alignment = optional_horizontal_alignment or "left",
				text_color = Colors.get_color_table_with_alpha("black", 255),
				default_offset = shadow_offset,
				offset = shadow_offset,
				size = size
			},
			text_hover = {
				word_wrap = false,
				upper_case = true,
				localize = true,
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark_header",
				font_size = font_size,
				horizontal_alignment = optional_horizontal_alignment or "left",
				text_color = Colors.get_color_table_with_alpha("white", 255),
				default_offset = optional_offset or {
					0,
					10,
					4
				},
				offset = optional_offset or {
					0,
					5,
					4
				},
				size = size
			},
			text_disabled = {
				word_wrap = false,
				upper_case = true,
				localize = true,
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark_header",
				font_size = font_size,
				horizontal_alignment = optional_horizontal_alignment or "left",
				text_color = Colors.get_color_table_with_alpha("gray", 50),
				default_offset = optional_offset or {
					0,
					10,
					4
				},
				offset = optional_offset or {
					0,
					5,
					4
				},
				size = size
			},
			selected_texture = {
				vertical_alignment = "top",
				horizontal_alignment = "center",
				texture_size = {
					169,
					35
				},
				color = highlight_color or Colors.get_color_table_with_alpha("font_title", 255),
				offset = selection_offset
			},
			marker_left = {
				vertical_alignment = "top",
				horizontal_alignment = "left",
				texture_size = {
					52,
					30
				},
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					marker_offset[1] - 26,
					marker_offset[2],
					marker_offset[3]
				}
			},
			marker_right = {
				vertical_alignment = "top",
				horizontal_alignment = "right",
				texture_size = {
					52,
					30
				},
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					marker_offset[1] + 26,
					marker_offset[2],
					marker_offset[3]
				}
			},
			marker_highlight_left = {
				vertical_alignment = "top",
				horizontal_alignment = "left",
				texture_size = {
					52,
					30
				},
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					marker_offset[1] - 26,
					marker_offset[2],
					marker_offset[3] + 1
				}
			},
			marker_highlight_right = {
				vertical_alignment = "top",
				horizontal_alignment = "right",
				texture_size = {
					52,
					30
				},
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					marker_offset[1] + 26,
					marker_offset[2],
					marker_offset[3] + 1
				}
			},
			new_marker = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					math.floor(88.19999999999999),
					math.floor(35.699999999999996)
				},
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					new_marker_offset[1],
					new_marker_offset[2],
					new_marker_offset[3]
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

return {
	widgets = widgets,
	tab_layouts = tab_layouts,
	scenegraph_definition = scenegraph_definition,
	animation_definitions = animation_definitions,
	create_panel_button = create_panel_button
}
