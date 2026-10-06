return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`hud_studio_owo` encountered an error loading the Darktide Mod Framework.")

		new_mod("hud_studio_owo", {
			mod_script       = "hud_studio_owo/scripts/mods/hud_studio_owo/hud_studio_owo",
			mod_data         = "hud_studio_owo/scripts/mods/hud_studio_owo/hud_studio_owo_data",
			mod_localization = "hud_studio_owo/scripts/mods/hud_studio_owo/hud_studio_owo_localization",
		})
	end,
	version = "1.2.0",
	packages = {},
}
