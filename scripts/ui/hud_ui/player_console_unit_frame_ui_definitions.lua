local SIZE_X, SIZE_Y = 1920, 1080
local RETAINED_MODE_ENABLED = true
local portrait_scale = 1
local settings = {
	hp_bar = {
		z = -8,
		x = -276.5,
		y = 35
	}
}
local portrait_area = {
	86,
	108
}
local scenegraph_definition = {
	root = {
		scale = "hud_scale_fit",
		position = {
			0,
			0,
			UILayer.hud
		},
		size = {
			SIZE_X,
			SIZE_Y
		}
	},
	pivot = {
		vertical_alignment = "bottom",
		parent = "root",
		horizontal_alignment = "center",
		position = {
			0,
			0,
			5
		},
		size = {
			0,
			0
		}
	},
	ability = {
		vertical_alignment = "bottom",
		parent = "root",
		horizontal_alignment = "right",
		position = {
			0,
			60,
			10
		}
	},
	portrait_pivot = {
		vertical_alignment = "bottom",
		parent = "root",
		horizontal_alignment = "left",
		position = {
			80,
			80,
			10
		},
		size = {
			0,
			0
		}
	}
}

if not IS_WINDOWS then
	scenegraph_definition.root.scale = "hud_fit"
	scenegraph_definition.root.is_root = nil
end

local inventory_consumable_icons = {
	wpn_grimoire_01 = "hud_inventory_icon_grimoire",
	potion_cooldown_reduction_01 = "hud_inventory_icon_potion_cooldown_reduction",
	potion_healing_draught_01 = "hud_inventory_icon_heal_02",
	grenade_frag_02 = "hud_inventory_icon_bomb",
	[3] = "hud_inventory_icon_potion",
	grenade_frag_01 = "hud_inventory_icon_bomb",
	grenade_smoke_02 = "hud_inventory_icon_bomb",
	grenade_smoke_01 = "hud_inventory_icon_bomb",
	grenade_fire_01 = "hud_inventory_icon_bomb",
	grenade_fire_02 = "hud_inventory_icon_bomb",
	[1] = "hud_inventory_icon_heal_01",
	[2] = "hud_inventory_icon_bomb",
	wpn_side_objective_tome_01 = "hud_inventory_icon_tome",
	potion_damage_boost_01 = "hud_inventory_icon_potion_strength",
	healthkit_first_aid_kit_01 = "hud_inventory_icon_heal_01",
	potion_speed_boost_01 = "hud_inventory_icon_potion_speed"
}
local inventory_index_by_slot = {
	slot_potion = 3,
	slot_grenade = 2,
	slot_healthkit = 1
}
local weapon_slot_widget_settings = {
	ammo_fields = {
		slot_ranged = "ammo_text_weapon_slot_2",
		slot_melee = "ammo_text_weapon_slot_1"
	}
}

