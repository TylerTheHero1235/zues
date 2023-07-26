repeat
    task.wait()
until game:IsLoaded()

loadstring(game:HttpGet("https://raw.githubusercontent.com/startgoogle/zues/main/anti.lua"))()

if game:GetService("Players").LocalPlayer.Name == getgenv().PlayerUser then
    -- // Variables
    local CoreGui = game:GetService("CoreGui")
    local LuckyWare;

    if CoreGui:FindFirstChild("ScreenGui"):FindFirstChild("TextButton") then
        LuckyWare = CoreGui:FindFirstChild("ScreenGui")
    end

    if getgenv().PortalOwner then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/startgoogle/zues/main/pholong.lua"))()
        print("Pho Log Execute")
    end

    if getgenv().LuckyWare then
        if LuckyWare then
            print("LuckyWare Instance")
            LuckyWare:Destroy()
        else
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DistributionError/Luckyware/main/Loader"))()
            print("LuckyWare not found!")
        end
    end
end
