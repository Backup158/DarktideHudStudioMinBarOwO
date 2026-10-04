return {
	deleted_nodes = {
		{
			id = "progress_bar_1",
			offset = {
				0,
				0,
			},
			style = {
				color = {
					255,
					120,
					220,
					255,
				},
			},
			type = "progress_bar",
			values = {
				current = 60,
				max = 100,
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
	label = "OwO Near Crosshair",
	localizations = {},
	name = "owo_near_crosshair",
	nodes = {
		{
			callbacks = {
				value = {
					current = {
						field = "status.dodge_refresh_percent",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "status.dodges",
										kind = "source",
										source = "player_1",
									},
									op = "<=",
									rhs = {
										kind = "fixed",
										value = 1,
									},
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "dodge_refresh_",
			label = "Dodge Refresh %",
			offset = {
				-50,
				176,
			},
			style = {
				color = {
					255,
					225,
					220,
					190,
				},
				size = {
					100,
					10,
				},
				visible = false,
			},
			type = "progress_bar",
			values = {
				current = 60,
				max = 100,
				opacity = 0.69999999999999996,
			},
		},
		{
			callbacks = {
				value = {
					color = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "status.dodges",
								kind = "source",
								source = "player_1",
								value = 0,
							},
							list = {
								{
									color = {
										255,
										122,
										0,
										0,
									},
									pct = -5,
								},
								{
									color = {
										255,
										255,
										27,
										27,
									},
									pct = -3,
								},
								{
									color = {
										255,
										254,
										197,
										81,
									},
									pct = -1,
								},
								{
									color = {
										255,
										225,
										220,
										190,
									},
									pct = 0,
								},
								{
									color = {
										255,
										225,
										220,
										190,
									},
									pct = 5,
								},
							},
							max = {
								field = "status.dodges_max",
								kind = "source",
								source = "player_1",
								value = 100,
							},
							payload = "color",
							scale = "number",
						},
					},
					text = {
						field = "status.dodges",
						kind = "source",
						source = "player_1",
					},
					text2 = {
						field = "ability.name",
						kind = "fixed",
						source = "player_1",
					},
					text3 = {
						field = "status.dodges_max",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "status.dodges",
										kind = "source",
										source = "player_1",
									},
									op = "<=",
									rhs = {
										kind = "fixed",
										value = 1,
									},
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "dodge__max_1",
			label = "Dodge / Max (<1)",
			offset = {
				-50,
				150,
			},
			style = {
				align = "top_center",
				color = {
					255,
					225,
					220,
					190,
				},
				shadow = true,
				size = {
					100,
					29,
				},
				transition = {
					fade_out = 0.20000000000000001,
				},
			},
			type = "text",
			values = {
				mode = "fixed",
				mode2 = "fixed",
				mode3 = "fixed",
				opacity = 0.69999999999999996,
				text = "Text",
				text2 = " / ",
				value_mode = "chain",
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
			id = "peril_text_appear_at_stricter_condition",
			label = "Peril Text (Appear at stricter condition)",
			offset = {
				-50,
				188,
			},
			style = {
				align = "top_center",
				color = {
					255,
					221,
					120,
					255,
				},
				decimals = 1,
				font_size = 20,
				shadow = true,
				size = {
					100,
					30,
				},
				transition = {
					fade_out = 0.40000000000000002,
				},
			},
			type = "text",
			values = {
				mode = "fixed",
				text = "Text",
				text2 = "% :3",
				value_mode = "chain",
			},
		},
		{
			callbacks = {
				value = {
					text = {
						field = "equipment.ranged_overheat_percent",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "equipment.ranged_overheats",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = 95,
									},
								},
								{
									join = "and",
									lhs = {
										field = "equipment.ranged_is_equipped",
										kind = "source",
										source = "player_1",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "equipment.ranged_overheat_percent",
										kind = "source",
										source = "player_1",
									},
									op = ">=",
									rhs = {
										kind = "fixed",
										value = 90,
									},
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "ranged_heat",
			label = "Ranged Heat",
			offset = {
				-50,
				210,
			},
			style = {
				align = "top_center",
				color = {
					255,
					81,
					136,
					250,
				},
				decimals = 0,
				shadow = true,
				size = {
					100,
					25,
				},
				transition = {
					fade_out = 0.40000000000000002,
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
					text = {
						field = "equipment.melee_overheat_percent",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "equipment.melee_overheats",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = 95,
									},
								},
								{
									join = "and",
									lhs = {
										field = "equipment.melee_is_equipped",
										kind = "source",
										source = "player_1",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "equipment.melee_overheat_percent",
										kind = "source",
										source = "player_1",
									},
									op = ">=",
									rhs = {
										kind = "fixed",
										value = 90,
									},
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "melee_heat_copy",
			label = "Melee Heat",
			offset = {
				-50,
				210,
			},
			style = {
				align = "top_center",
				color = {
					255,
					255,
					188,
					49,
				},
				decimals = 0,
				shadow = true,
				size = {
					100,
					25,
				},
				transition = {
					fade_out = 0.40000000000000002,
				},
			},
			type = "text",
			values = {
				mode = "fixed",
				text = "Text",
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
	scale_anchor = "origin",
	summary = "Small numerical displays at low opacity: dodges, peril, and heat (dodge refresh hidden by default).",
	tags = {
		"dodge",
		"peril",
		"heat",
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