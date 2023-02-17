repeat task.wait() until game:IsLoaded()
local lplr = game.Players.LocalPlayer
local name = lplr.Name
local dname = lplr.DisplayName
local workspace = game.Workspace
local chlplr = lplr.Character.Humanoid
local executor = identifyexecutor() or "?"
local id = lplr.UserId
local req = http_request or request or (syn and syn.request)
local HS = game:GetService("HttpService")
local response = HS:JSONDecode(
    req({
    Url = "https://users.roblox.com/v1/users/"..lplr.UserId
})
.Body)
local country = game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(lplr)
local version = "2.7"
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local FPS = 0
local function updateFPS()
	FPS += 1
end
RunService.RenderStepped:Connect(updateFPS)
local UserInputService = game:GetService("UserInputService")
local dev = 'Device'
local load = tick()	
local load2 = tick()

repeat wait() until game.ContentProvider.RequestQueueSize == 0

local Orion = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local espLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Sirius/main/library/esp/esp.lua"))()


if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled and not UserInputService.MouseEnabled then
Orion:MakeNotification({
	Name = "Hey There!",
	Content = "I see your using a mobile device, i recommend using this script with a high minium width",
	Image = "rbxassetid://4483345998",
	Time = 20
})
end
local window = Orion:MakeWindow({
    Name = "Pisswareぞ V"..version,
    IntroText = "Welcome to Pissware V"..version..", "..dname.."!",
    IntroIcon = "rbxassetid://6031094686",
    HidePremium = true, 
    SaveConfig = true,
    ConfigFolder = "PisswareV2dot7"
})

local home = window:MakeTab({Name = "Home", Icon = "rbxassetid://6026568198"})

local time = home:AddLabel(""..os.date("%I:%M:%S %p", os.time()))
spawn(function()
while task.wait() do
    time:Set(""..os.date("%I:%M:%S %p", os.time()))
end
end)

local fps = home:AddLabel("FPS: "..FPS)
spawn(function()
while task.wait(1) do
	fps:Set("FPS: "..FPS)
	FPS = 0
end
end)

home:AddParagraph("Info for your roblox account","Name: "..name.."                                                                      Display Name: "..dname.."                                                                       User Id: "..id.."                                                                           Account creation date: "..response.created)

if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled and not UserInputService.MouseEnabled then
home:AddParagraph("Misc","Executor: "..executor.."                                                                                       Device: Mobile")
elseif not UserInputService.TouchEnabled and UserInputService.KeyboardEnabled and UserInputService.MouseEnabled then
home:AddParagraph("Misc","Executor: "..executor.."                                                                                       Device: PC")
end

local Section = home:AddSection({
	Name = "Update Logs"
})

home:AddParagraph("Updated to Version 2.7","[+] Switched UI Libary to Orion                                                                  [+] Organized script section.                                                                 [+]Added Aimbot, no i will not add an wall check :)                         ")

local user = window:MakeTab({Name = "LocalPlayer", Icon = "rbxassetid://6022668898"})

