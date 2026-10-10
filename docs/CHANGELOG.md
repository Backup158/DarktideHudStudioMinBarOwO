# 1.3.0 - 2026-10-09
## New
- Ally Panel
    - [ODO] Account name is now available without State Your Name
    - Names use player slot color
    - Stimm color uses values from RecolorStimms if installed
    - Last Wound indicator over health icon
- Player Panel
    - Added missing corruption bar...
    - Stim and Pocketable are enabled now
        - Using conditions from Ally Panel
        - (Description will describe it here first)
        - Resized to stack next to ability
        - Stimm color uses values from RecolorStimms if installed
    - Toughness bar background color turns red when breaking
## Change
- Player Panel
    - Reduced default opacity of Stamina color
        - Background is the same
        - I had it like this before I made this HUD so I'm comfortable with it
    - Toughness color is now a gradient
        - Normal is normal
        - Yellow above 100%, 100%-110% is not as yellow
- Blitz Bar
    - Last charges only appear on wield/inspect if the max count is > 1
        - If there's only 1, I don't need a number to know the one in my hand is the one
        - Wow!
    - Good fight!
- Ammo
    - Darkens at 0%
- Ally Panel
    - Default status icon is an exclamation point instead of helping
    - Name appears with health and toughness
    - Health < 100 only appears if corruption > 50%
    - Stimm now fades out quickly instead of disappearing immediately
    - Blitz icon is yellow until it's empty, where it's red (but not the deep red)
    - Toughness broken now longers for 0.5s
## Fix
- Ally check being interfered with when changing player source
    - It was originally checking player 1, 2, 3, 4
    - When importing as new player source, it would change 2 to 3 (or whatever), so that check would end up being 1, 3, 3, 4
    - Now it does the same check but written differently so it doesn't get replaced
- Player panels only appear in Mission/Training

# 1.2.2 - 2026-10-08
## Changed
- Ally Panel
    - Toughness break also needs not downed
    - Spaced out blitz and ability to reduce overlapping with health
    - Default opacity from 0.5 to 0.8
    - Default ability is the real picture
    - Global fade out of 0.25
## Fix
- Ally Panel
    - Opacity for downed was swapped for health

# 1.2.1 - 2026-10-07
## New
- Ally Panel
    - Stim/Crate conditions
        - Show if disabled
        - Show if just died
        - Heal Stimm - Show if someone is on their last wound
        - Med crate - Show if team is missing 500 hp
        - Ammo crate - Show if team is low
    - Shows health if disabled
    - Shows health bar if downed (darker and more translucent)
    - Player name includes True Level
## Fix
- Ally Panel
    - Can now be added set for each player

# 1.2.0_beta - 2026-10-06
## New
- Ally Panel
    - Contextual color-coded icons with details revealed on demand
    - Not complete but I'll share it anyways
- AML support
## Fix
- Both player panels were appearing in the Mourningstar

# 1.1.0 - 2026-10-04
## New
- Player Panel Icons and Progress
    - Contextual color-coded icons for ability, stamina, health, and armor
    - Progress bars for ability timer, Stimm timer as Hives Cum, and Peril
    - Default position overlaps with Blitz. Move one of them over if you use these.
## Fix
- Didn't actually upload the last fix lol

# 1.0.1 - 2026-10-04
## Fix
- Incorrect % conditions for
    - Ability Progress
    - Health
- Tags for player panel: health, toughness, ability, peril
- Missing metadata

# 1.0.0 - 2026-10-04
Initial release