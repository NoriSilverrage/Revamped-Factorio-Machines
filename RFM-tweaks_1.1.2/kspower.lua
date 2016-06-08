require "defines"
require "util"
script.on_configuration_changed(function(data)
   if data.mod_changes ~= nil and data.mod_changes["KS_Power"] ~= nil and data.mod_changes["KS_Power"].old_version == nil then
   	local s = game.surfaces["nauvis"]
     find_generators(s)
     for k, f in pairs (game.forces) do 
     		f.reset_recipes()
     end
   end
 end)




script.on_event(defines.events.on_tick, function(event)

		check_generators()
end)


function check_generators()
   if global.petroleum_generator ~= nil then
      for k,gen in pairs(global.petroleum_generator) do
      	--if k % 10 == game.tick % 10 then
					if gen.valid then
         				if gen.fluidbox[1] ~= nil then 
         				local pot = gen.fluidbox[1]
         				local p = gen.position
					
						if pot.type == "petroleum-gas" then 					
						pot["temperature"] = 80
						gen.surface.pollute({p.x, p.y}, 0.8/60)

						elseif pot.type == "light-oil" then 					
						pot["temperature"] = 100
						gen.surface.pollute({p.x, p.y}, 1/60)

						elseif pot.type == "diesel-fuel" then 					
						pot["temperature"] = 100
						gen.surface.pollute({p.x, p.y}, 1.2/60)

						elseif pot.type == "heavy-oil" then 					
						pot["temperature"] = 60
						gen.surface.pollute({p.x, p.y}, 0.6/60)

						else pot["temperature"] = 15 end

						gen.fluidbox[1] = pot

							end
						else table.remove(global.petroleum_generator, k)
--end				
end
end
end
end
				

				
			



function BuiltEntity(event)

	if event.created_entity.name == "petroleum-generator-2" then	

		if global.petroleum_generator == nil then global.petroleum_generator = {} end
			local petroleum_generator = event.created_entity
						if global.petroleum_generator == nil
						then global.petroleum_generator = {}
						end
					table.insert(global.petroleum_generator, petroleum_generator)

	end


end

script.on_event(defines.events.on_built_entity, BuiltEntity)
script.on_event(defines.events.on_robot_built_entity, BuiltEntity)