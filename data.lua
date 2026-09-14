local sound_files = {
  allied = "ceva074",
  soviet = "seva074"
}

local selected_sound = sound_files[settings.startup["ra2-research-sound"].value]

data.raw["utility-sounds"]["default"]["research_completed"] = {
  filename = "__ra2-eva-new-technology__/sounds/" .. selected_sound .. ".ogg"
}
