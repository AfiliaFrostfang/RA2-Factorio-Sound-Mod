local sound_files = {
  allied = "ra2-research-sound-allied",
  soviet = "ra2-research-sound-soviet"
}

script.on_event(defines.events.on_research_finished, function(event)
  for _, player in pairs(event.research.force.players) do
    local setting = settings.get_player_settings(player.index)["ra2-research-sound"]
    local sound_file = sound_files[setting.value]

    player.play_sound({
      path = sound_file
    })
  end
end)