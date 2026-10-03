return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`hud_studio_min_bar_owo` encountered an error loading the Darktide Mod Framework.")

		new_mod("hud_studio_min_bar_owo", {
			mod_script       = "hud_studio_min_bar_owo/scripts/mods/hud_studio_min_bar_owo/hud_studio_min_bar_owo",
			mod_data         = "hud_studio_min_bar_owo/scripts/mods/hud_studio_min_bar_owo/hud_studio_min_bar_owo_data",
			mod_localization = "hud_studio_min_bar_owo/scripts/mods/hud_studio_min_bar_owo/hud_studio_min_bar_owo_localization",
		})
	end,
	version = "1.0.0",
	packages = {},
}
