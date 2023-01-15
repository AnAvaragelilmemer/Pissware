--vars
getgenv().autofarm = nil

function autofarmer()
while autofarm == true do
	local args = {
   [1] = -1000000,
   [2] = "1 Stick",
   [3] = true
}

game:GetService("ReplicatedStorage").Shop.Events.BuyItem:FireServer(unpack(args))
wait()
end
end

local notifLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Notification%20Library/main.lua"))()

local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
  notifLib:CreateDefaultNotif({
 TweenSpeed = 1,
 Title = "notification",
 Text = player.DisplayName .. " joined!",
 Duration = 5
})
end)

Players.PlayerRemoving:Connect(function(player)
	notifLib:CreateDefaultNotif({
 TweenSpeed = 1,
 Title = "notification",
 Text = player.DisplayName .. " left.",
 Duration = 5
})
end)

--gui code below
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "Pissware : Snow plow simulator",
   LoadingTitle = "welcome to pissware, "..game.Players.LocalPlayer.DisplayName,
   LoadingSubtitle = "by drmr",
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
      Title = "Sirius Hub",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/sirius)",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "Hello"
   }
})

local Tab = Window:CreateTab("Main") 

local Section = Tab:CreateSection("Infinite money/rebirth")

local Button = Tab:CreateButton({
   Name = "infinite snow",
   Callback = function()
   local args = {
   [1] = -999999999999999999,
   [2] = "1 Stick",
   [3] = true
}

game:GetService("ReplicatedStorage").Shop.Events.BuyItem:FireServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "inf rebirth (use after inf snow)",
   Callback = function()
  local A_1 = 1000000
local Event = game:GetService("ReplicatedStorage").RebirthEvent
Event:FireServer(A_1)
   end,
})

local Section = Tab:CreateSection("automatic")


local Toggle = Tab:CreateToggle({
   Name = "auto snow",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
   getgenv().autofarm = bool -- The function that takes place when the toggle is pressed
   autofarmer() -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Player = Window:CreateTab("LocalPlayer")

local Slider = Player:CreateSlider({
	Name = "Speed",
	Range = {1, 500},
	Increment = 1,
	Suffix = "Walkspeed",
	CurrentValue = 16,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value -- The function that takes place when the slider changes
    		-- The variable (Value) is a number which correlates to the value the slider is currently at
	end,
})

local Slider = Player:CreateSlider({
	Name = "Gravity",
	Range = {0, 1000},
	Increment = 1,
	Suffix = "Gravity",
	CurrentValue = 196,
	Flag = "Slider3", 
	Callback = function(Value)
		game.Workspace.Gravity = Value
    		
	end,
})

local Slider = Player:CreateSlider({
	Name = "Field of View",
	Range = {1, 120},
	Increment = 1,
	Suffix = "FOV",
	CurrentValue = 70,
	Flag = "Slider4", 
	Callback = function(Value)
		game:GetService'Workspace'.Camera.FieldOfView = Value
    		
	end,
})

local Button = Player:CreateButton({
	Name = "rejoin",
	Callback = function()
		game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService('Players').LocalPlayer)
	end,
})

local Button = Player:CreateButton({
	Name = "leave game",
	Callback = function()
		game:Shutdown()
	end,
})


