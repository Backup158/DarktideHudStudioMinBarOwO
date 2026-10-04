return {
	deleted_nodes = {
		{
			callbacks = {
				value = {
					color = {
						kind = "thresholds",
						thresholds = {
							current = {
								kind = "fixed",
								value = 0,
							},
							list = {
								{
									color = {
										255,
										255,
										255,
										255,
									},
									pct = 0,
								},
								{
									color = {
										255,
										214,
										178,
										240,
									},
									pct = 50,
								},
								{
									color = {
										255,
										142,
										19,
										255,
									},
									pct = 80,
								},
								{
									color = {
										255,
										85,
										16,
										121,
									},
									pct = 97,
								},
								{
									color = {
										255,
										0,
										0,
										0,
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
					material = {
						body = "",
						field = "profile.portrait_frame",
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
							},
						},
						field = "ability.held",
						kind = "conditions",
						source = "actions",
					},
				},
			},
			id = "peril",
			label = "Peril",
			offset = {
				-78,
				123,
			},
			style = {
				color = {
					255,
					127,
					0,
					194,
				},
				size = {
					200,
					18,
				},
				visible = false,
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
				},
			},
			id = "text_1",
			offset = {
				137,
				199,
			},
			style = {
				font_size = 30,
				font_type = "proxima_nova_bold",
				shadow = true,
			},
			type = "text",
			values = {
				mode = "fixed",
				text = "Text",
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
	grid_cols = 0,
	grid_rows = 0,
	label = "Player only Panel",
	localizations = {},
	name = "player_only_panel",
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
										value = "30%",
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
										value = "30%",
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
					255,
					255,
					255,
					255,
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
										value = "80%",
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
						kind = "source",
						source = "player_1",
					},
				},
			},
			id = "pocketable",
			label = "Pocketable",
			offset = {
				-138,
				200,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					38,
					38,
				},
				visible = false,
			},
			type = "rect",
			values = {},
		},
		{
			callbacks = {
				value = {
					material = {
						field = "stimms.icon",
						kind = "source",
						source = "player_1",
					},
					visible = {
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
						kind = "source",
						source = "player_1",
					},
				},
			},
			id = "drugs",
			label = "Drugs",
			offset = {
				-175,
				200,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					38,
					38,
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
			id = "peril_fade_in_threshold",
			label = "Peril (Fade in threshold)",
			offset = {
				-76,
				246,
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
	scale_anchor = "center",
	screen_anchor = "bottom",
	summary = "Compact player panel appear on change, low value, or hotkey.",
	tags = {
		"player",
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