local mod = get_mod("hud_studio_owo")

-- #############################
-- Data
-- #############################
-- ###############
-- Requirements and Performance
-- ###############

-- ###############
-- Mod Locals
-- ###############

-- #############################
-- Helper Functions
-- #############################


-- #########################################
-- Hooks
-- #########################################

-- #########################################
-- Event Executions
-- #########################################
-- registering after all mods have loaded ensures that load order does not matter.
mod.on_all_mods_loaded = function()

  -- grab the HUD Studio handle with get_mod
  local hud_studio = get_mod("hud_studio")

  -- throw an error if it is not found (it must be installed by the end user) and exit
  if not hud_studio then
    mod:error("Error at block registration: HUD Studio is not installed.")
    return
  end

  -- register our blocks here
  hud_studio.register_blocks(
    -- we are passing our mod (my_dps_mod) as the first parameter.
    -- HUD Studio will use this to get your mod's name and stash your blocks
    mod,

    -- the second parameter is a table that expects your name (as the author) and the blocks array
    {
      author = "Backup158",
      blocks = {
        -- one path per block
        -- "scripts/mods/hud_studio_owo/",
        -- "scripts/mods/hud_studio_owo/",
    },
  })
end