getgenv().settings = {
   Tiers = {
    ['6'] = {'double_cost', 'fast_enemies'}, 
	-- ignore challenge for specific tier ex. {'tank_enemies', 'shield_enemies', 'double_cost', 'fast_enemies', 'short_range'}
   },
	-- add more tier levels with [number] =
	-- example: ['6'] = {'double_cost'},
selectedPortal = false
}

repeat wait() until game:IsLoaded() == true
repeat task.wait() until game:GetService('Workspace'):FindFirstChild('_DATA'):FindFirstChild('GameFinished').Value == true

task.wait(10)


function p(id)
   local reg = getreg()
   local portals = {}
   for i,v in next, reg do
      if type(v) == 'function' then
         if getfenv(v).script then
            for _, v in pairs(debug.getupvalues(v)) do
               if type(v) == 'table' then
                  if v["session"] then
                     for _, item in pairs(v["session"]["inventory"]['inventory_profile_data']['unique_items']) do
                        if item["item_id"]:match(id) then
                           table.insert(portals, item)
                        end
                     end
                     return portals
                  end
               end
            end
         end
      end
   end
end

for i,v in pairs(p('portal_item__madoka')) do
   for b,x in pairs(settings.Tiers) do
      if v['_unique_item_data']['_unique_portal_data']['portal_depth'] == tonumber(b) and not table.find(x, v['_unique_item_data']['_unique_portal_data']['challenge']) then
	  if settings.selectedPortal == false then
	  	  local args = {
	  [1] = "replay",
	  [2] = {["item_uuid"] = v["uuid"];}
		}
		
		game:GetService('ReplicatedStorage').endpoints.client_to_server.set_game_finished_vote:InvokeServer(unpack(args))
        game.StarterGui:SetCore('SendNotification', {
            Title = 'Buang',
            Text = 'Picked Next Witch Portal',
            icon = 'rbxassetid://965496596',
            Duration = 5})
	settings.selectedPortal = true
	end
	 
         end
    end
 end
