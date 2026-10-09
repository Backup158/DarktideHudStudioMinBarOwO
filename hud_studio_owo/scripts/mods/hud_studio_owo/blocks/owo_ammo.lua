return {
	deleted_nodes = {
		{
			callbacks = {
				value = {
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
									rhs = {
										kind = "fixed",
										value = "true",
									},
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
									rhs = {
										kind = "fixed",
										value = "true",
									},
								},
								{
									join = "and",
									lhs = {
										field = "inspect.held",
										kind = "source",
										source = "actions",
									},
									op = "true",
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "rect_1",
			offset = {
				-116,
				564,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					36,
					17,
				},
				transition = {
					fade_in = 0.10000000000000001,
					fade_out = 0.10000000000000001,
				},
			},
			type = "rect",
			values = {
				opacity = 0.5,
			},
		},
		{
			id = "ammo_in_reserve",
			label = "Ammo in Reserve",
			offset = {
				0,
				0,
			},
			style = {
				shadow = true,
			},
			type = "text",
			values = {
				text = "Text",
				value_mode = "chain",
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
	label = "OwO Ammo",
	localizations = {},
	mod_version = 3,
	name = "owo_ammo",
	nodes = {
		{
			callbacks = {
				value = {
					material = {
						field = "equipment.ranged_icon",
						kind = "source",
						source = "player_1",
					},
					size = {
						body = "",
						kind = "fixed",
					},
				},
			},
			id = "gun",
			label = "GUN",
			offset = {
				-157,
				582,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					300,
					135,
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
						field = "equipment.ammo_mag_remaining",
						kind = "source",
						source = "player_1",
					},
					text2 = {
						field = "ability.name",
						kind = "fixed",
						source = "player_1",
					},
					text3 = {
						field = "equipment.ammo_reserve",
						kind = "source",
						source = "player_1",
					},
					text5 = {
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
										field = "equipment.ranged_is_equipped",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "true",
									},
								},
								{
									join = "and",
									lhs = {
										field = "equipment.ammo_rounds_remaining_percent",
										kind = "source",
										source = "player_1",
									},
									op = "<=",
									rhs = {
										kind = "fixed",
										value = 33,
									},
								},
								{
									join = "or",
									lhs = {
										field = "reload.held_seconds",
										kind = "source",
										source = "actions",
									},
									op = ">",
									rhs = {
										kind = "fixed",
										value = 0.29999999999999999,
									},
								},
								{
									join = "or",
									lhs = {
										field = "inspect.held_seconds",
										kind = "source",
										source = "actions",
									},
									op = ">",
									rhs = {
										kind = "fixed",
										value = 0.29999999999999999,
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
			id = "mag__total__on_wield_and_low",
			label = "Mag / Total (%) on wield and low",
			offset = {
				-125,
				763,
			},
			style = {
				align = "center_center",
				color = {
					255,
					225,
					220,
					190,
				},
				font_type = "proxima_nova_bold",
				shadow = true,
				size = {
					250,
					30,
				},
				transition = {
					fade_in = 0.20000000000000001,
				},
				visible = false,
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
					text2 = {
						field = "equipment.melee_special_charges",
						kind = "source",
						source = "player_1",
					},
					text4 = {
						field = "equipment.melee_special_charges_max",
						kind = "source",
						source = "player_1",
					},
					visible = {
						body = "",
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "equipment.melee_uses_special_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "true",
									},
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
										field = "equipment.melee_uses_special_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "true",
									},
								},
								{
									join = "and",
									lhs = {
										field = "inspect.held",
										kind = "source",
										source = "actions",
									},
									op = "true",
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "m_special_ammo_count_-_manual_check",
			label = "M Special Ammo Count - Manual check",
			offset = {
				-125,
				754,
			},
			style = {
				align = "center_center",
				color = {
					255,
					225,
					220,
					190,
				},
				font_size = 18,
				shadow = true,
				size = {
					250,
					0,
				},
				transition = {
					fade_in = 0.20000000000000001,
				},
				visible = false,
			},
			type = "text",
			values = {
				mode2 = "fixed",
				mode4 = "fixed",
				text = "M_SPC: ",
				text3 = " / ",
				value_mode = "chain",
			},
		},
		{
			callbacks = {
				value = {
					text2 = {
						field = "equipment.ranged_special_charges",
						kind = "source",
						source = "player_1",
					},
					text4 = {
						field = "equipment.ranged_special_charges_max",
						kind = "source",
						source = "player_1",
					},
					visible = {
						body = "",
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "equipment.ranged_uses_special_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "true",
									},
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
										field = "equipment.ranged_uses_special_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "inspect.held",
										kind = "source",
										source = "actions",
									},
									op = "true",
								},
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "special_ammo_count_-_manual_check_copy",
			label = "Special Ammo Count - Manual check",
			offset = {
				-117,
				762,
			},
			style = {
				align = "center_center",
				color = {
					255,
					225,
					220,
					190,
				},
				font_size = 18,
				shadow = true,
				size = {
					250,
					0,
				},
				transition = {
					fade_in = 0.20000000000000001,
				},
				visible = false,
			},
			type = "text",
			values = {
				mode2 = "fixed",
				mode4 = "fixed",
				text = "R_SPC: ",
				text3 = " / ",
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
								field = "equipment.ammo_reserve_percent",
								kind = "source",
								source = "player_1",
								value = 0,
							},
							list = {
								{
									color = {
										255,
										0,
										0,
										0,
									},
									pct = 0,
								},
								{
									color = {
										255,
										255,
										255,
										255,
									},
									pct = 1,
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
						body = "-- Generated from the Condition Builder.\
local ranged_uses_ammo = sources.player_1 and sources.player_1.equipment and sources.player_1.equipment.ranged_uses_ammo\
local ranged_is_equipped = sources.player_1 and sources.player_1.equipment and sources.player_1.equipment.ranged_is_equipped\
local held_hotkey = sources.keys and sources.keys.t and sources.keys.t.held\
local held_inspect = sources.actions and sources.actions.inspect and sources.actions.inspect.held\
local held_reload_seconds = sources.actions and sources.actions.reload and sources.actions.reload.held_seconds\
visible = (\
    (ranged_uses_ammo and ranged_uses_ammo ~= 0)\
    and (\
        (held_hotkey and held_hotkey ~= 0)\
        or (\
            (ranged_is_equipped and ranged_is_equipped ~= 0)\
            and (\
                (held_inspect and held_inspect ~= 0)\
                or (tonumber(held_reload_seconds) ~= nil and tonumber(held_reload_seconds) > 0.20000000000000001)\
            )\
        )\
    )\
) and true or false",
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
									rhs = {
										kind = "fixed",
										value = "true",
									},
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
									rhs = {
										kind = "fixed",
										value = "true",
									},
								},
								{
									join = "and",
									lhs = {
										field = "inspect.held",
										kind = "source",
										source = "actions",
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
									rhs = {
										kind = "fixed",
										value = "true",
									},
								},
								{
									join = "and",
									lhs = {
										field = "reload.held_seconds",
										kind = "source",
										source = "actions",
									},
									op = ">",
									rhs = {
										kind = "fixed",
										value = 0.20000000000000001,
									},
								},
							},
						},
						kind = "code",
					},
				},
			},
			id = "total__immersive_bg",
			label = "Total (%) Immersive BG",
			offset = {
				-22,
				694,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					80,
					80,
				},
				transition = {
					fade_in = 0.20000000000000001,
					fade_out = 0.20000000000000001,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/icons/item_types/accessories",
				opacity = 0.59999999999999998,
				rotation = 0,
			},
		},
		{
			callbacks = {
				value = {
					color = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "equipment.ammo_reserve_percent",
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
									pct = 1,
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
								{
									color = {
										255,
										114,
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
					visible = {
						body = "-- Generated from the Condition Builder.\
local ranged_uses_ammo = sources.player_1 and sources.player_1.equipment and sources.player_1.equipment.ranged_uses_ammo\
local ranged_is_equipped = sources.player_1 and sources.player_1.equipment and sources.player_1.equipment.ranged_is_equipped\
local held_hotkey = sources.keys and sources.keys.t and sources.keys.t.held\
local held_inspect = sources.actions and sources.actions.inspect and sources.actions.inspect.held\
local held_reload_seconds = sources.actions and sources.actions.reload and sources.actions.reload.held_seconds\
visible = (\
    (ranged_uses_ammo and ranged_uses_ammo ~= 0)\
    and (\
        (held_hotkey and held_hotkey ~= 0)\
        or (\
            (ranged_is_equipped and ranged_is_equipped ~= 0)\
            and (\
                (held_inspect and held_inspect ~= 0)\
                or (tonumber(held_reload_seconds) ~= nil and tonumber(held_reload_seconds) > 0.20000000000000001)\
            )\
        )\
    )\
) and true or false",
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
									rhs = {
										kind = "fixed",
										value = "true",
									},
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
									rhs = {
										kind = "fixed",
										value = "true",
									},
								},
								{
									join = "and",
									lhs = {
										field = "inspect.held",
										kind = "source",
										source = "actions",
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
									rhs = {
										kind = "fixed",
										value = "true",
									},
								},
								{
									join = "and",
									lhs = {
										field = "reload.held_seconds",
										kind = "source",
										source = "actions",
									},
									op = ">",
									rhs = {
										kind = "fixed",
										value = 0.20000000000000001,
									},
								},
							},
						},
						kind = "code",
					},
				},
			},
			id = "total__immersive",
			label = "Total (%) Immersive",
			offset = {
				-15,
				702,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					66,
					66,
				},
				transition = {
					fade_in = 0.20000000000000001,
					fade_out = 0.20000000000000001,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/hud/interactions/icons/pocketable_ammo",
			},
		},
		{
			callbacks = {
				value = {
					color = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "equipment.ammo_mag_remaining_percent",
								kind = "source",
								source = "player_1",
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
									pct = 1,
								},
								{
									color = {
										255,
										0,
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
					material = {
						field = "ability.icon",
						kind = "fixed",
						source = "player_1",
					},
					visible = {
						body = "-- Generated from the Condition Builder.\
local ranged_uses_ammo = sources.player_1 and sources.player_1.equipment and sources.player_1.equipment.ranged_uses_ammo\
local ranged_is_equipped = sources.player_1 and sources.player_1.equipment and sources.player_1.equipment.ranged_is_equipped\
local held_hotkey = sources.keys and sources.keys.t and sources.keys.t.held\
local held_inspect = sources.actions and sources.actions.inspect and sources.actions.inspect.held\
local held_reload_seconds = sources.actions and sources.actions.reload and sources.actions.reload.held_seconds\
visible = (\
    (ranged_uses_ammo and ranged_uses_ammo ~= 0)\
    and (\
        (held_hotkey and held_hotkey ~= 0)\
        or (\
            (ranged_is_equipped and ranged_is_equipped ~= 0)\
            and (\
                (held_inspect and held_inspect ~= 0)\
                or (tonumber(held_reload_seconds) ~= nil and tonumber(held_reload_seconds) > 0.20000000000000001)\
            )\
        )\
    )\
) and true or false",
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
									rhs = {
										kind = "fixed",
										value = "true",
									},
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
									rhs = {
										kind = "fixed",
										value = "true",
									},
								},
								{
									join = "and",
									lhs = {
										field = "inspect.held",
										kind = "source",
										source = "actions",
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
									rhs = {
										kind = "fixed",
										value = "true",
									},
								},
								{
									join = "and",
									lhs = {
										field = "reload.held_seconds",
										kind = "source",
										source = "actions",
									},
									op = ">",
									rhs = {
										kind = "fixed",
										value = 0.20000000000000001,
									},
								},
							},
						},
						field = "ability.is_active",
						kind = "code",
						source = "player_1",
					},
				},
			},
			id = "mag__immersive_bg",
			label = "Mag (%) Immersive BG",
			offset = {
				-87,
				697,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					70,
					75,
				},
				transition = {
					fade_in = 0.20000000000000001,
					fade_out = 0.20000000000000001,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/icons/system/escape/credits",
				opacity = 0.59999999999999998,
				uv = "flip_none",
			},
		},
		{
			callbacks = {
				value = {
					color = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "equipment.ammo_mag_remaining_percent",
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
									pct = 1,
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
										114,
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
					visible = {
						body = "-- Generated from the Condition Builder.\
local ranged_uses_ammo = sources.player_1 and sources.player_1.equipment and sources.player_1.equipment.ranged_uses_ammo\
local ranged_is_equipped = sources.player_1 and sources.player_1.equipment and sources.player_1.equipment.ranged_is_equipped\
local held_hotkey = sources.keys and sources.keys.t and sources.keys.t.held\
local held_inspect = sources.actions and sources.actions.inspect and sources.actions.inspect.held\
local held_reload_seconds = sources.actions and sources.actions.reload and sources.actions.reload.held_seconds\
visible = (\
    (ranged_uses_ammo and ranged_uses_ammo ~= 0)\
    and (\
        (held_hotkey and held_hotkey ~= 0)\
        or (\
            (ranged_is_equipped and ranged_is_equipped ~= 0)\
            and (\
                (held_inspect and held_inspect ~= 0)\
                or (tonumber(held_reload_seconds) ~= nil and tonumber(held_reload_seconds) > 0.20000000000000001)\
            )\
        )\
    )\
) and true or false",
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
									rhs = {
										kind = "fixed",
										value = "true",
									},
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
									rhs = {
										kind = "fixed",
										value = "true",
									},
								},
								{
									join = "and",
									lhs = {
										field = "inspect.held",
										kind = "source",
										source = "actions",
									},
									op = "true",
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
									join = "or",
									lhs = {
										field = "equipment.ranged_uses_ammo",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "true",
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
										field = "reload.held_seconds",
										kind = "source",
										source = "actions",
									},
									op = ">",
									rhs = {
										kind = "fixed",
										value = 0.20000000000000001,
									},
								},
							},
						},
						kind = "code",
					},
				},
			},
			id = "mag__immersive",
			label = "Mag (%) Immersive",
			offset = {
				-69,
				713,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					34,
					40,
				},
				transition = {
					fade_in = 0.20000000000000001,
					fade_out = 0.20000000000000001,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/hud/icons/party_ammo",
				rotation = 0,
			},
		},
		{
			callbacks = {
				value = {
					color = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "equipment.ranged_special_charges",
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
									pct = 5,
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
										114,
										0,
										0,
									},
									pct = 1,
								},
							},
							max = {
								field = "equipment.ranged_special_charges_max",
								kind = "source",
								source = "player_1",
								value = 100,
							},
							payload = "color",
							scale = "percent",
						},
					},
					visible = {
						body = "\
local ranged_uses_special_charges = sources.player_1 and sources.player_1.equipment and sources.player_1.equipment.ranged_uses_special_charges\
local ranged_is_equipped = sources.player_1 and sources.player_1.equipment and sources.player_1.equipment.ranged_is_equipped\
local held_hotkey = sources.keys and sources.keys.t and sources.keys.t.held\
local held_inspect = sources.actions and sources.actions.inspect and sources.actions.inspect.held\
local held_reload_seconds = sources.actions and sources.actions.reload and sources.actions.reload.held_seconds\
local held_special_load_seconds = sources.actions and sources.actions.special and sources.actions.special.held_seconds\
visible = (\
    (ranged_uses_special_charges and ranged_uses_special_charges ~= 0)\
    and (\
        (held_hotkey and held_hotkey ~= 0)\
        or (\
            (ranged_is_equipped and ranged_is_equipped ~= 0)\
            and (\
                (held_inspect and held_inspect ~= 0)\
                or (tonumber(held_reload_seconds) ~= nil and tonumber(held_reload_seconds) > 0.20000000000000001)\
                or (tonumber(held_special_load_seconds) ~= nil and tonumber(held_special_load_seconds) > 0.20000000000000001)\
            )\
        ) -- close or\
    )\
) and true or false",
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "equipment.ranged_uses_special_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "true",
									},
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
										field = "equipment.ranged_uses_special_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "inspect.held",
										kind = "source",
										source = "actions",
									},
									op = "true",
								},
								{
									join = "or",
									lhs = {
										field = "equipment.ranged_uses_special_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "reload.held_seconds",
										kind = "source",
										source = "actions",
									},
									op = ">",
									rhs = {
										kind = "fixed",
										value = 0.20000000000000001,
									},
								},
								{
									join = "or",
									lhs = {
										field = "equipment.ranged_uses_special_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "special.held_seconds",
										kind = "source",
										source = "actions",
									},
									op = ">",
									rhs = {
										kind = "fixed",
										value = 0.20000000000000001,
									},
								},
							},
						},
						kind = "code",
					},
				},
			},
			id = "special_ammo_count_immersive",
			label = "Special Ammo Count Immersive",
			offset = {
				-143,
				694,
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
				transition = {
					fade_in = 0.20000000000000001,
					fade_out = 0.20000000000000001,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/icons/player_states/ammo",
			},
		},
		{
			callbacks = {
				value = {
					visible = {
						body = "\
local ranged_uses_special_charges = sources.player_1 and sources.player_1.equipment and sources.player_1.equipment.ranged_uses_special_charges\
local ranged_is_equipped = sources.player_1 and sources.player_1.equipment and sources.player_1.equipment.ranged_is_equipped\
local held_hotkey = sources.keys and sources.keys.t and sources.keys.t.held\
local held_inspect = sources.actions and sources.actions.inspect and sources.actions.inspect.held\
local held_reload_seconds = sources.actions and sources.actions.reload and sources.actions.reload.held_seconds\
local held_special_load_seconds = sources.actions and sources.actions.special and sources.actions.special.held_seconds\
visible = (\
    (ranged_uses_special_charges and ranged_uses_special_charges ~= 0)\
    and (\
        (held_hotkey and held_hotkey ~= 0)\
        or (\
            (ranged_is_equipped and ranged_is_equipped ~= 0)\
            and (\
                (held_inspect and held_inspect ~= 0)\
                or (tonumber(held_reload_seconds) ~= nil and tonumber(held_reload_seconds) > 0.20000000000000001)\
                or (tonumber(held_special_load_seconds) ~= nil and tonumber(held_special_load_seconds) > 0.20000000000000001)\
            )\
        ) -- close or\
    )\
) and true or false",
						conditions = {
							rows = {
								{
									join = "and",
									lhs = {
										field = "equipment.ranged_uses_special_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "true",
									},
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
										field = "equipment.ranged_uses_special_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "inspect.held",
										kind = "source",
										source = "actions",
									},
									op = "true",
								},
								{
									join = "or",
									lhs = {
										field = "equipment.ranged_uses_special_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "reload.held_seconds",
										kind = "source",
										source = "actions",
									},
									op = ">",
									rhs = {
										kind = "fixed",
										value = 0.20000000000000001,
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
									join = "or",
									lhs = {
										field = "equipment.ranged_uses_special_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
								},
								{
									join = "and",
									lhs = {
										field = "special.held_seconds",
										kind = "source",
										source = "actions",
									},
									op = ">",
									rhs = {
										kind = "fixed",
										value = 0.20000000000000001,
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
							},
						},
						kind = "code",
					},
				},
			},
			id = "special_ammo_count_immersive_deco",
			label = "Special Ammo Count Immersive deco",
			offset = {
				-122,
				727,
			},
			style = {
				color = {
					255,
					237,
					255,
					15,
				},
				size = {
					30,
					30,
				},
				transition = {
					fade_in = 0.20000000000000001,
					fade_out = 0.20000000000000001,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/icons/presets/preset_20",
				rotation = 0,
			},
		},
		{
			callbacks = {
				value = {
					color = {
						kind = "thresholds",
						thresholds = {
							current = {
								field = "equipment.melee_special_charges",
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
									pct = 1,
								},
								{
									color = {
										255,
										255,
										8,
										8,
									},
									pct = 5,
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
							},
							max = {
								field = "equipment.melee_special_charges_max",
								kind = "source",
								source = "player_1",
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
										field = "equipment.melee_uses_special_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "true",
									},
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
										field = "equipment.melee_uses_special_charges",
										kind = "source",
										source = "player_1",
									},
									op = "true",
									rhs = {
										kind = "fixed",
										value = "true",
									},
								},
								{
									join = "and",
									lhs = {
										field = "inspect.held",
										kind = "source",
										source = "actions",
									},
									op = "true",
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
							},
						},
						kind = "conditions",
					},
				},
			},
			id = "m_sammo_count_immersive",
			label = "M SAmmo Count Immersive",
			offset = {
				56,
				702,
			},
			style = {
				color = {
					255,
					255,
					255,
					255,
				},
				size = {
					65,
					65,
				},
				transition = {
					fade_in = 0.20000000000000001,
					fade_out = 0.20000000000000001,
				},
			},
			type = "rect",
			values = {
				material = "content/ui/materials/icons/system/escape/leave_mission",
			},
		},
	},
	offset = {
		32,
		29,
	},
	opacity = {
		kind = "fixed",
		value = 0.5,
	},
	save_name = "owo_ammo",
	scale_anchor = "center",
	screen_anchor = "bottom",
	summary = "Ammo: mag, reserve, and special. Immersive displays appear on hold (T, inspect weapon, or reload) and use colors to represent amount of ammo. Immersive special ammo also has loading special ammo as a hotkey.  Numeric displays (disabled by default) show numbers on press and on wield while <33% ammo.",
	tags = {
		"ammo",
	},
	version = 2,
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
					rhs = {
						kind = "fixed",
						value = 50,
					},
				},
			},
		},
		kind = "conditions",
	},
}