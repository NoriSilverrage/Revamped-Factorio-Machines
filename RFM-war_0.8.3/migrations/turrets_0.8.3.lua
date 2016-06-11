-- Reload recipes and technologies
for i, player in ipairs(game.players) do
  player.force.reset_recipes()
  player.force.reset_technologies()
end

for index, force in pairs(game.forces) do
  -- Generate technology and recipe tables
  local tech = force.technologies
  local recipes = force.recipes

end