local social_wheel_settings = require("scripts/ui/social_wheel/versus_social_wheel_ui_settings")
local SCREEN_WIDTH = 1920
local SCREEN_HEIGHT = 1080
local PI = math.pi
local scenegraph_definition = {
	screen = {
		scale = "fit",
		position = {
			0,
			0,
			UILayer.hud
		},
		size = {
			SCREEN_WIDTH,
			SCREEN_HEIGHT
		}
	},
	entry_pivot = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		position = {
			0,
			0,
			1
		},
		size = {
			0,
			0
		}
	}
}

local function create_pointer_arrow_widget(scenegraph_id, texture)
	return {
		element = {
			passes = {
				{
					texture_id = "arrow_pointer",
					style_id = "arrow_pointer",
					pass_type = "rotated_texture"
				}
			}
		},
		content = {
			pointing_point = Vector3Box(0, 0, 0),
			arrow_pointer = texture
		},
		style = {
			arrow_pointer = {
				vertical_alignment = "center",
				angle = 0,
				horizontal_alignment = "center",
				pivot = {
					14.25,
					27
				},
				color = {
					192,
					255,
					255,
					255
				},
				texture_size = {
					28.5,
					54
				},
				offset = {
					0,
					0,
					0
				}
			}
		},
		offset = {
			0,
			0,
			10
		},
		scenegraph_id = scenegraph_id
	}
end

local function create_ping_option_info_text(scenegraph_id)
	return {
		element = {
			passes = {
				{
					style_id = "text",
					pass_type = "text",
					text_id = "text"
				},
				{
					pass_type = "rect",
					style_id = "background"
				}
			}
		},
		content = {
			text = ""
		},
		style = {
			background = {
				color = {
					125,
					0,
					0,
					0
				},
				size = {
					190,
					45
				}
			},
			text = {
				word_wrap = true,
				localize = false,
				font_size = 22,
				pixel_perfect = true,
				horizontal_alignment = "center",
				vertical_alignment = "center",
				dynamic_font = true,
				font_type = "hell_shark_header",
				selected_color = Colors.get_color_table_with_alpha("font_title", 255),
				base_color = Colors.get_color_table_with_alpha("white", 128),
				text_color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					0,
					5,
					10
				},
				size = {
					180,
					35
				}
			}
		},
		scenegraph_id = scenegraph_id or "entry_pivot",
		offset = {
			-95,
			-22.5,
			0
		}
	}
end

local widget_definitions = {
	pointer = create_pointer_arrow_widget("entry_pivot", "radial_chat_cursor_arrow"),
	ping_info_text = create_ping_option_info_text("entry_pivot")
}

local function create_social_wheel_entry_button(angle, offset_x, offset_y, index)
	local entry_size = social_wheel_settings.entry_size or {
		190,
		140
	}
	local wheel_size = social_wheel_settings.wheel_size or {
		200,
		200
	}
	local dir = Vector3(math.cos(angle), math.sin(angle), 0)

	return {
		scenegraph_id = "entry_pivot",
		element = {
			passes = {
				{
					style_id = "entry_icon",
					texture_id = "entry_icon",
					pass_type = "texture",
					content_check_function = function (content)
						return content.is_valid
					end,
					content_change_function = function (content, style)
						style.color[1] = content.is_valid and not content.has_valid_target and 125 or 255
					end
				},
				{
					style_id = "entry_background",
					texture_id = "entry_background",
					pass_type = "rotated_texture",
					content_change_function = function (content, style)
						local color = style.color

						color[1] = content.is_valid and 125 or 65
					end
				},
				{
					pass_type = "rotated_texture",
					style_id = "entry_hovered",
					texture_id = "entry_hovered",
					content_check_function = function (content, style)
						return content.selected
					end
				},
				{
					style_id = "entry_detail",
					texture_id = "entry_detail",
					pass_type = "rotated_texture",
					content_change_function = function (content, style)
						local color = style.color

						color[1] = content.is_valid and 255 or 95
					end
				},
				{
					pass_type = "texture",
					style_id = "unavailable_icon",
					texture_id = "unavailable_icon",
					content_check_function = function (content, style)
						return content.is_valid and not content.has_valid_target
					end
				}
			}
		},
		content = {
			entry_background = "slice_eighth",
			entry_hovered = "slice_eighth_highlight",
			final_size_multiplier = 1,
			entry_detail = "slice_eighth_line",
			selected = false,
			is_valid = true,
			entry_icon = "radial_chat_icon_unavailable",
			size_multiplier = 0,
			has_valid_target = true,
			temp_text = "-",
			unavailable_icon = "radial_chat_icon_unavailable",
			dir = Vector3Box(dir),
			final_offset = {
				wheel_size[1] + entry_size[1] * 0.5,
				wheel_size[2] + entry_size[2] * 0.5
			},
			settings = {},
			active_context = {}
		},
		style = {
			entry_icon = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				base_texture_size = {
					96,
					96
				},
				texture_size = {
					96,
					96
				},
				activated_color = Colors.get_color_table_with_alpha("font_title", 255),
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					entry_size[1] * 0.5,
					entry_size[2] * 0.5,
					10
				}
			},
			entry_background = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				size = entry_size,
				pivot = {
					entry_size[1] * 0.5,
					entry_size[2] * 0.5
				},
				angle = (2 * PI - angle + PI * 0.5) % (2 * PI),
				color = Colors.get_color_table_with_alpha("black", 125),
				offset = {
					0,
					0,
					2
				}
			},
			entry_hovered = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				size = entry_size,
				pivot = {
					entry_size[1] * 0.5,
					entry_size[2] * 0.5
				},
				angle = (2 * PI - angle + PI * 0.5) % (2 * PI),
				color = Colors.get_color_table_with_alpha("yellow", 110),
				offset = {
					0,
					0,
					3
				}
			},
			entry_detail = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				size = entry_size,
				pivot = {
					entry_size[1] * 0.5,
					entry_size[2] * 0.5
				},
				angle = (2 * PI - angle + PI * 0.5) % (2 * PI),
				color = Colors.get_color_table_with_alpha("yellow", 255),
				offset = {
					0,
					0,
					4
				}
			},
			unavailable_icon = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				base_texture_size = {
					96,
					96
				},
				texture_size = {
					96,
					96
				},
				activated_color = Colors.get_color_table_with_alpha("font_title", 255),
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					entry_size[1] * 0.5,
					entry_size[2] * 0.5,
					12
				}
			}
		},
		offset = {
			0,
			0,
			0
		}
	}
end

local animations_definitions = {}

return {
	create_social_wheel_entry_button = create_social_wheel_entry_button,
	animations_definitions = animations_definitions,
	scenegraph_definition = scenegraph_definition,
	widget_definitions = widget_definitions
}
