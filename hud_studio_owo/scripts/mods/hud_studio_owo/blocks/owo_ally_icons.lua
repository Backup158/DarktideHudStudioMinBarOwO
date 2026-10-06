return {
	deleted_nodes = {
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
								source = "player_1",
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
								source = "player_1",
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
										source = "player_1",
										value = "uses",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "blitz.is_refilling",
										kind = "source",
										source = "player_1",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "blitz.count",
										kind = "source",
										source = "player_1",
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
										source = "player_1",
									},
									op = "changed",
								},
								{
									join = "or",
									lhs = {
										field = "blitz.uses_charges",
										kind = "source",
										source = "player_1",
										value = "uses",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "blitz.is_refilling",
										kind = "source",
										source = "player_1",
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
	name = "owo_ally_icons",
	nodes = {
		{
			callbacks = {
				value = {
					material = {
						field = "pocketables.icon_small",
						kind = "source",
						source = "player_1",
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
										field = "pocketables.held",
										kind = "source",
										source = "player_1",
									},
									op = "changed",
								},
							},
						},
						kind = "conditions",
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
						source = "player_1",
					},
					material = {
						field = "stimms.icon_small",
						kind = "source",
						source = "player_1",
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
										source = "player_1",
										value = "false",
									},
									op = "false",
								},
								{
									join = "or",
									lhs = {
										field = "state.alive",
										kind = "source",
										source = "player_3",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "status.wounds",
										kind = "source",
										source = "player_3",
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
										source = "player_1",
										value = "false",
									},
									op = "false",
								},
								{
									join = "or",
									lhs = {
										field = "state.alive",
										kind = "source",
										source = "player_4",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "status.wounds",
										kind = "source",
										source = "player_4",
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
										source = "player_1",
										value = "false",
									},
									op = "false",
								},
							},
						},
						kind = "conditions",
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
						source = "player_1",
					},
					opacity = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "ability.progress_percent_to_next_charge",
								kind = "source",
								source = "player_1",
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
										source = "player_1",
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
										source = "player_1",
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
			},
			type = "rect",
			values = {},
		},
		{
			callbacks = {
				value = {
					text = {
						field = "blitz.count",
						kind = "source",
						source = "player_1",
					},
					text2 = {
						field = "ability.name",
						kind = "fixed",
						source = "player_1",
					},
					text3 = {
						field = "blitz.max_count",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "or",
									lhs = {
										field = "blitz.uses_charges",
										kind = "source",
										source = "player_1",
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
								source = "player_1",
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
								source = "player_1",
								value = 100,
							},
							payload = "color",
							scale = "number",
						},
					},
					material = {
						body = "local rechargable = sources.player_1 and sources.player_1.blitz and sources.player_1.blitz.is_refilling\
\
if rechargable then\
    -- Lightning Bolt\
    material = \"content/ui/materials/icons/presets/preset_11\"\
else\
    -- Grenade\
    material = \"content/ui/materials/hud/interactions/icons/grenade\"\
end\
",
						field = "ability.icon",
						kind = "code",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "blitz.uses_charges",
										kind = "source",
										source = "player_1",
										value = "uses",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "blitz.count",
										kind = "source",
										source = "player_1",
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
										source = "player_1",
									},
									op = "changed",
								},
								{
									join = "or",
									lhs = {
										field = "blitz.uses_charges",
										kind = "source",
										source = "player_1",
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
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "equipment.ranged_uses_ammo",
										kind = "source",
										source = "player_1",
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
								source = "player_1",
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
										source = "player_1",
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
										source = "player_1",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "equipment.ammo_reserve_percent",
										kind = "source",
										source = "player_1",
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
						source = "player_1",
						thresholds = {
							current = {
								field = "status.toughness_percent",
								kind = "source",
								source = "player_1",
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
						source = "player_1",
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
						source = "player_1",
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
					current = {
						field = "status.health_percent",
						kind = "source",
						source = "player_1",
					},
					max = {
						field = "ability.active_progress_percent",
						kind = "fixed",
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
						source = "player_1",
						thresholds = {
							current = {
								field = "status.health_percent",
								kind = "source",
								source = "player_1",
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
										source = "player_1",
									},
									op = "changed",
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
						source = "player_1",
					},
					text2 = {
						field = "profile.name",
						kind = "fixed",
						source = "player_1",
					},
					text3 = {
						field = "profile.name",
						kind = "source",
						source = "player_1",
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
			id = "player_name_detail",
			label = "Player Name Detail",
			offset = {
				-1587,
				238,
			},
			style = {
				shadow = true,
			},
			type = "text",
			values = {
				mode = "fixed",
				mode2 = "fixed",
				mode3 = "fixed",
				text = "Text",
				text2 = " ",
				value_mode = "chain",
			},
		},
	},
	offset = {
		0,
		0,
	},
	opacity = {
		kind = "fixed",
		value = 0.5,
	},
	save_name = "owo_ally_icons",
	scale_anchor = "origin",
	screen_anchor = "left",
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
						source = "player_1",
					},
					op = "true",
				},
				{
					join = "and",
					lhs = {
						field = "state.bot",
						kind = "source",
						source = "player_1",
					},
					op = "false",
				},
			},
		},
		kind = "conditions",
	},
}