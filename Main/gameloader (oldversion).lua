--[[
       _)                                                                        
 __ \   |   __|   __| \ \  \   /   _` |   __|   _ \       
 |   |  | \__ \ \__ \  \ \  \ /   (   |  |      __/          
 .__/  _| ____/ ____/   \_/\_/   \__._| _|    \___|  
_|                                                                                                 
]]--
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "Pissware : Loader",
   LoadingTitle = "Welcome to pissware, "..game.Players.LocalPlayer.DisplayName,
   LoadingSubtitle = "by drmr",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "pisswareloader"
   },
})

local Tab = Window:CreateTab("Home")

local Section = Tab:CreateSection("Current games : 5")
local Section = Tab:CreateSection("Current version : V2")

local Button = Tab:CreateButton({
   Name = "Run Pissware",
   Callback = function()
   wait(1)
   Rayfield:Destroy()
   if game.PlaceId == 155615604 then
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/games/prison%20life.lua"))() 
else
-- game not supported
end
if game.PlaceId == 11701792069 then
 loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/games/snowplowsim.lua"))()
 else
 -- game not supported
 end
 if game.PlaceId == 5702593762 then
 loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/games/climb1000stairs"))()
 else
 -- game not supported
 end
 if game.PlaceId == 815405518 then
 loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/games/floorislava"))()
 else
 -- game not supported 
 end
if game.PlaceId == 3587619225 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/games/megaeasyobby"))()
else
--game not supported
end
if game.PlaceId == 3268556893 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/games/tsunami%20survival"))()
else
--game not supported
end
   end,
})

local Button = Tab:CreateButton({
   Name = "Run Old pissware",
   Callback = function()
   wait(1)
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/OldMain"))()
   end,
})
local Button = Tab:CreateButton({
  Name = "Run Utility mode",
  Callback = function()
  --this is skidded, i created this to make coding easy abit for me
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "Pissware : utility",
   LoadingTitle = "Entering utility mode",
   LoadingSubtitle = " ",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "ABCD", -- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Hi there",
      Subtitle = " ",
      Note = "seems like you wanna use this script, then input devmode",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "devmode"
   }
})
local Main = Window:CreateTab("Teleport")
local posis = Main:CreateLabel("Posistion: "..tostring(math.floor(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X))..", "..tostring(math.floor(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y))..", "..tostring(math.floor(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)))

spawn(function() --this code makes it functionable
while task.wait() do
	posis:Set("Posistion: "..tostring(math.floor(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X))..", "..tostring(math.floor(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y))..", "..tostring(math.floor(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)))
end
end)

local Button = Main:CreateButton({
   Name = "Copy posistion",
   Callback = function()
    setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
   end,
})

local Button = Main:CreateButton({
   Name = "Generate Teleport script",
   Callback = function()
   local pos = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
		setclipboard("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new("..pos..")") 
   end,
})

local Slider = Main:CreateSlider({
   Name = "Tween time",
   Range = {0, 50},
   Increment = 1,
   Suffix = "seconds",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   tweenTime = Value
   end,
})

local Button = Main:CreateButton({
   Name = "Generate Tween teleport script",
   Callback = function()
   local pos = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
		setclipboard('tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new('..tweenTime..', Enum.EasingStyle.Linear)\ntweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new('..pos..')}):Play()') 
   end,
})

local Button = Main:CreateButton({
   Name = "Anti afk",
   Callback = function()
   local anti = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
afk:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
afk:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
   end,
})

local Keybind = Main:CreateKeybind({
   Name = "Return to the loader",
   CurrentKeybind = "Z",
   HoldToInteract = false,
   Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Keybind)
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/games/guiloader"))()
   end,
})

local Button = Main:CreateButton({
   Name = "Run inf yield",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Button = Main:CreateButton({
   Name = "Run remotespy",
   Callback = function()
   loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
   end,
})

local Button = Main:CreateButton({
   Name = "Run dex v3",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
   end,
})
   end,
})
local Section = Tab:CreateSection("update logs")
local Paragraph = Tab:CreateParagraph({Title = "added new game", Content = "Added tsunami survival"})
local Paragraph = Tab:CreateParagraph({Title = "New script", Content = "Added utility mode"})
local Paragraph = Tab:CreateParagraph({Title = "added new game", Content = "added mega easy obby"})
local Paragraph = Tab:CreateParagraph({Title = "Updated loader!", Content = "I have updated the loader, i hope you find this useful!"}) 
