return {
	deleted_nodes = {
		{
			callbacks = {
				value = {
					material = {
						field = "state.status_icon",
						kind = "source",
						source = "player_2",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "state.downed",
										kind = "source",
										source = "player_2",
									},
									op = "==",
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "status",
			label = "Status",
			offset = {
				-435,
				238,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					100,
					100,
				},
			},
			type = "rect",
			values = {},
		},
		{
			id = "rect_1",
			offset = {
				0,
				0,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					100,
					100,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/icons/presets/preset_11",
			},
		},
		{
			callbacks = {
				value = {
					color = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "blitz.count",
								kind = "source",
								source = "player_2",
								value = 0,
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
										255,
										202,
										0,
										0,
									},
									pct = 1,
								},
								{
									color = {
										120,
										255,
										255,
										255,
									},
									pct = 2,
								},
							},
							max = {
								field = "blitz.max_count",
								kind = "source",
								source = "player_2",
								value = 100,
							},
							payload = "color",
							scale = "number",
						},
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "blitz.uses_charges",
										kind = "source",
										source = "player_2",
										value = "uses",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "blitz.is_refilling",
										kind = "source",
										source = "player_2",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "blitz.count",
										kind = "source",
										source = "player_2",
									},
									op = "<",
									rhs = {
										kind = "fixed",
										value = 2,
									},
								},
								{
									join = "and",
									lhs = {
										field = "blitz.count",
										kind = "source",
										source = "player_2",
									},
									op = "changed",
								},
								{
									join = "or",
									lhs = {
										field = "blitz.uses_charges",
										kind = "source",
										source = "player_2",
										value = "uses",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "blitz.is_refilling",
										kind = "source",
										source = "player_2",
									},
									op = "true",
								},
								{
									join = "and",
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
			id = "blitz_icon_changed_and_2_rechargable",
			label = "Blitz Icon (Changed and <2) (Rechargable)",
			offset = {
				-1520,
				300,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					25,
					25,
				},
				transition = {
					fade_out = 0.20000000000000001,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/icons/presets/preset_11",
			},
		},
	},
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
	label = "OwO Ally Icons",
	localizations = {},
	mod_version = 2,
	name = "owo_ally_icons",
	nodes = {
		{
			callbacks = {
				value = {
					material = {
						field = "pocketables.icon_small",
						kind = "source",
						source = "player_2",
					},
					visible = {
						body = "-- Always show if hotkey was held\
local hotkey_held = sources.keys and sources.keys.t and sources.keys.t.held\
if hotkey_held then return true end\
\
-- Has Deployable\
local player_alive = sources.player_2 and sources.player_2.state and sources.player_2.state.alive\
local deployable_held = player_alive and sources.player_2.pocketables and sources.player_2.pocketables.deployable_is_held\
--     Just picked up\
local deployable_picked_up = anim.changed(state, \"pocketable_icon_linger_on_pickup_visible_2\", deployable_held)\
if deployable_picked_up then return true end\
--     Status changed\
-- Player status charges (gets disabled or dies)\
local player_disabled = sources.player_2 and sources.player_2.state and sources.player_2.state.disabled\
if player_disabled and (player_disabled ~= 0) then return true end\
local player_alive_changed = anim.changed(state, \"pocketable_icon_linger_on_pickup_visible_3\", player_alive)\
if player_alive_changed then return true end\
\
-- Visibility based on deployable ID\
local deployable_id = tostring(sources.player_2 and sources.player_2.pocketables and sources.player_2.pocketables.id)\
local team_members = {sources.player_1, sources.player_2, sources.player_3, sources.player_4 }\
--     Medical crate\
--     Show if teammates are missing the amount it can heal (not accounting for Field Improv corrution)\
if (deployable_id == \"med_crate_pocketable\") then\
    --     500 hitpoints\
    local medical_crate_heal_amount = 500\
    local allied_missing_health = 0\
    -- Check each team member to find total missing hp\
    for i = 1, #team_members do\
        local player = team_members[i]\
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
    for i = 1, #team_members do\
        local player = team_members[i]\
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
										field = "t.held",
										kind = "source",
										source = "keys",
									},
									op = "true",
								},
								{
									join = "or",
									lhs = {
										field = "pocketables.held",
										kind = "source",
										source = "player_2",
									},
									op = "changed",
								},
								{
									join = "or",
									lhs = {
										field = "state.disabled",
										kind = "source",
										source = "player_2",
									},
									op = "true",
								},
								{
									join = "or",
									lhs = {
										field = "state.alive",
										kind = "source",
										source = "player_2",
									},
									op = "changed",
								},
								{
									join = "or",
									lhs = {
										kind = "fixed",
									},
									op = "==",
								},
								{
									join = "and",
									lhs = {
										field = "pocketables.deployable_is_held",
										kind = "source",
										source = "player_2",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "equipment.ammo_reserve_percent",
										kind = "source",
										source = "player_2",
									},
									op = "==",
								},
								{
									join = "and",
									lhs = {
										field = "equipment.ranged_uses_ammo",
										kind = "source",
										source = "player_2",
									},
									op = "true",
								},
							},
						},
						kind = "code",
					},
				},
			},
			id = "pocketable_icon_linger_on_pickup",
			label = "Pocketable Icon (Linger On Pickup)",
			offset = {
				-1453,
				304,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					30,
					30,
				},
				transition = {
					fade_out = 0.29999999999999999,
					linger = 0.40000000000000002,
				},
			},
			type = "rect",
			update_rate = "data",
			values = {
				material = "sa:",
			},
		},
		{
			callbacks = {
				value = {
					color = {
						field = "stimms.held_color",
						kind = "source",
						source = "player_2",
					},
					material = {
						field = "stimms.icon_small",
						kind = "source",
						source = "player_2",
					},
					visible = {
						body = "-- Hotkey Override On Demand\
local held_hotkey = sources.keys and sources.keys.t and sources.keys.t.held\
if (held_hotkey and held_hotkey ~= 0) then return true end\
\
-- Checks if Player has Stimm\
local player_alive = sources.player_2 and sources.player_2.state and sources.player_2.state.alive\
local player_has_stimm = player_alive and sources.player_2 and sources.player_2.stimms and sources.player_2.stimms.held\
\
-- Player status charges (gets disabled or dies)\
local player_disabled = sources.player_2 and sources.player_2.state and sources.player_2.state.disabled\
if player_disabled then return true end\
local player_alive_changed = anim.changed(state, \"stimm_icon_appear_if_ally_on_last_wound_visible_4\", player_alive)\
if player_alive_changed then return true end\
\
-- This player has heal stimm and any teammate is on their last wound\
local player_has_heal_stimm = player_has_stimm and (sources.player_2.stimms.id == \"syringe_corruption_pocketable\")\
if (player_has_heal_stimm) then\
    local ally_is_last_wound = false\
    local teammates = {sources.player_1, sources.player_2, sources.player_3, sources.player_4}\
    local ally_iterator = 1\
    while (not ally_is_last_wound) and (ally_iterator < #teammates) do\
        local current_ally = teammates[ally_iterator]\
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
										field = "t.held",
										kind = "source",
										source = "keys",
									},
									op = "true",
								},
								{
									join = "or",
									lhs = {
										field = "state.alive",
										kind = "source",
										source = "player_2",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "status.wounds",
										kind = "source",
										source = "player_2",
									},
									op = "==",
									rhs = {
										kind = "fixed",
										value = 1,
									},
								},
								{
									join = "and",
									lhs = {
										field = "stimms.held",
										kind = "source",
										source = "player_2",
										value = "false",
									},
									op = "false",
								},
							},
						},
						field = "ability.held",
						kind = "code",
						source = "actions",
					},
				},
			},
			id = "stimm_icon_appear_if_ally_on_last_wound",
			label = "Stimm Icon (Appear if Ally on Last Wound)",
			offset = {
				-1418,
				304,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					30,
					30,
				},
			},
			type = "rect",
			update_rate = "data",
			values = {
				material = "content/ui/materials/icons/pocketables/hud/small/party_syringe_ability",
			},
		},
		{
			callbacks = {
				value = {
					color = {
						kind = "fixed",
						thresholds = {
							current = {
								kind = "fixed",
								value = 0,
							},
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
							},
							max = {
								kind = "fixed",
								value = 100,
							},
							payload = "color",
							scale = "percent",
						},
					},
					material = {
						field = "ability.icon",
						kind = "source",
						source = "player_2",
					},
					opacity = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "ability.progress_percent_to_next_charge",
								kind = "source",
								source = "player_2",
								value = 0,
							},
							list = {
								{
									number = 0.25,
									pct = 0,
								},
								{
									number = 0.75,
									pct = 80,
								},
								{
									number = 1,
									pct = 100,
								},
								{
									number = 0.5,
									pct = 50,
								},
							},
							max = {
								kind = "fixed",
								value = 100,
							},
							payload = "number",
							scale = "percent",
						},
					},
					visible = {
						body = "",
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "t.held",
										kind = "source",
										source = "keys",
									},
									op = "true",
								},
								{
									join = "or",
									lhs = {
										field = "ability.progress_percent_to_next_charge",
										kind = "source",
										source = "player_2",
									},
									op = ">",
									rhs = {
										kind = "fixed",
										value = 80,
									},
								},
								{
									join = "and",
									lhs = {
										field = "ability.progress_percent_to_next_charge",
										kind = "source",
										source = "player_2",
									},
									op = "changed",
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "ability_charging__80",
			label = "Ability (Charging > 80%)",
			offset = {
				-1495,
				297,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					40,
					40,
				},
				transition = {
					fade_out = 0.29999999999999999,
				},
				visible = false,
			},
			type = "rect",
			values = {},
		},
		{
			callbacks = {
				value = {
					color = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "ability.progress_percent_to_next_charge",
								kind = "source",
								source = "player_2",
								value = 0,
							},
							list = {
								{
									color = {
										0,
										255,
										255,
										255,
									},
									pct = 59,
								},
								{
									color = {
										78,
										237,
										255,
										15,
									},
									pct = 80,
								},
								{
									color = {
										255,
										237,
										255,
										15,
									},
									pct = 100,
								},
							},
							max = {
								kind = "fixed",
								value = 100,
							},
							payload = "color",
							scale = "percent",
						},
					},
					opacity = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "ability.progress_percent_to_next_charge",
								kind = "source",
								source = "player_2",
								value = 0,
							},
							list = {
								{
									number = 0.25,
									pct = 0,
								},
								{
									number = 0.75,
									pct = 80,
								},
								{
									number = 1,
									pct = 100,
								},
								{
									number = 0.5,
									pct = 50,
								},
							},
							max = {
								kind = "fixed",
								value = 100,
							},
							payload = "number",
							scale = "percent",
						},
					},
					visible = {
						body = "",
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "t.held",
										kind = "source",
										source = "keys",
									},
									op = "true",
								},
								{
									join = "or",
									lhs = {
										field = "ability.progress_percent_to_next_charge",
										kind = "source",
										source = "player_2",
									},
									op = ">",
									rhs = {
										kind = "fixed",
										value = 80,
									},
								},
								{
									join = "and",
									lhs = {
										field = "ability.progress_percent_to_next_charge",
										kind = "source",
										source = "player_2",
									},
									op = "changed",
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "ability_icon_charging__80",
			label = "Ability Icon (Charging > 80%)",
			offset = {
				-1495,
				297,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					40,
					40,
				},
				transition = {
					fade_out = 0.29999999999999999,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/icons/mission_types/mission_type_01",
				opacity = 1,
			},
		},
		{
			callbacks = {
				value = {
					text = {
						field = "blitz.count",
						kind = "source",
						source = "player_2",
					},
					text2 = {
						field = "ability.name",
						kind = "fixed",
						source = "player_2",
					},
					text3 = {
						field = "blitz.max_count",
						kind = "source",
						source = "player_2",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "or",
									lhs = {
										field = "blitz.uses_charges",
										kind = "source",
										source = "player_2",
										value = "uses",
									},
									op = "true",
								},
								{
									join = "and",
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
			id = "blitz_detail_text",
			label = "Blitz Detail Text",
			offset = {
				-1520,
				321,
			},
			style = {
				align = "top_center",
				color = {
					255,
					237,
					255,
					15,
				},
				font_size = 15,
				shadow = true,
				size = {
					25,
					15,
				},
			},
			type = "text",
			values = {
				mode = "fixed",
				mode2 = "fixed",
				mode3 = "fixed",
				text = "Text",
				text2 = "/",
				value_mode = "chain",
			},
		},
		{
			callbacks = {
				value = {
					color = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "blitz.count",
								kind = "source",
								source = "player_2",
								value = 0,
							},
							list = {
								{
									color = {
										141,
										114,
										0,
										0,
									},
									pct = 0,
								},
								{
									color = {
										86,
										114,
										0,
										0,
									},
									pct = 1,
								},
								{
									color = {
										120,
										255,
										255,
										255,
									},
									pct = 2,
								},
							},
							max = {
								field = "blitz.max_count",
								kind = "source",
								source = "player_2",
								value = 100,
							},
							payload = "color",
							scale = "number",
						},
					},
					material = {
						body = "local rechargable = sources.player_2 and sources.player_2.blitz and sources.player_2.blitz.is_refilling\
\
if rechargable then\
    -- Lightning Bolt\
    material = \"content/ui/materials/icons/presets/preset_11\"\
else\
    -- Grenade\
    material = \"content/ui/materials/hud/interactions/icons/grenade\"\
end\
",
						field = "blitz.icon",
						kind = "code",
						source = "player_2",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "blitz.uses_charges",
										kind = "source",
										source = "player_2",
										value = "uses",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "blitz.count",
										kind = "source",
										source = "player_2",
									},
									op = "<",
									rhs = {
										kind = "fixed",
										value = 2,
									},
								},
								{
									join = "and",
									lhs = {
										field = "blitz.count",
										kind = "source",
										source = "player_2",
									},
									op = "changed",
								},
								{
									join = "or",
									lhs = {
										field = "blitz.uses_charges",
										kind = "source",
										source = "player_2",
										value = "uses",
									},
									op = "true",
								},
								{
									join = "and",
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
			id = "blitz_icon_changed_and__2",
			label = "Blitz Icon (Changed and < 2)",
			offset = {
				-1520,
				300,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					25,
					25,
				},
				transition = {
					fade_out = 0.20000000000000001,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/hud/interactions/icons/grenade",
			},
		},
		{
			callbacks = {
				value = {
					text = {
						field = "equipment.ammo_reserve_percent",
						kind = "source",
						source = "player_2",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "equipment.ranged_uses_ammo",
										kind = "source",
										source = "player_2",
									},
									op = "true",
								},
								{
									join = "and",
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
			id = "ammo_detail",
			label = "Ammo Detail",
			offset = {
				-1547,
				322,
			},
			style = {
				align = "top_center",
				color = {
					255,
					255,
					255,
					255,
				},
				font_size = 15,
				shadow = true,
				size = {
					30,
					15,
				},
			},
			type = "text",
			values = {
				mode = "fixed",
				text = "Text",
			},
		},
		{
			callbacks = {
				value = {
					color = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "equipment.ammo_rounds_remaining_percent",
								kind = "source",
								source = "player_2",
								value = 0,
							},
							list = {
								{
									color = {
										255,
										255,
										8,
										8,
									},
									pct = 0,
								},
								{
									color = {
										255,
										255,
										188,
										49,
									},
									pct = 25,
								},
								{
									color = {
										255,
										255,
										255,
										255,
									},
									pct = 50,
								},
								{
									color = {
										255,
										216,
										255,
										186,
									},
									pct = 85,
								},
							},
							max = {
								kind = "fixed",
								value = 100,
							},
							payload = "color",
							scale = "percent",
						},
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "equipment.ranged_uses_ammo",
										kind = "source",
										source = "player_2",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "t.held",
										kind = "source",
										source = "keys",
									},
									op = "true",
								},
								{
									join = "or",
									lhs = {
										field = "equipment.ranged_uses_ammo",
										kind = "source",
										source = "player_2",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "equipment.ammo_reserve_percent",
										kind = "source",
										source = "player_2",
									},
									op = "<",
									rhs = {
										kind = "fixed",
										value = 34,
									},
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "ammo_icon_reserve__34",
			label = "Ammo Icon (Reserve < 34%)",
			offset = {
				-1549,
				295,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					35,
					35,
				},
				transition = {
					fade_out = 0.29999999999999999,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/hud/communication_wheel/icons/ammo",
			},
		},
		{
			callbacks = {
				value = {
					color = {
						field = "identity.slot_color",
						kind = "thresholds",
						source = "player_2",
						thresholds = {
							current = {
								field = "status.toughness_percent",
								kind = "source",
								source = "player_2",
								value = 0,
							},
							list = {
								{
									color = {
										0,
										120,
										220,
										255,
									},
									pct = 0,
								},
								{
									color = {
										17,
										120,
										220,
										255,
									},
									pct = 1,
								},
								{
									color = {
										30,
										120,
										220,
										255,
									},
									pct = 5,
								},
								{
									color = {
										70,
										120,
										220,
										255,
									},
									pct = 15,
								},
								{
									color = {
										126,
										120,
										220,
										255,
									},
									pct = 25,
								},
								{
									color = {
										202,
										120,
										220,
										255,
									},
									pct = 50,
								},
								{
									color = {
										255,
										120,
										220,
										255,
									},
									pct = 75,
								},
								{
									color = {
										255,
										248,
										255,
										15,
									},
									pct = 101,
								},
							},
							max = {
								kind = "fixed",
								value = 100,
							},
							payload = "color",
							scale = "percent",
						},
					},
					material = {
						kind = "fixed",
					},
					opacity = {
						kind = "fixed",
						thresholds = {
							current = {
								kind = "fixed",
								value = 0,
							},
							list = {
								{
									number = 0,
									pct = 0,
								},
								{
									number = 1,
									pct = 1,
								},
							},
							max = {
								kind = "fixed",
								value = 100,
							},
							payload = "number",
							scale = "percent",
						},
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "t.held",
										kind = "source",
										source = "keys",
									},
									op = "true",
								},
							},
						},
						field = "ability.is_active",
						kind = "conditions",
						source = "player_2",
					},
				},
			},
			id = "toughness_detail_icon",
			label = "Toughness Detail Icon",
			offset = {
				-1592,
				292,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					50,
					50,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/hud/interactions/icons/void_shield",
			},
		},
		{
			callbacks = {
				value = {
					opacity = {
						kind = "fixed",
						thresholds = {
							current = {
								kind = "fixed",
								value = 0,
							},
							list = {
								{
									number = 1,
									pct = 0,
								},
							},
							max = {
								kind = "fixed",
								value = 100,
							},
							payload = "number",
							scale = "percent",
						},
					},
					visible = {
						conditions = {
							rows = {},
						},
						field = "status.toughness_broken",
						kind = "source",
						source = "player_2",
					},
				},
			},
			id = "toughness_broken_icon",
			label = "Toughness Broken Icon",
			offset = {
				-1588,
				297,
			},
			style = {
				color = {
					255,
					114,
					0,
					0,
				},
				size = {
					45,
					45,
				},
				transition = {
					fade_out = 0.29999999999999999,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/icons/circumstances/havoc/havoc_mutator_rotten_armor",
			},
		},
		{
			callbacks = {
				value = {
					text = {
						field = "status.health",
						kind = "source",
						source = "player_2",
					},
					text3 = {
						field = "status.health_max",
						kind = "source",
						source = "player_2",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
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
			id = "health_detail_text",
			label = "Health Detail Text",
			offset = {
				-1537,
				278,
			},
			style = {
				decimals = 1,
				decimals3 = 1,
				shadow = true,
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
					color = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "state.disabled",
								kind = "source",
								source = "player_2",
								value = false,
							},
							list = {
								{
									color = {
										255,
										255,
										139,
										188,
									},
									pct = 0,
								},
								{
									color = {
										184,
										103,
										53,
										74,
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
					current = {
						field = "status.health_percent",
						kind = "source",
						source = "player_2",
					},
					max = {
						field = "ability.active_progress_percent",
						kind = "fixed",
						source = "player_2",
					},
					segments = {
						field = "status.wounds_max",
						kind = "source",
						source = "player_2",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "t.held",
										kind = "source",
										source = "keys",
									},
									op = "true",
								},
								{
									join = "or",
									lhs = {
										field = "state.downed",
										kind = "source",
										source = "player_2",
									},
									op = "true",
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "health_detail_bar",
			label = "Health Detail Bar",
			offset = {
				-1535,
				265,
			},
			style = {
				color = {
					255,
					221,
					120,
					255,
				},
				size = {
					150,
					15,
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
						source = "player_2",
					},
					segments = {
						field = "status.wounds_max",
						kind = "source",
						source = "player_2",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
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
			id = "corruption_detail_bar_2",
			label = "Corruption Detail Bar",
			offset = {
				-1535,
				265,
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
				orientation = "right_left",
				size = {
					150,
					15,
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
					color = {
						field = "identity.slot_color",
						kind = "thresholds",
						source = "player_2",
						thresholds = {
							current = {
								field = "status.health_percent",
								kind = "source",
								source = "player_2",
								value = 0,
							},
							list = {
								{
									color = {
										255,
										255,
										137,
										137,
									},
									pct = 5,
								},
								{
									color = {
										255,
										255,
										243,
										137,
									},
									pct = 15,
								},
								{
									color = {
										255,
										241,
										255,
										137,
									},
									pct = 25,
								},
								{
									color = {
										255,
										188,
										255,
										137,
									},
									pct = 50,
								},
								{
									color = {
										255,
										153,
										255,
										137,
									},
									pct = 75,
								},
							},
							max = {
								kind = "fixed",
								value = 100,
							},
							payload = "color",
							scale = "percent",
						},
					},
					opacity = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "state.downed",
								kind = "source",
								source = "player_2",
								value = false,
							},
							list = {
								{
									number = 1,
									pct = 0,
								},
								{
									number = 0.33000000000000002,
									pct = 0,
								},
							},
							max = {
								kind = "fixed",
								value = 100,
							},
							payload = "number",
							scale = "boolean",
						},
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "t.held",
										kind = "source",
										source = "keys",
									},
									op = "true",
								},
								{
									join = "or",
									lhs = {
										field = "status.health_percent",
										kind = "source",
										source = "player_2",
									},
									op = "changed",
								},
								{
									join = "or",
									lhs = {
										field = "state.requires_help",
										kind = "source",
										source = "player_2",
									},
									op = "true",
								},
								{
									join = "or",
									lhs = {
										field = "status.health",
										kind = "source",
										source = "player_2",
									},
									op = "<",
									rhs = {
										kind = "fixed",
										value = 100,
									},
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "health_icon",
			label = "Health Icon",
			offset = {
				-1591,
				255,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					50,
					50,
				},
				transition = {
					fade_out = 0.29999999999999999,
					linger = 0.40000000000000002,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/hud/interactions/icons/pocketable_medkit",
			},
		},
		{
			callbacks = {
				value = {
					text = {
						field = "identity.text_icon",
						kind = "source",
						source = "player_2",
					},
					text2 = {
						field = "profile.name",
						kind = "fixed",
						source = "player_2",
					},
					text3 = {
						field = "profile.name",
						kind = "source",
						source = "player_2",
					},
					text5 = {
						field = "profile.total_level",
						kind = "source",
						source = "player_2",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "t.held",
										kind = "source",
										source = "keys",
									},
									op = "true",
								},
								{
									join = "or",
									lhs = {
										field = "state.requires_help",
										kind = "source",
										source = "player_2",
									},
									op = "true",
								},
								{
									join = "or",
									lhs = {
										field = "state.alive",
										kind = "source",
										source = "player_2",
									},
									op = "changed",
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "player_name_detail",
			label = "Player Name Detail",
			offset = {
				-1587,
				238,
			},
			style = {
				segment_order = {
					1,
					2,
					3,
					4,
					5,
				},
				shadow = true,
			},
			type = "text",
			values = {
				mode = "fixed",
				mode2 = "fixed",
				mode3 = "fixed",
				mode5 = "fixed",
				text = "Text",
				text2 = " ",
				text4 = " -  ",
				value_mode = "chain",
			},
		},
		{
			callbacks = {
				value = {
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "state.requires_help",
										kind = "source",
										source = "player_2",
									},
									op = "true",
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "needs_help_enable_if_not_using_bdi",
			label = "Needs Help (Enable if Not Using BDI)",
			offset = {
				-1544,
				264,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					75,
					75,
				},
				visible = false,
			},
			type = "rect",
			values = {
				material = "content/ui/materials/hud/interactions/icons/help",
			},
		},
	},
	offset = {
		47,
		51,
	},
	opacity = {
		kind = "fixed",
		value = 0.5,
	},
	save_name = "owo_ally_icons",
	scale_anchor = "origin",
	screen_anchor = "left",
	script = {
		body = "",
	},
	summary = "Contextual Icons indicating imminent danger and available equipment",
	tags = {
		"ally",
		"team",
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
						source = "player_2",
					},
					op = "true",
				},
				{
					join = "and",
					lhs = {
						field = "state.bot",
						kind = "source",
						source = "player_2",
					},
					op = "false",
				},
			},
		},
		kind = "conditions",
	},
}