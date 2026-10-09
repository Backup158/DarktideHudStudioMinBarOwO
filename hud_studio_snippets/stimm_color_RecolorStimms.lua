-- Exit if no stimm held
if not (sources and sources.player_1 and sources.player_1.stimms and sources.player_1.stimms.held ) then
    return { 0, 255, 255, 255 }
end

local vanilla_stimm_color = sources.player_1.stimms.held_color or { 255, 255, 255, 255 }
color = vanilla_stimm_color

-- Uses color from RecolorStimms. Defaults to vanilla
local RecolorStimms = get_mod("RecolorStimms")
if RecolorStimms then
    local held_stimm_id = sources.player_1.stimms.id
    -- Break if no stimm id found somehow
    if not (
        (held_stimm_id) 
        and (type(held_stimm_id) == "string")
        ) then 
        return color 
    end
    
    -- RecolorStimms registers widgets for each stimm using the internal name and a suffix
    local custom_stimm_color = RecolorStimms:get(held_stimm_id.."_color")
    color = custom_stimm_color or vanilla_stimm_color
end