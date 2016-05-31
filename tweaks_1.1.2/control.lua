require "defines"
require "util"
script.on_event(defines.events.on_player_created, function(event)
  local player = game.get_player(event.player_index)
  player.insert{name="iron-plate", count=92}
  player.insert{name="copper-plate", count=100}
  player.insert{name="coal", count=40}
  player.insert{name="gun-turret", count=2}
  player.insert{name="basic-bullet-magazine", count=90}
  player.insert{name="burner-mining-drill", count = 4}
  player.insert{name="stone-furnace", count = 4}
end)
script.on_init(init)
script.on_load(init)