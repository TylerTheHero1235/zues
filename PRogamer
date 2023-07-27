-- // Execution
repeat task.wait() until game:IsLoaded()

-- // Main Script
loadstring(game:HttpGet("https://raw.githubusercontent.com/TrapstarKSSKSKSKKS/Main/main/TrapHub.lua"))()

-- // Auto Next Portal
if getgenv().NextPortal then
    getgenv().settings = {
        Tiers = {
         [getgenv().PortalTier] = {'double_cost', 'fast_enemies', 'short_range'}, 
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
end

-- // Fortnite Utilities
if getgenv().Utils then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FortniteGamer696/Fortnite-Utilities/main/V1.lua"))()
end

-- // Infinity Castle
if getgenv().AutoNextInf then
    coroutine.resume(coroutine.create(function()
        task.spawn(function()
            game:GetService("Workspace"):WaitForChild("_DATA"):WaitForChild("GameFinished"):GetPropertyChangedSignal("Value"):Connect(function()
                wait(5)
                for i=1,2 do
                    game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_infinite_tower_from_game:InvokeServer("NextRetry")
                end
            end)
        end)
    end))
end

-- // Auto Wenda
if getgenv().AutoWenda then
repeat task.wait() until game:GetService('Workspace'):WaitForChild('_waves_started').Value == true
repeat task.wait() until game:GetService('Workspace'):FindFirstChild('_UNITS') ~= nil

while task.wait() do
    local plr = game.Players.LocalPlayer
    local table = {}

    for _,v in pairs(game:GetService("Workspace")._UNITS:GetChildren()) do
        if v.Name == 'wendy' and v:WaitForChild('_stats').player.Value == plr then
            table.insert(table, v)
        end
    end

        if #table == 4 then
            game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("use_active_attack"):InvokeServer(table[1])
            task.wait(15.4)
            game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("use_active_attack"):InvokeServer(table[3])
            task.wait(15.4)
            game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("use_active_attack"):InvokeServer(table[2])
            task.wait(15.4)
            game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("use_active_attack"):InvokeServer(table[4])
            wait(15.4)
        end
    end
end

-- // Auto Erwin
if getgenv().AutoErwin then
    repeat task.wait() until game:GetService('Workspace'):WaitForChild('_waves_started').Value == true
    repeat task.wait() until game:GetService('Workspace'):FindFirstChild('_UNITS') ~= nil
    
    while task.wait() do
        local plr = game.Players.LocalPlayer
        local table = {}
    
        for _,v in pairs(game:GetService("Workspace")._UNITS:GetChildren()) do
            if v.Name == 'erwin' and v:WaitForChild('_stats').player.Value == plr then
                table.insert(table, v)
            end
        end
    
            if #table == 4 then
                game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("use_active_attack"):InvokeServer(table[1])
                task.wait(15.4)
                game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("use_active_attack"):InvokeServer(table[3])
                task.wait(15.4)
                game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("use_active_attack"):InvokeServer(table[2])
                task.wait(15.4)
                game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("use_active_attack"):InvokeServer(table[4])
                wait(15.4)
            end
        end
    end

-- // FPS
if getgenv().PreformanceMode then
    setfpscap(30)

    local decalsyeeted = true
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    sethiddenproperty(l,"Technology",2)
    sethiddenproperty(t,"Decoration",false)
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = 0
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(w:GetDescendants()) do
        if v:IsA("BasePart") and not v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") and decalsyeeted then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        elseif v:IsA("SpecialMesh") and decalsyeeted  then
            v.TextureId=0
        elseif v:IsA("ShirtGraphic") and decalsyeeted then
            v.Graphic=0
        elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
            v[v.ClassName.."Template"]=0
        end
    end
    for i = 1,#l:GetChildren() do
        e=l:GetChildren()[i]
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
    w.DescendantAdded:Connect(function(v)
        wait()--prevent errors and shit
    if v:IsA("BasePart") and not v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") and decalsyeeted then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        elseif v:IsA("SpecialMesh") and decalsyeeted then
            v.TextureId=0
        elseif v:IsA("ShirtGraphic") and decalsyeeted then
            v.ShirtGraphic=0
        elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
            v[v.ClassName.."Template"]=0
        end
    end)
end