user:AddSlider({
	Name = "Walkspeed",
	Min = 1,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,87,51),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

user:AddSlider({
	Name = "Jumppower",
	Min = 1,
	Max = 1000,
	Default = 50,
	Color = Color3.fromRGB(255,87,51),
	Increment = 1,
	ValueName = "Jumppower",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

user:AddSlider({
	Name = "Gravity",
	Min = 1,
	Max = 1000,
	Default = 196,
	Color = Color3.fromRGB(255,87,51),
	Increment = 1,
	ValueName = "Gravity",
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end    
})

local Section = user:AddSection({
	Name = "PLAYER ACTIONS"
})

user:AddButton({
	Name = "Refresh Character",
	Callback = function()
      		repeat chlplr.Health = 0 task.wait() until chlplr.Health ~= 0
  	end    
})

user:AddButton({
	Name = "Reset Character",
	Callback = function()
      		loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/AnAvaragelilmemer/scripts/main/refresh%20character"))()
  	end    
})

user:AddButton({
	Name = "Rejoin",
	Callback = function()
      		game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService('Players').LocalPlayer)
  	end    
})

user:AddButton({
	Name = "Save Game",
	Callback = function()
      		saveinstance()
  	end    
})

user:AddButton({
	Name = "Leave game",
	Callback = function()
      		game:Shutdown()
  	end    
})

user:AddButton({
	Name = "Unlock Fps",
	Callback = function()
      		setfpscap(999)
  	end    
})



local esp = window:MakeTab({Name = "ESP", Icon = "rbxassetid://6031075931"})

local Section = esp:AddSection({Name = "ESP"}) 

esp:AddToggle({
	Name = "enable",
	Default = false,
	Callback = function(value)
		 espLibrary.options.enabled = value
	end    
})

esp:AddToggle({
	Name = "Box",
	Default = false,
	Callback = function(value)
		 espLibrary.options.boxes = value
	end    
})

esp:AddToggle({
	Name = "Filled Box",
	Default = false,
	Callback = function(value)
		 espLibrary.options.boxFill = value
	end    
})

esp:AddToggle({
	Name = "Health bar",
	Default = false,
	Callback = function(value)
		 espLibrary.options.healthBars = value
	end    
})

esp:AddToggle({
	Name = "Health text",
	Default = false,
	Callback = function(value)
		 espLibrary.options.healthText = value
	end    
})


esp:AddToggle({
	Name = "Names",
	Default = false,
	Callback = function(value)
		 espLibrary.options.names = value
	end    
})

esp:AddToggle({
	Name = "Distance",
	Default = false,
	Callback = function(value)
		 espLibrary.options.distance = value
	end    
})

esp:AddToggle({
	Name = "Tracers",
	Default = false,
	Callback = function(value)
		  espLibrary.options.tracers = value
	end    
})

esp:AddToggle({
	Name = "Out of view arrows",
	Default = false,
	Callback = function(value)
		  espLibrary.options.outOfViewArrows = value
                espLibrary.options.outOfViewArrowsOutline = value
	end    
})



local Section = esp:AddSection({Name = "esp settings"})

esp:AddColorpicker({
	Name = "Box Color",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(value)
		espLibrary.options.boxesColor = value
	end	  
})

esp:AddColorpicker({
	Name = "Filled box color",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(value)
		espLibrary.options.boxFillColor = value
	end	  
})

esp:AddColorpicker({
	Name = "Health bar Color",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(value)
    espLibrary.options.healthBarsColor = value
	end	  
})


esp:AddColorpicker({
	Name = "Health text Color",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(value)
     espLibrary.options.healthTextColor = value
	end	  
})

esp:AddColorpicker({
	Name = "Name Color",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(value)
     espLibrary.options.nameColor = value
	end	  
})

esp:AddColorpicker({
	Name = "Distance Color",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(value)
     espLibrary.options.distanceColor = value
	end	  
})

esp:AddColorpicker({
	Name = "Chams Color",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(value)
     espLibrary.options.chamsFillColor = value
	end	  
})


esp:AddColorpicker({
	Name = "Tracer Color",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(value)
     espLibrary.options.tracerColor = value
	end	  
})

esp:AddColorpicker({
	Name = "Out of Bounds color",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(value)
    espLibrary.options.outOfViewArrowsColor = value
    espLibrary.options.outOfViewArrowsOutlineColor = value
	end	  
})

local Section = esp:AddSection({Name = " "})

esp:AddToggle({
	Name = "Use Team Color",
	Default = false,
	Callback = function(value)
		espLibrary.options.teamColor = value
	end    
})

esp:AddToggle({
	Name = "Team Check",
	Default = false,
	Callback = function(value)
		espLibrary.options.teamCheck = value
	end    
})

esp:AddToggle({
	Name = "Visible Check",
	Default = false,
	Callback = function(value)
		espLibrary.options.visibleOnly = value
	end    
})



local aimbot = window:MakeTab({Name = "Aimbot", Icon = "rbxassetid://4483345998"})


aimbot:AddButton({
	Name = "Aimbot",
	Callback = function()
Orion:MakeNotification({
	Name = "Hey there",
	Content = "Press ; to Destroy the Aimbot",
	Image = "rbxassetid://4483345998",
	Time = 10
})
       --draw fov ring
       _G.FOVring = Drawing.new("Circle")
       --loop fov ring properties
       game:GetService"RunService".RenderStepped:Connect(function()
       _G.FOVring.Visible = true
       _G.FOVring.Thickness = 2
       _G.FOVring.Radius = _G.fovringslider
       _G.FOVring.Transparency = 1
       _G.FOVring.Color = _G.fovColorPicker
       _G.FOVring.Position = workspace.CurrentCamera.ViewportSize/2
   end)
       
       local RunService = game:GetService("RunService")
       
       local function getClosest(cframe)
          local ray = Ray.new(cframe.Position, cframe.LookVector).Unit
          
          local target = nil
          local mag = math.huge
          
          for i,v in pairs(game.Players:GetPlayers()) do
              if v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= game.Players.LocalPlayer and (v.Team ~= game.Players.LocalPlayer.Team or (not _G.tcToggle)) then
                  local magBuf = (v.Character.Head.Position - ray:ClosestPoint(v.Character.Head.Position)).Magnitude
                  
                  if magBuf < mag then
                      mag = magBuf
                      target = v
                  end
              end
          end
          
          return target
       end
       
       loop = RunService.RenderStepped:Connect(function()
          local UserInputService = game:GetService("UserInputService")
          local pressed = --[[UserInputService:IsKeyDown(Enum.KeyCode.E)]] UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
          local localPlay = game.Players.localPlayer.Character
          local cam = workspace.CurrentCamera
          local zz = workspace.CurrentCamera.ViewportSize/2
          
          if pressed then
              local Line = Drawing.new("Line")
              local curTar = getClosest(cam.CFrame)
              local ssHeadPoint = cam:WorldToScreenPoint(curTar.Character.Head.Position)
              ssHeadPoint = Vector2.new(ssHeadPoint.X, ssHeadPoint.Y)
              if (ssHeadPoint - zz).Magnitude < _G.fovringslider then
                  workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(CFrame.new(cam.CFrame.Position, curTar.Character.Head.Position), _G.smoothingslider)
              end
          end
          
          if UserInputService:IsKeyDown(Enum.KeyCode.Semicolon) then
              loop:Disconnect()
              _G.FOVring:Remove()
          end
       end)
  	end    
})

aimbot:AddToggle({
	Name = "Team check",
	Default = false,
	Callback = function(Value)
		_G.tcToggle = Value
	end    
})

aimbot:AddSlider({
	Name = "Smoothing",
	Min = 0.1,
	Max = 1,
	Default = 0.25,
	Color = Color3.fromRGB(255,255,255),
	Increment = 0.1,
	ValueName = " ",
	Callback = function(Value)
		_G.smoothingslider = Value
	end    
})

aimbot:AddSlider({
	Name = "Fov ring",
	Min = 10,
	Max = 100,
	Default = 150,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = " ",
	Callback = function(Value)
		_G.fovringslider = Value
	end    
})

aimbot:AddColorpicker({
	Name = "Fov ring color",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(Value)
		_G.fovColorPicker = Value
	end	  
})

local guis = window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://6031086173",
	PremiumOnly = false
})

