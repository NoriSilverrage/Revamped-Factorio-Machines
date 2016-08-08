game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
end


for index, force in pairs(game.forces) do
  if force.technologies["logistics"].researched then
    force.recipes["underground-belt-mr"].enabled = true
    force.recipes["underground-belt-lr"].enabled = true
  end
  if force.technologies["logistics-2"].researched then
    force.recipes["fast-underground-belt-mr"].enabled = true
    force.recipes["fast-underground-belt-lr"].enabled = true
  end
  if force.technologies["logistics-3"].researched then
    force.recipes["express-underground-belt-mr"].enabled = true
    force.recipes["express-underground-belt-lr"].enabled = true
  end
end

