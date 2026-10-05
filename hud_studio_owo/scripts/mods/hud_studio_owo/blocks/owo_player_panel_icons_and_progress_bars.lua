return {
	deleted_nodes = {
		{
			id = "progress_bar",
			offset = {
				-60,
				30,
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
	label = "OwO Player Panel Icons and Progress Bars",
	localizations = {},
	name = "owo_player_panel_icons_and_progress_bars",
	nodes = {
		{
			callbacks = {
				value = {
					color = {
						kind = "thresholds",
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
										255,
										21,
										35,
										40,
									},
									pct = 5,
								},
								{
									color = {
										255,
										55,
										129,
										155,
									},
									pct = 25,
								},
								{
									color = {
										255,
										120,
										220,
										255,
									},
									pct = 50,
								},
								{
									color = {
										255,
										255,
										241,
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
						field = "ability.icon",
						kind = "fixed",
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
			id = "armor_contempt",
			label = "Armor (Contempt)",
			offset = {
				19,
				826,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					69,
					69,
				},
				transition = {
					fade_out = 0.40000000000000002,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/icons/item_types/outfits",
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
			id = "health",
			label = "Health",
			offset = {
				-52,
				826,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					69,
					69,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/icons/item_types/cryptic_torso",
			},
		},
		{
			callbacks = {
				value = {
					color = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "status.stamina_percent",
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
									pct = 5,
								},
								{
									color = {
										126,
										171,
										77,
										0,
									},
									pct = 15,
								},
								{
									color = {
										67,
										171,
										77,
										0,
									},
									pct = 25,
								},
								{
									color = {
										0,
										114,
										0,
										0,
									},
									pct = 50,
								},
								{
									color = {
										255,
										8,
										0,
										0,
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
				},
			},
			id = "stamina",
			label = "Stamina",
			offset = {
				-117,
				826,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					69,
					69,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/icons/mission_types/mission_type_quick",
			},
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
								source = "player_1",
								value = 0,
							},
							list = {
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
								{
									color = {
										0,
										255,
										255,
										255,
									},
									pct = 59,
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
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "ability_appear_when_ready_and_almost",
			label = "Ability (Appear when Ready and Almost)",
			offset = {
				-190,
				827,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					69,
					69,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/icons/mission_types/mission_type_01",
			},
		},
		{
			callbacks = {
				value = {
					current = {
						field = "ability.active_progress_percent",
						kind = "source",
						source = "player_1",
					},
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "ability.is_active",
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
			id = "ability_timer",
			label = "Ability Timer",
			offset = {
				-190,
				898,
			},
			style = {
				color = {
					255,
					237,
					255,
					15,
				},
				size = {
					279,
					12,
				},
				transition = {
					fade_out = 0.20000000000000001,
				},
			},
			type = "progress_bar",
			values = {
				current = 60,
				max = 100,
				opacity = 0.5,
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
				-190,
				917,
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
					279,
					12,
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
					color = {
						field = "identity.slot_color",
						kind = "fixed",
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
						field = "stimms.active_percent_remaining",
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
										field = "stimms.active",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "Psyker",
									},
								},
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
										value = "Hive Scum",
									},
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "stimm_timer_as_hives_cum",
			label = "Stimm Timer (As Hives Cum)",
			offset = {
				-190,
				917,
			},
			style = {
				color = {
					255,
					221,
					120,
					255,
				},
				size = {
					279,
					12,
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
					color = {
						field = "identity.slot_color",
						kind = "thresholds",
						source = "player_1",
						thresholds = {
							current = {
								field = "stimms.hive_scum_progress_percent_to_next_charge",
								kind = "source",
								source = "player_1",
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
									pct = 0,
								},
								{
									color = {
										141,
										255,
										120,
										235,
									},
									pct = 80,
								},
								{
									color = {
										255,
										255,
										120,
										235,
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
					visible = {
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "stimms.hive_scum_progress_percent_to_next_charge",
										kind = "source",
										source = "player_1",
									},
									op = ">",
									rhs = {
										kind = "fixed",
										value = 80,
									},
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "scum_stimm_ready_and_almost",
			label = "Scum Stimm (Ready and Almost)",
			offset = {
				-36,
				833,
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
			},
			type = "rect",
			values = {
				material = "content/ui/materials/icons/pocketables/hud/small/party_syringe_ability",
			},
		},
	},
	offset = {
		60,
		-30,
	},
	opacity = {
		kind = "fixed",
		value = 0.67000000000000004,
	},
	scale_anchor = "origin",
	screen_anchor = "bottom",
	summary = "Contextual color-coded icons for player stats and abilities. Progress bars for ability and Scum stimms.",
	tags = {
		"icon",
		"color",
		"contextual",
		"health",
		"armor",
		"stamina",
		"peril",
		"ability",
		"stimm",
		"broker",
		"cum",
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