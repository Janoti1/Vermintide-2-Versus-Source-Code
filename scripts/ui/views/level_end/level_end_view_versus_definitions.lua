local scenegraph_definitions = {
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
	portrait_1 = {
		parent = "screen",
		size = {
			100,
			100
		},
		position = {
			0,
			0,
			0
		}
	},
	portrait_2 = {
		parent = "screen",
		size = {
			100,
			100
		},
		position = {
			0,
			0,
			0
		}
	},
	portrait_3 = {
		parent = "screen",
		size = {
			100,
			100
		},
		position = {
			0,
			0,
			0
		}
	},
	portrait_4 = {
		parent = "screen",
		size = {
			100,
			100
		},
		position = {
			0,
			0,
			0
		}
	},
	flag = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		position = {
			0,
			0,
			0
		},
		size = {
			232,
			481
		}
	}
}

local function create_flag(team_name)
	local ui_settings = UISettings
	local teams_ui_assets = ui_settings.teams_ui_assets
	local team_settings = teams_ui_assets[team_name]

	return UIWidgets.create_simple_texture(team_settings.local_flag_long_texture, "flag")
end

local widget_definitions = {}
local animation_definitions = {
	show_portraits = {
		{
			name = "show",
			start_progress = 0,
			end_progress = 0.5,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.alpha_multiplier = 0

				for _, widget in pairs(widgets) do
					widget.content.visible = true
				end
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				params.render_settings.alpha_multiplier = math.easeOutCubic(progress)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	hide_portraits = {
		{
			name = "hide",
			start_progress = 0,
			end_progress = 0,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				for _, widget in pairs(widgets) do
					widget.content.visible = false
				end

				params.render_settings.alpha_multiplier = 0
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				return
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	}
}
local generic_input_actions = {
	default = {
		{
			input_action = "refresh",
			priority = 2,
			description_text = "input_description_continue"
		}
	},
	EndViewStateScoreVSTabReport = {
		actions = {
			{
				input_action = "confirm_hold",
				priority = 1,
				description_text = "title_screen_store_skip"
			}
		}
	}
}

return {
	widget_definitions = widget_definitions,
	scenegraph_definitions = scenegraph_definitions,
	animation_definitions = animation_definitions,
	create_flag_func = create_flag,
	generic_input_actions = generic_input_actions
}