guis:AddLabel("Current GUIS")
local Section = guis:AddSection({
	Name = "Universal"
})

guis:AddButton({
	Name = "Dex V3",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
  	end    
})

guis:AddButton({
	Name = "Dex v4",
	Callback = function()
      		 loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
  	end    
})

guis:AddButton({
	Name = "Cmd X",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
  	end    
})

guis:AddButton({
	Name = "Infinite yield",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})

guis:AddButton({
	Name = "simplespy",
	Callback = function()
      		loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
  	end    
})

guis:AddButton({
	Name = "TurtleSpy",
	Callback = function()
      		loadstring(game:HttpGet("https://pastebin.com/raw/BDhSQqUU", true))()
  	end    
})

guis:AddButton({
	Name = "Domain x",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/fortnitemodder/DomainX/main/Source", true))()
  	end    
})

guis:AddButton({
	Name = "Orca",
	Callback = function()
      		loadstring(
  game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua")
)()
  	end    
})

guis:AddButton({
	Name = "Hitbox expander",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/roburox/s1mple/main/scripts/hitboxexpand"))()
  	end    
})

local Section = guis:AddSection({
	Name = "Animation hubs"
})

guis:AddButton({
	Name = "universal fe hub",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script"))()
  	end    
})

guis:AddButton({
	Name = "Pendulum hub v5",
	Callback = function()
      		loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
  	end    
})

local Section = guis:AddSection({
	Name = "Script Hubs"
})

