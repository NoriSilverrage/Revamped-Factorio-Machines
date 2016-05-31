local resources = {
  "iron-slag",
  "crushed-iron",
  "pulverized-iron",
  "copper-dust",
  "copper-sulfat",
  "copper-plate|sulfat",
  "copper-sludge",
  "iron-slag-big",
  "crushed-iron-big",
  "pulverized-iron-big",
  "copper-dust-big",
  "copper-plate|sulfat-big",
  "copper-sludge-big",
  "steel-dust",
  "steel-dust|2",
  "coal-dust",
  "gravel-pile",
  "gravel"
}

  for i, module in pairs(data.raw.module) do
    if module.limitation then
      for j, resources in pairs(resources) do
        table.insert(module.limitation, resources)
      end
    end
  end


data.raw.item["dirt"].stack_size = 100
data.raw.item["dried-dirt"].stack_size = 100
data.raw.item["gravel"].stack_size = 100
data.raw.item["gravel-pile"].stack_size = 100
data.raw.item["coal-dust"].stack_size = 200
data.raw.item["rich-copper-ore"].stack_size = 100
data.raw.item["iron-nugget"].stack_size = 100
data.raw.item["iron-slag"].stack_size = 100
data.raw.item["pulverized-iron"].stack_size = 100
data.raw.item["crushed-iron"].stack_size = 100
data.raw.item["copper-sulfat"].stack_size = 100
data.raw.item["copper-dust"].stack_size = 100
data.raw.item["copper-sludge"].stack_size = 100
data.raw.item["sulfur-dust"].stack_size = 100

data.raw["furnace"]["electric-incinerator"].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
    }
    
    
--incinerateitemlist = {
--  {name="coal-dust",energy=4,amount=1},
--}

incineratefluidlist = {
  {name="sulfuric-acid",energy=1,amount=1},
  {name="water",energy=1,amount=1},
  {name="heavy-oil",energy=1,amount=0.5},
  {name="light-oil",energy=1,amount=0.75},
  {name="petroleum-gas",energy=1,amount=1},
  {name="crude-oil",energy=1,amount=0.25},
  {name="lubricant",energy=1,amount=0.25},
}


-- Creates a recipe to incinerate given fluid, if said fluid exists
-- "fluid" is a table of name, energy, amount
function createIncinerationRecipe(fluid)
  if data.raw.fluid[fluid.name] then
    data:extend({
      {
        type = "recipe",
        name = fluid.name.."-incineration",
        category = "incinerator",
        enabled = true,
        hidden = true,
        energy_required = fluid.energy,
        ingredients =
        {
          {type="fluid", name=fluid.name, amount=fluid.amount}
        },
        results =
        {
          {type="fluid", name=fluid.name, amount=0}
        },
        icon = "__hardCrafting__/graphics/icons/fire.png",
        subgroup = "fluid-recipes",
        order = "z[incineration]"
      }
    })
  end
end

-- generate fluid incineration recipes
for i, fluid in pairs(incineratefluidlist) do
  createIncinerationRecipe(fluid)
end




---- Creates a recipe to incinerate given item, if said item exists
---- "item" is a table of name, energy, amount
--function createIncinerationRecipe(item)
--  if data.raw.item[item.name] then
--    data:extend({
--      {
--        type = "recipe",
--        name = item.name.."-incineration",
--        category = "incinerator",
--        enabled = true,
--        hidden = true,
--        energy_required = item.energy,
--        ingredients =
--        {
--          {name=item.name, amount=item.amount}
--        },
--        results =
--        {
--          {type="fluid", name="water", amount=0}
--        },
--        icon = "__hardCrafting__/graphics/icons/fire.png",
--        subgroup = "fluid-recipes",
--        order = "z[incineration]"
--      }
--    })
--  end
--end
--
---- generate item incineration recipes
--for i, item in pairs(incinerateitemlist) do
--  createIncinerationRecipe(item)
--end