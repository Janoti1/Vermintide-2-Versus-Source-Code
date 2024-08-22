local horde_ability_settings = {
	cooldown = 180,
	team_size_difference_recharge_modifier = {
		1.3,
		1.75,
		2.5
	},
	compositions_per_faction = {
		chaos = "versus_horde_ability_chaos",
		skaven = "versus_horde_ability_skaven",
		beastment = "versus_horde_ability_beastmen"
	},
	recharge_boosts = {
		actions = {
			gutter_runner_pinned = 5,
			pack_master_hoist = 10,
			hero_downed = 10,
			pack_master_grab = 3
		},
		damage_sources = {
			vs_warpfire_thrower = 0.3,
			vs_gutter_runner = 0.7,
			vs_poison_wind_globadier = 1,
			vs_ratling_gunner_gun = 0.11,
			vs_chaos_troll_axe = 0.35,
			vomit_face = 1.2,
			vs_packmaster = 0.8
		}
	}
}

return horde_ability_settings
