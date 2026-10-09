return {
	design_aspect = 1.7777777777777777,
	design_hud_scale = 0.59999999999999998,
	design_resolution = {
		1920,
		1080,
	},
	export_mod = "hud_studio_owo",
	gamemodes = {
		meatgrinder = true,
		mission = true,
	},
	grid_cols = 0,
	grid_rows = 0,
	label = "OwO Player only Panel",
	localizations = {},
	mod_version = 4,
	name = "owo_player_only_panel",
	nodes = {
		{
			callbacks = {
				value = {
					current = {
						field = "status.health",
						kind = "source",
						source = "player_1",
					},
					max = {
						field = "status.health_max",
						kind = "source",
						source = "player_1",
					},
					segments = {
						field = "status.wounds_max",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "status.health",
										kind = "source",
										source = "player_1",
									},
									op = "changed",
								},
								{
									join = "or",
									lhs = {
										field = "status.health_percent",
										kind = "source",
										source = "player_1",
									},
									op = "<",
									rhs = {
										kind = "fixed",
										value = 30,
									},
								},
								{
									join = "or",
									lhs = {
										field = "t.held",
										kind = "source",
										source = "keys",
									},
									op = "true",
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "health_30_or_change",
			label = "Health (<30% or change)",
			offset = {
				-78,
				208,
			},
			style = {
				color = {
					255,
					255,
					139,
					188,
				},
				orientation = "left_right",
				shape = "straight",
				size = {
					200,
					15,
				},
				transition = {
					fade_out = 0.40000000000000002,
				},
			},
			type = "progress_bar",
			values = {
				current = 60,
				max = 100,
			},
		},
		{
			callbacks = {
				value = {
					current = {
						field = "status.corruption_percent",
						kind = "source",
						source = "player_1",
					},
					segments = {
						field = "status.wounds_max",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "status.health",
										kind = "source",
										source = "player_1",
									},
									op = "changed",
								},
								{
									join = "or",
									lhs = {
										field = "status.health_percent",
										kind = "source",
										source = "player_1",
									},
									op = "<",
									rhs = {
										kind = "fixed",
										value = 30,
									},
								},
								{
									join = "or",
									lhs = {
										field = "t.held",
										kind = "source",
										source = "keys",
									},
									op = "true",
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "corruption",
			label = "Corruption",
			offset = {
				-78,
				208,
			},
			style = {
				bg_color = {
					0,
					0,
					0,
					0,
				},
				color = {
					255,
					137,
					56,
					199,
				},
				fill_material = "content/ui/materials/hud/backgrounds/player_health_fill",
				orientation = "right_left",
				size = {
					200,
					15,
				},
				transition = {
					fade_out = 0.40000000000000002,
				},
			},
			type = "progress_bar",
			values = {
				current = 60,
				max = 100,
			},
		},
		{
			callbacks = {
				value = {
					text = {
						field = "status.health",
						kind = "source",
						source = "player_1",
					},
					text3 = {
						field = "status.health_max",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "status.health",
										kind = "source",
										source = "player_1",
									},
									op = "changed",
								},
								{
									join = "or",
									lhs = {
										field = "status.health_percent",
										kind = "source",
										source = "player_1",
									},
									op = "<",
									rhs = {
										kind = "fixed",
										value = 30,
									},
								},
								{
									join = "or",
									lhs = {
										field = "t.held",
										kind = "source",
										source = "keys",
									},
									op = "true",
								},
							},
						},
						field = "ability.is_ready",
						kind = "conditions",
						source = "player_1",
					},
				},
			},
			id = "health_value",
			label = "Health Value",
			offset = {
				-66,
				207,
			},
			style = {
				color = {
					255,
					225,
					220,
					190,
				},
				decimals = 1,
				decimals3 = 1,
				font_size = 16,
				shadow = true,
				transition = {
					fade_out = 0.40000000000000002,
				},
			},
			type = "text",
			values = {
				mode = "fixed",
				mode3 = "fixed",
				text = "Text",
				text2 = " / ",
				value_mode = "chain",
			},
		},
		{
			callbacks = {
				value = {
					bg_color = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "status.toughness_broken",
								kind = "source",
								source = "player_1",
								value = false,
							},
							list = {
								{
									color = {
										255,
										114,
										0,
										0,
									},
									pct = 0,
								},
								{
									color = {
										124,
										0,
										0,
										0,
									},
									pct = 0,
								},
								{
									color = {
										124,
										0,
										0,
										0,
									},
									pct = 0,
								},
							},
							mirror = {
								current = "current",
								max = "max",
							},
							payload = "color",
							scale = "boolean",
						},
					},
					color = {
						kind = "thresholds",
						thresholds = {
							behaviour = "gradient",
							list = {
								{
									color = {
										255,
										120,
										220,
										255,
									},
									pct = 0,
								},
								{
									color = {
										255,
										120,
										220,
										255,
									},
									pct = 100,
								},
								{
									color = {
										255,
										255,
										255,
										117,
									},
									pct = 110,
								},
								{
									color = {
										255,
										250,
										255,
										78,
									},
									pct = 111,
								},
							},
							mirror = {
								current = "current",
								max = "max",
							},
							payload = "color",
							scale = "percent",
						},
					},
					current = {
						field = "status.toughness",
						kind = "source",
						source = "player_1",
					},
					max = {
						field = "status.toughness_regular_max",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "status.toughness_percent",
										kind = "source",
										source = "player_1",
									},
									op = "<",
									rhs = {
										kind = "fixed",
										value = 0.29999999999999999,
									},
								},
								{
									join = "or",
									lhs = {
										field = "t.held",
										kind = "source",
										source = "keys",
									},
									op = "true",
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "toughness_30_or_change",
			label = "Toughness (<30% or change)",
			offset = {
				-78,
				188,
			},
			style = {
				color = {
					255,
					120,
					220,
					255,
				},
				size = {
					200,
					15,
				},
				transition = {
					fade_out = 0.40000000000000002,
				},
			},
			type = "progress_bar",
			values = {
				current = 60,
				max = 100,
			},
		},
		{
			callbacks = {
				value = {
					text = {
						field = "status.toughness",
						kind = "source",
						source = "player_1",
					},
					text2 = {
						field = "ability.name",
						kind = "fixed",
						source = "player_1",
					},
					text3 = {
						field = "status.toughness_regular_max",
						kind = "source",
						source = "player_1",
					},
					text5 = {
						field = "status.toughness_percent",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "status.toughness_percent",
										kind = "source",
										source = "player_1",
									},
									op = "<",
									rhs = {
										kind = "fixed",
										value = 0.29999999999999999,
									},
								},
								{
									join = "or",
									lhs = {
										field = "t.held",
										kind = "source",
										source = "keys",
									},
									op = "true",
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "toughness_value",
			label = "Toughness Value",
			offset = {
				-66,
				186,
			},
			style = {
				color = {
					255,
					225,
					220,
					190,
				},
				font_size = 16,
				shadow = true,
				transition = {
					fade_out = 0.40000000000000002,
				},
			},
			type = "text",
			values = {
				mode = "fixed",
				mode2 = "fixed",
				mode3 = "fixed",
				mode5 = "fixed",
				text = "Text",
				text2 = " / ",
				text4 = " (",
				text6 = "%)",
				value_mode = "chain",
			},
		},
		{
			callbacks = {
				value = {
					current = {
						field = "status.stamina_percent",
						kind = "source",
						source = "player_1",
					},
					segments = {
						field = "status.stamina_max",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "status.stamina_percent",
										kind = "source",
										source = "player_1",
									},
									op = "<",
									rhs = {
										kind = "fixed",
										value = 30,
									},
								},
								{
									join = "or",
									lhs = {
										field = "t.held",
										kind = "source",
										source = "keys",
									},
									op = "true",
								},
							},
						},
						field = "ability.is_ready",
						kind = "conditions",
						source = "player_1",
					},
				},
			},
			id = "stamina_30",
			label = "Stamina (<30%)",
			offset = {
				-78,
				228,
			},
			style = {
				bg_color = {
					124,
					0,
					0,
					0,
				},
				color = {
					202,
					158,
					158,
					158,
				},
				size = {
					200,
					15,
				},
				transition = {
					fade_in = 0.20000000000000001,
					fade_out = 0.20000000000000001,
				},
			},
			type = "progress_bar",
			values = {
				current = 60,
				max = 100,
				opacity = 1,
			},
		},
		{
			callbacks = {
				value = {
					current = {
						field = "ability.progress_percent_to_next_charge",
						kind = "source",
						source = "player_1",
					},
					max = {
						field = "ability.cooldown_seconds_to_next_charge",
						kind = "fixed",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "ability.is_ready",
										kind = "source",
										source = "player_1",
									},
									op = "false",
								},
								{
									join = "and",
									lhs = {
										field = "ability.progress_percent_to_next_charge",
										kind = "source",
										source = "player_1",
									},
									op = ">",
									rhs = {
										kind = "fixed",
										value = 80,
									},
								},
								{
									join = "or",
									lhs = {
										field = "t.held",
										kind = "source",
										source = "keys",
									},
									op = "true",
									rhs = {
										field = "ability.held_seconds",
										kind = "fixed",
										source = "actions",
										value = "t",
									},
								},
							},
						},
						field = "ability.is_ready",
						kind = "conditions",
						source = "player_1",
					},
				},
			},
			id = "time_to_next_ability_80_charged",
			label = "Time to Next Ability (>80% charged)",
			offset = {
				-98,
				188,
			},
			style = {
				color = {
					255,
					134,
					211,
					122,
				},
				fill_material = "content/ui/materials/bars/simple/fill",
				orientation = "bottom_top",
				rotation = 0,
				size = {
					15,
					55,
				},
				transition = {
					fade_out = 0.40000000000000002,
				},
			},
			type = "progress_bar",
			values = {
				current = 60,
				max = 100,
			},
		},
		{
			callbacks = {
				value = {
					material = {
						field = "pocketables.icon_small",
						kind = "source",
						source = "player_1",
					},
					visible = {
						body = "-- Always show if hotkey was held\
local hotkey_held = sources.keys and sources.keys.t and sources.keys.t.held\
if hotkey_held then return true end\
\
-- Has Deployable\
local player_alive = sources.player_1 and sources.player_1.state and sources.player_1.state.alive\
local deployable_held = player_alive and sources.player_1.pocketables and sources.player_1.pocketables.deployable_is_held\
\
-- Visibility based on deployable ID\
local deployable_id = tostring(sources.player_1 and sources.player_1.pocketables and sources.player_1.pocketables.id)\
--     Medical crate\
--     Show if teammates are missing the amount it can heal (not accounting for Field Improv corrution)\
if (deployable_id == \"med_crate_pocketable\") then\
    --     500 hitpoints\
    local medical_crate_heal_amount = 500\
    local allied_missing_health = 0\
    -- Check each team member to find total missing hp\
    for ally_iterator = 1, 4 do\
        local player = sources[\"player_\"..tostring(ally_iterator)]\
        -- If alive and not bot, add missing health to tracker\
        if player and player.state and (player.state.alive) and (player.state.bot  == 0) then\
           local player_missing_health = 0\
            if player.status then\
                player_missing_health = player.status.health_max - player.status.health\
            end\
            allied_missing_health = allied_missing_health + player_missing_health\
        end\
    end\
    -- show if missing\
    if allied_missing_health >= medical_crate_heal_amount then return true end\
--      Ammo Crate\
--      Show if at least 2 teammates <20% or at least 3 <50%\
elseif (deployable_id == \"ammo_cache_pocketable\") then\
    --     400% by default. Not accounting for Havoc\
    local ammo_crate_restore_percentage = 400\
    local players_real_low = 0\
    local players_half_ammo = 0\
    -- Check each team member to find total missing ammo\
    for ally_iterator = 1, 4 do\
        local player = sources[\"player_\"..tostring(ally_iterator)]\
        -- If alive, not bot, and uses ammo, add missing ammo to tracker\
        if player and (player.state and player.state.alive and (player.state.bot == 0)) and (player.equipment and player.ranged_uses_ammo and player.ranged_uses_ammo ~= 0) then\
           if (player.ammo_reserve_percent < 50) then\
              players_half_ammo = players_half_ammo + 1\
              if (player.ammo_reserve_percent < 20) then\
                  players_real_low = players_real_low + 1\
              end\
           end\
        end\
    end\
    -- Show if missing enough ammo\
    if (players_half_ammo >= 3) or (players_real_low >= 2) then\
        return true\
    end\
end\
\
visible = false",
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										kind = "fixed",
									},
									op = "==",
								},
							},
						},
						field = "pocketables.held",
						kind = "code",
						source = "player_1",
					},
				},
			},
			id = "deployable_if_team_is_low",
			label = "Deployable (If Team is Low)",
			offset = {
				-128,
				217,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					27,
					27,
				},
			},
			type = "rect",
			values = {},
		},
		{
			callbacks = {
				value = {
					color = {
						field = "stimms.held_color",
						kind = "source",
						source = "player_1",
					},
					material = {
						field = "stimms.icon_small",
						kind = "source",
						source = "player_1",
					},
					visible = {
						body = "-- Hotkey Override On Demand\
local held_hotkey = sources.keys and sources.keys.t and sources.keys.t.held\
if (held_hotkey and held_hotkey ~= 0) then return true end\
\
-- Checks if Player has Stimm\
local player_alive = sources.player_1 and sources.player_1.state and sources.player_1.state.alive\
local player_has_stimm = player_alive and sources.player_1 and sources.player_1.stimms and sources.player_1.stimms.held\
\
-- This player has heal stimm and any teammate is on their last wound\
local player_has_heal_stimm = player_has_stimm and (sources.player_1.stimms.id == \"syringe_corruption_pocketable\")\
if (player_has_heal_stimm) then\
    local ally_is_last_wound = false\
    local ally_iterator = 1\
    while (not ally_is_last_wound) and (ally_iterator < 4) do\
        local current_ally = sources[\"player_\"..tostring(ally_iterator)]\
        if (current_ally and current_ally.state and current_ally.state.alive) and\
                (current_ally and current_ally.state and current_ally.state.bot) and\
                (current_ally and current_ally.status and current_ally.status.wounds) then\
            -- If ally is on 1 wound\
            if (tonumber(current_ally.status.wounds) == 1) then\
              return true\
            end\
        end\
        ally_iterator = ally_iterator + 1\
    end\
end\
\
visible = false",
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "ability.name",
										kind = "source",
										source = "player_1",
									},
									op = "==",
								},
							},
						},
						field = "stimms.held",
						kind = "code",
						source = "player_1",
					},
				},
			},
			id = "stimm_icon_appear_if_ally_on_last_wound",
			label = "Stimm Icon (Appear if Ally on Last Wound)",
			offset = {
				-128,
				189,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					27,
					27,
				},
			},
			type = "rect",
			values = {},
		},
		{
			callbacks = {
				value = {
					color = {
						field = "identity.slot_color",
						kind = "thresholds",
						source = "player_1",
						thresholds = {
							list = {
								{
									color = {
										17,
										221,
										120,
										255,
									},
									pct = 0,
								},
								{
									color = {
										59,
										221,
										120,
										255,
									},
									pct = 60,
								},
								{
									color = {
										120,
										221,
										120,
										255,
									},
									pct = 80,
								},
								{
									color = {
										156,
										221,
										120,
										255,
									},
									pct = 90,
								},
								{
									color = {
										255,
										221,
										120,
										255,
									},
									pct = 97,
								},
								{
									color = {
										255,
										195,
										15,
										255,
									},
									pct = 100,
								},
							},
							mirror = {
								current = "current",
								max = "max",
							},
							payload = "color",
							scale = "percent",
						},
					},
					current = {
						field = "status.peril_percent",
						kind = "source",
						source = "player_1",
					},
					max = {
						field = "ability.progress_percent_to_max_charges",
						kind = "fixed",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "identity.archetype",
										kind = "source",
										source = "player_1",
									},
									op = "==",
									rhs = {
										kind = "fixed",
										value = "Psyker",
									},
								},
								{
									join = "and",
									lhs = {
										field = "status.peril_percent",
										kind = "source",
										source = "player_1",
									},
									op = ">=",
									rhs = {
										kind = "fixed",
										value = 66,
									},
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "peril_fade_in_threshold_copy",
			label = "Peril (Fade in threshold)",
			offset = {
				-68,
				254,
			},
			style = {
				color = {
					255,
					120,
					220,
					255,
				},
				fill_material = "content/ui/materials/bars/heavy/fill_electric",
				size = {
					200,
					15,
				},
				transition = {
					fade_out = 0.20000000000000001,
				},
			},
			type = "progress_bar",
			values = {
				current = 60,
				max = 100,
			},
		},
		{
			callbacks = {
				value = {
					text = {
						field = "status.peril_percent",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "identity.archetype",
										kind = "source",
										source = "player_1",
									},
									op = "==",
									rhs = {
										kind = "fixed",
										value = "Psyker",
									},
								},
								{
									join = "and",
									lhs = {
										field = "status.peril_percent",
										kind = "source",
										source = "player_1",
									},
									op = ">=",
									rhs = {
										kind = "fixed",
										value = 95,
									},
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "peril_text_appear_at_stricter_condition_copy",
			label = "Peril Text (Appear at stricter condition)",
			offset = {
				-77,
				253,
			},
			style = {
				align = "top_right",
				color = {
					255,
					221,
					120,
					255,
				},
				decimals = 1,
				font_size = 20,
				shadow = true,
				transition = {
					fade_out = 0.40000000000000002,
				},
				visible = false,
			},
			type = "text",
			values = {
				mode = "fixed",
				text = "Text",
			},
		},
	},
	offset = {
		-22,
		639,
	},
	opacity = {
		kind = "fixed",
		value = 0.67000000000000004,
	},
	save_name = "owo_player_only_panel",
	scale_anchor = "center",
	screen_anchor = "bottom",
	summary = "Compact player panel appear on change, low value, or hotkey.",
	tags = {
		"player",
		"health",
		"toughness",
		"peril",
		"stamina",
		"ability",
	},
	transition = {
		fade_out = 0.20000000000000001,
	},
	version = 2,
	visible = {
		conditions = {
			rows = {
				{
					join = "and",
					lhs = {
						field = "state.alive",
						kind = "source",
						source = "player_1",
					},
					op = "true",
					rhs = {
						kind = "fixed",
						value = "false",
					},
				},
			},
		},
		kind = "conditions",
	},
}