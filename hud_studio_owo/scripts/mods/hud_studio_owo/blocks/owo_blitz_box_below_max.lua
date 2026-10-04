return {
	design_aspect = 1.7777777777777777,
	design_hud_scale = 0.59999999999999998,
	design_resolution = {
		1920,
		1080,
	},
	export_mod = "hud_studio_owo",
	grid_cols = 0,
	grid_rows = 0,
	label = "OwO Blitz Box (Below Max)",
	localizations = {},
	name = "owo_blitz_box_below_max",
	nodes = {
		{
			callbacks = {
				value = {
					material = {
						field = "blitz.icon",
						kind = "source",
						source = "player_1",
					},
					size = {
						body = "",
						kind = "fixed",
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
			id = "blitz_icon",
			label = "Blitz Icon",
			offset = {
				73,
				820,
			},
			style = {
				color = {
					255,
					237,
					255,
					15,
				},
				size = {
					62,
					62,
				},
			},
			type = "rect",
			values = {},
		},
		{
			callbacks = {
				value = {
					text = {
						field = "blitz.cooldown_seconds_to_next_charge",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "blitz.progress_percent_to_next_charge",
										kind = "source",
										source = "player_1",
									},
									op = ">",
									rhs = {
										kind = "fixed",
										value = 33,
									},
								},
								{
									join = "and",
									lhs = {
										field = "ability.charges",
										kind = "source",
										source = "player_1",
									},
									op = "<",
									rhs = {
										field = "ability.max_charges",
										kind = "source",
										source = "player_1",
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
			id = "seconds_to_next_charge",
			label = "Seconds to next charge",
			offset = {
				155,
				827,
			},
			style = {
				color = {
					255,
					134,
					211,
					122,
				},
				decimals = 1,
				font_size = 37,
				shadow = true,
				visible = false,
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
						field = "blitz.progress_percent_to_next_charge",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "blitz.progress_percent_to_next_charge",
										kind = "source",
										source = "player_1",
									},
									op = "between",
									rhs = {
										kind = "fixed",
										value = 70,
									},
									rhs2 = {
										kind = "fixed",
										value = 95,
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
								{
									join = "and",
									lhs = {
										field = "blitz.uses_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "progress_to_next_charge",
			label = "Progress to next charge",
			offset = {
				162,
				827,
			},
			style = {
				color = {
					255,
					134,
					211,
					122,
				},
				font_size = 37,
				shadow = true,
				size = {
					95,
					50,
				},
				visible = false,
			},
			type = "text",
			values = {
				mode = "fixed",
				text = "Text",
				text2 = "%",
				value_mode = "chain",
			},
		},
		{
			callbacks = {
				value = {
					current = {
						field = "blitz.progress_percent_to_next_charge",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "blitz.progress_percent_to_next_charge",
										kind = "source",
										source = "player_1",
									},
									op = "between",
									rhs = {
										kind = "fixed",
										value = 70,
									},
									rhs2 = {
										kind = "fixed",
										value = 95,
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
								{
									join = "and",
									lhs = {
										field = "blitz.uses_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "progress_to_next_charge_bar",
			label = "Progress to next charge bar",
			offset = {
				155,
				828,
			},
			style = {
				color = {
					255,
					237,
					255,
					15,
				},
				orientation = "bottom_top",
				size = {
					15,
					46,
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
						field = "blitz.max_count",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "blitz.is_equipped",
										kind = "source",
										source = "player_1",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "blitz.uses_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
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
			id = "max_when_holding",
			label = "Max when holding",
			offset = {
				132,
				850,
			},
			style = {
				color = {
					255,
					154,
					154,
					154,
				},
				shadow = true,
				size = {
					43,
					22,
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
						field = "blitz.count",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "blitz.is_equipped",
										kind = "source",
										source = "player_1",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "blitz.uses_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
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
			id = "charges_when_holding",
			label = "Charges when holding",
			offset = {
				132,
				827,
			},
			style = {
				shadow = true,
				size = {
					58,
					22,
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
		26,
		-1,
	},
	opacity = {
		kind = "fixed",
		value = 0.67000000000000004,
	},
	scale_anchor = "center",
	screen_anchor = "bottom",
	summary = "Show blitz count when in hand and below max. Show all on hotkey. Progress does not include talents because go die.",
	tags = {
		"blitz",
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
						field = "blitz.count",
						kind = "source",
						source = "player_1",
					},
					op = "<",
					rhs = {
						field = "blitz.max_count",
						kind = "source",
						source = "player_1",
						value = 0,
					},
				},
				{
					join = "or",
					lhs = {
						field = "blitz.is_equipped",
						kind = "source",
						source = "player_1",
					},
					op = "true",
					rhs = {
						field = "blitz.max_count",
						kind = "source",
						source = "player_1",
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
		field = "blitz.is_ready",
		kind = "conditions",
		source = "player_1",
	},
}