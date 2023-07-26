repeat
    task.wait()
until game:IsLoaded()

loadstring(game:HttpGet("https://raw.githubusercontent.com/startgoogle/zues/main/anti.lua"))()

if game:GetService("Players").LocalPlayer.Name == getgenv().PlayerUser then
    -- // Variables
    local CoreGui = game:GetService("CoreGui")

    if getgenv().PortalOwner then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/startgoogle/zues/main/pholong.lua"))()
        print("Pho Log Execute")
    end
end