local function create_static_widget()
	return {
		scenegraph_id = "portrait_pivot",
		element = {
			passes = {
				{
					pass_type = "texture",
					style_id = "character_portrait",
					texture_id = "character_portrait",
					retained_mode = RETAINED_MODE_ENABLED
				},
				{
					style_id = "player_level",
					pass_type = "text",
					text_id = "player_level",
					retained_mode = RETAINED_MODE_ENABLED
				},
				{
					pass_type = "texture",
					style_id = "host_icon",
					texture_id = "host_icon",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return content.is_host
					end
				}
			}
		},
		content = {
			is_host = false,
			character_portrait = "unit_frame_portrait_default",
			host_icon = "host_icon",
			player_level = ""
		},
		style = {
			character_portrait = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					86,
					108
				},
				offset = {
					0,
					0,
					1
				},
				color = {
					255,
					255,
					255,
					255
				}
			},
			host_icon = {
				size = {
					40,
					40
				},
				offset = {
					-57,
					-68,
					50
				},
				color = {
					150,
					255,
					255,
					255
				}
			},
			player_level = {
				vertical_alignment = "center",
				font_type = "hell_shark",
				font_size = 18,
				horizontal_alignment = "center",
				text_color = Colors.get_table("cheeseburger"),
				offset = {
					0,
					-65,
					3
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

local function create_dynamic_portait_widget()
	return {
		scenegraph_id = "pivot",
		element = {
			passes = {
				{
					pass_type = "texture",
					style_id = "portrait_icon",
					texture_id = "portrait_icon",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return content.display_portrait_icon
					end
				},
				{
					pass_type = "texture",
					style_id = "talk_indicator",
					texture_id = "talk_indicator",
					retained_mode = RETAINED_MODE_ENABLED
				},
				{
					pass_type = "texture",
					style_id = "talk_indicator_glow",
					texture_id = "talk_indicator_glow",
					retained_mode = RETAINED_MODE_ENABLED
				},
				{
					pass_type = "texture",
					style_id = "talk_indicator_highlight",
					texture_id = "talk_indicator_highlight",
					retained_mode = RETAINED_MODE_ENABLED
				},
				{
					pass_type = "texture",
					style_id = "talk_indicator_highlight_glow",
					texture_id = "talk_indicator_highlight_glow",
					retained_mode = RETAINED_MODE_ENABLED
				},
				{
					pass_type = "rotated_texture",
					style_id = "connecting_icon",
					texture_id = "connecting_icon",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return content.connecting
					end
				}
			}
		},
		content = {
			talk_indicator_highlight = "voip_wave",
			connecting = false,
			display_portrait_icon = false,
			portrait_icon = "status_icon_needs_assist",
			display_portrait_overlay = false,
			connecting_icon = "matchmaking_connecting_icon",
			talk_indicator_highlight_glow = "voip_wave_glow",
			talk_indicator = "voip_speaker",
			talk_indicator_glow = "voip_speaker_glow"
		},
		style = {
			talk_indicator = {
				scenegraph_id = "portrait_pivot",
				size = {
					64,
					64
				},
				offset = {
					60,
					6,
					3
				},
				color = {
					0,
					255,
					255,
					255
				}
			},
			talk_indicator_glow = {
				scenegraph_id = "portrait_pivot",
				size = {
					64,
					64
				},
				offset = {
					60,
					6,
					2
				},
				color = {
					0,
					0,
					0,
					0
				}
			},
			talk_indicator_highlight = {
				scenegraph_id = "portrait_pivot",
				size = {
					64,
					64
				},
				offset = {
					60,
					6,
					3
				},
				color = {
					0,
					255,
					255,
					255
				}
			},
			talk_indicator_highlight_glow = {
				scenegraph_id = "portrait_pivot",
				size = {
					64,
					64
				},
				offset = {
					60,
					6,
					2
				},
				color = {
					0,
					0,
					0,
					0
				}
			},
			connecting_icon = {
				vertical_alignment = "center",
				scenegraph_id = "portrait_pivot",
				horizontal_alignment = "center",
				angle = 0,
				pivot = {
					26.5,
					26.5
				},
				texture_size = {
					53,
					53
				},
				offset = {
					0,
					0,
					12
				},
				color = {
					255,
					255,
					255,
					255
				}
			},
			portrait_icon = {
				vertical_alignment = "center",
				scenegraph_id = "portrait_pivot",
				horizontal_alignment = "center",
				texture_size = {
					86,
					108
				},
				offset = {
					0,
					0,
					7
				},
				color = {
					150,
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
		}
	}
end

local function create_dynamic_health_widget()
	return {
		scenegraph_id = "pivot",
		element = {
			passes = {
				{
					pass_type = "texture",
					style_id = "hp_bar_highlight",
					texture_id = "hp_bar_highlight",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content, style)
						return not content.has_shield
					end
				},
				{
					style_id = "grimoire_debuff_divider",
					texture_id = "grimoire_debuff_divider",
					pass_type = "texture",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						local hp_bar_content = content.hp_bar
						local internal_bar_value = hp_bar_content.internal_bar_value
						local actual_active_percentage = content.actual_active_percentage or 1
						local grim_progress = math.max(internal_bar_value, actual_active_percentage)

						return grim_progress < 1
					end,
					content_change_function = function (content, style)
						local hp_bar_content = content.hp_bar
						local internal_bar_value = hp_bar_content.internal_bar_value
						local actual_active_percentage = content.actual_active_percentage or 1
						local grim_progress = math.max(internal_bar_value, actual_active_percentage)
						local offset = style.offset

						offset[1] = settings.hp_bar.x - 7 + 553 * grim_progress
					end
				},
				{
					pass_type = "gradient_mask_texture",
					style_id = "hp_bar",
					texture_id = "texture_id",
					content_id = "hp_bar",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return content.draw_health_bar and not content.hide
					end
				},
				{
					pass_type = "gradient_mask_texture",
					style_id = "total_health_bar",
					texture_id = "texture_id",
					content_id = "total_health_bar",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return content.draw_health_bar
					end
				},
				{
					style_id = "grimoire_bar",
					pass_type = "texture_uv",
					content_id = "grimoire_bar",
					retained_mode = RETAINED_MODE_ENABLED,
					content_change_function = function (content, style)
						local parent_content = content.parent
						local hp_bar_content = parent_content.hp_bar
						local internal_bar_value = hp_bar_content.internal_bar_value
						local actual_active_percentage = parent_content.actual_active_percentage or 1
						local grim_progress = math.max(internal_bar_value, actual_active_percentage)
						local size = style.size
						local uvs = content.uvs
						local offset = style.offset
						local bar_length = 553

						uvs[1][1] = grim_progress
						size[1] = bar_length * (1 - grim_progress)
						offset[1] = 2 + settings.hp_bar.x + bar_length * grim_progress
					end
				},
				{
					style_id = "numeric_health",
					pass_type = "text",
					text_id = "numeric_health",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function ()
						return Application.user_setting("numeric_ui") and (UISettings.use_gamepad_hud_layout == "always" or Managers.input:is_device_active("gamepad") and UISettings.use_gamepad_hud_layout ~= "never")
					end
				},
				{
					style_id = "numeric_health_shadow",
					pass_type = "text",
					text_id = "numeric_health",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function ()
						return Application.user_setting("numeric_ui") and (UISettings.use_gamepad_hud_layout == "always" or Managers.input:is_device_active("gamepad") and UISettings.use_gamepad_hud_layout ~= "never")
					end
				}
			}
		},
		content = {
			grimoire_debuff_divider = "hud_player_hp_bar_grim_divider",
			hp_bar_highlight = "hud_player_hp_bar_highlight",
			bar_start_side = "left",
			numeric_health = "-/-",
			hp_bar = {
				bar_value = 1,
				hide = false,
				texture_id = "player_hp_bar_color_tint",
				draw_health_bar = true,
				internal_bar_value = 0
			},
			total_health_bar = {
				bar_value = 1,
				internal_bar_value = 0,
				texture_id = "player_hp_bar",
				draw_health_bar = true
			},
			grimoire_bar = {
				texture_id = "hud_panel_hp_bar_bg_grimoire",
				uvs = {
					{
						0,
						0
					},
					{
						1,
						1
					}
				}
			}
		},
		style = {
			total_health_bar = {
				gradient_threshold = 1,
				size = {
					553,
					18
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					settings.hp_bar.x,
					settings.hp_bar.y,
					settings.hp_bar.z + 2
				}
			},
			hp_bar = {
				gradient_threshold = 1,
				size = {
					553,
					18
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					settings.hp_bar.x,
					settings.hp_bar.y,
					settings.hp_bar.z + 3
				}
			},
			grimoire_bar = {
				size = {
					553,
					18
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					settings.hp_bar.x,
					settings.hp_bar.y,
					settings.hp_bar.z + 4
				}
			},
			grimoire_debuff_divider = {
				size = {
					21,
					36
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					settings.hp_bar.x + 10,
					settings.hp_bar.y - 8,
					settings.hp_bar.z + 20
				}
			},
			hp_bar_highlight = {
				size = {
					553,
					30
				},
				offset = {
					settings.hp_bar.x,
					settings.hp_bar.y - 4,
					settings.hp_bar.z + 5
				},
				color = {
					0,
					255,
					255,
					255
				}
			},
			numeric_health = {
				vertical_alignment = "center",
				font_type = "arial",
				font_size = 18,
				horizontal_alignment = "center",
				text_color = {
					255,
					250,
					250,
					250
				},
				offset = {
					-276.5,
					settings.hp_bar.y - 3,
					settings.hp_bar.z + 30
				},
				size = {
					553,
					18
				}
			},
			numeric_health_shadow = {
				vertical_alignment = "center",
				font_type = "arial",
				font_size = 18,
				horizontal_alignment = "center",
				text_color = {
					255,
					0,
					0,
					0
				},
				offset = {
					-275.5,
					settings.hp_bar.y - 3 - 1,
					settings.hp_bar.z + 29
				},
				size = {
					553,
					18
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

local function create_dynamic_ability_widget()
	return {
		scenegraph_id = "ability",
		element = {
			passes = {
				{
					style_id = "ability_bar",
					pass_type = "texture",
					texture_id = "texture_id",
					content_id = "ability_bar",
					retained_mode = RETAINED_MODE_ENABLED,
					content_change_function = function (content, style)
						local ability_progress = content.bar_value
						local size = style.texture_size
						local offset = style.offset

						offset[2] = -size[2] + size[2] * ability_progress
					end
				},
				{
					pass_type = "texture",
					style_id = "ability_bar_mask",
					texture_id = "ability_bar_mask",
					retained_mode = RETAINED_MODE_ENABLED
				}
			}
		},
		content = {
			ability_bar_mask = "gamepad_ability_outline_mask",
			bar_start_side = "left",
			ability_bar = {
				bar_value = 1,
				texture_id = "gamepad_ability_outline_fill"
			}
		},
		style = {
			ability_bar = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					101,
					125
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
					0
				}
			},
			ability_bar_mask = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					96,
					115
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
					0
				}
			}
		},
		offset = {
			-15,
			15,
			0
		}
	}
end

local widget_definitions = {
	portrait_static = UIWidgets.create_portrait_frame("portrait_pivot", "default", "-", portrait_scale, RETAINED_MODE_ENABLED),
	default_dynamic = create_dynamic_portait_widget(),
	default_static = create_static_widget(),
	health_dynamic = create_dynamic_health_widget(),
	ability_dynamic = create_dynamic_ability_widget()
}
local features_list = {
	equipment = false,
	weapons = false,
	ability = true
}
local widget_name_by_feature = {
	static = {
		default = "default_static",
		level = "default_static",
		portrait_frame = "portrait_static"
	},
	dynamic = {
		default = "default_dynamic",
		ability = "ability_dynamic",
		status_icon = "default_dynamic",
		health = "health_dynamic"
	}
}
local damage_widget_definitions = UnitFramesUiUtils.create_damage_widget("player", 4)

return {
	weapon_slot_widget_settings = weapon_slot_widget_settings,
	inventory_index_by_slot = inventory_index_by_slot,
	inventory_consumable_icons = inventory_consumable_icons,
	features_list = features_list,
	widget_name_by_feature = widget_name_by_feature,
	scenegraph_definition = scenegraph_definition,
	widget_definitions = widget_definitions,
	damage_widget_definitions = damage_widget_definitions
}