guis:AddButton({
	Name = "Vhub",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Quan8008/V-Hub/Master/Launch-Screen.lua"))();
  	end    
})

guis:AddButton({
	Name = "EZ hub",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
  	end    
})

guis:AddButton({
	Name = "Eclipse hub",
	Callback = function()
      		local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
    end
})

guis:AddButton({
	Name = "unfair hub",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
    end
})

guis:AddButton({
	Name = "VG hub",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
  	end    
})

local Section = guis:AddSection({
	Name = "Blox fruits"
})

guis:AddButton({
	Name = "Ripper hub",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/hajibeza/RIPPER-HUB/main/Bloxfruit"))()
  	end    
})

guis:AddButton({
	Name = "Hoho hub",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
  	end    
})

guis:AddButton({
	Name = "Table hub",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/AltsegoD/scripts/egoD/tablekhoc.lua"))()
  	end    
})

guis:AddButton({
	Name = "Mukuro hub",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua'))()
  	end    
})

guis:AddButton({
	Name = "Mango hub",
	Callback = function()
      		loadstring(game:HttpGet('https://gitlab.com/L1ZOT/mango-hub/-/raw/main/Mango-Bloxf-Fruits-Beta'))()
  	end    
})

guis:AddButton({
	Name = "PlaybackX Hub",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/NeaPchX2/Playback-X-HUB/main/Protected.lua.txt'))()
  	end    
})

guis:AddButton({
	Name = "2x Hub",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/NeaPchX2/2XHUB-UPDBIG/main/README.md'))()
  	end    
})

local Section = guis:AddSection({
	Name = "Bedwars"
})

guis:AddButton({
	Name = "Vape V4",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
  	end    
})

local Section = guis:AddSection({
	Name = "Decaying winter"
})

guis:AddButton({
	Name = "GOODWILL",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/Aidez/decaying_winter/main/GOODWILL_COMMAND_SCRIPT'),true))()
  	end    
})

local Section = guis:AddSection({
	Name = "Prison life"
})

guis:AddButton({
	Name = "Septex",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
  	end    
})


local Section = guis:AddSection({
	Name = "Doors"
})

guis:AddButton({
	Name = "Vynixisu - doors",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
  	end    
})

guis:AddButton({
	Name = "plamen6789rock's doors enti spawner gui",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/plamen6789/DoorsEntitySummonerGUI/main/EntityGUI"))()
  	end    
})

local Section = guis:AddSection({
	Name = "Aimbot/esp/slientaim scripts"
})

guis:AddButton({
	Name = "Universal Slient Aim",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))()
  	end    
})

guis:AddButton({
	Name = "Parvus hub",
	Callback = function()
      		loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/AlexR32/Parvus/main/Loader.lua"))()
  	end    
})

guis:AddButton({
	Name = "Vision hub",
	Callback = function()
      		loadstring(game:HttpGetAsync('https://visionhub.dev/loader.lua'))()
  	end    
})

guis:AddButton({
	Name = "Unnamed esp",
	Callback = function()
      		pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))() end)
  	end    
})

local Section = guis:AddSection({
	Name = "CHAOS"
})

guis:AddButton({
	Name = "chaos script",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/1111-ssss/Chaos_Script/main/Chaos_script.txt'))()
  	end    
})

local utilies = window:MakeTab({Name = "Utilies", Icon = "rbxassetid://6022668955"})

utilies:AddButton({
	Name = "Copy posisition",
	Callback = function()
      		setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
  	end    
})


utilies:AddButton({
	Name = "Generate Teleport script",
	Callback = function()
      		local pos = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
		setclipboard("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new("..pos..")") 
  	end    
})


utilies:AddButton({
	Name = "Generate Tween teleport script",
	Callback = function()
      		  local pos = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
		setclipboard('tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new('..tweenTime..', Enum.EasingStyle.Linear)\ntweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new('..pos..')}):Play()') 
   end
})

local tweentime = utilies:AddSlider({
	Name = "Tween teleport time",
	Min = 1,
	Max = 50,
	Default = 10,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = " ",
	Callback = function(Value)
		 tweenTime = Value
	end    
})

tweentime:Set(9)
wait()
tweentime:Set(10)

espLibrary:Load()
Orion:Init()
