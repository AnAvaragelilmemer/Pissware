repeat task.wait() until game:IsLoaded() and game.ContentProvider.RequestQueueSize == 0;
local logservice = game:GetService("LogService")
local scriptcontext = game:GetService("ScriptContext")
local RunService = game:GetService("RunService")
local lighting = game:GetService("Lighting")
local defaultambient = lighting.Ambient
local lplr = game:GetService("Players").LocalPlayer
local maintenance = false
local tpservice = game:GetService("TeleportService")
--disables printing
--[[
for i,v in pairs(getconnections(logservice.MessageOut)) do
    v:Disable()
end
for i,v in pairs(getconnections(scriptcontext.Error)) do
    v:Disable()
end
]]
--fe2
pcall(function()
    game.ReplicatedStorage.Remote.ReqCharVars.OnClientInvoke = function()
	return {}
end
end)
local version = "V2.9"
local queuetp = (syn and syn.queue_on_teleport) or queue_on_teleport
local function chat(msg)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg,"All")
end
local function kick(msg)
    if msg then
        lplr:Kick(msg)
        else
            lplr:Kick()
    end
end

local function exit()
    game:Shutdown()
end

local function copy(msg)
    setclipboard(msg)
end
if maintenance then
    kick("Maintenance is enabled, please wait!")
    return
end
local Orion = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local function notif(msg)
    Orion:MakeNotification({
	Name = "Pissware",
	Content = msg,
	Image = "rbxassetid://4483345998",
	Time = 5
}) 	
end
local random = {
    "hello, "..lplr.DisplayName.."!",
    "Welcome to pissware V2.9, "..lplr.DisplayName..".",
    "hi there, "..lplr.DisplayName..".",
    "Thanks for using pissware V2.9, "..lplr.DisplayName.."!",
    "whats up, "..lplr.DisplayName.."!"
    }
    local welcome = random[math.random(1,#random)]
local Window = Orion:MakeWindow({Name = "Pissware "..version, IntroText = welcome,IntroIcon = " ", HidePremium = true, SaveConfig = true, ConfigFolder = "wareconfig"})
local combat = Window:MakeTab({Name = "combat", Icon = "rbxassetid://4483345998", PremiumOnly = false})
local render = Window:MakeTab({Name = "render", Icon = "rbxassetid://6031075931", PremiumOnly = false})
local movement = Window:MakeTab({Name = "movement", Icon = "rbxassetid://7743870731", PremiumOnly = false})
local misc = Window:MakeTab({Name = "utility", Icon = "rbxassetid://7743878358", PremiumOnly = false})
local beta = Window:MakeTab({Name = " ", Icon = " ",PremiumOnly = false})
combat:AddButton({
	Name = "Aimbot",
	Callback = function()
	    notif("Press ; to destroy the aimbot!")
_G.FOVring = Drawing.new("Circle")
       game:GetService"RunService".RenderStepped:Connect(function()
       _G.FOVring.Visible = true
       _G.FOVring.Thickness = 2
       _G.FOVring.Radius = _G.fovringslider
       _G.FOVring.Transparency = 1
       _G.FOVring.Color = _G.fovColorPicker
       _G.FOVring.Position = workspace.CurrentCamera.ViewportSize/2
   end)
       
      
       
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


combat:AddToggle({Name = "team check", Default = false, Save = true, Flag = "aimbot_teamcheck", Callback = function(v)
    _G.tcToggle = v
            end
})

combat:AddSlider({ Name = "smoothing", Default = 0.25, Min = 0, Max = 1,  Increment = 0.1 ,ValueName = "smoothness", Save = true, Flag = "aimbot_smoothness", Callback = function(v)
    _G.smoothingslider = v
            end
})

combat:AddSlider({ Name = "fov ring size", Default = 100, Min = 0, Max = 1000, ValueName = "size", Save = true, Flag = "aimbot_fovringsize", Callback = function(v)
    _G.fovringslider = v
            end 
})

combat:AddColorpicker({ Name = "fov ring color", Default = Color3.new(1,1,1), Save = true, Flag = "aimbot_fovringcolor", Callback = function(v)
    _G.fovColorPicker = v
            end
})
local FPScounter = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
FPScounter.Name = "FPS counter"
FPScounter.Parent = game.CoreGui
FPScounter.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel.Parent = FPScounter
TextLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.455756456, 0, 0.802699208, 0)
TextLabel.Size = UDim2.new(0, 140, 0, 21)
TextLabel.Visible = false
TextLabel.Font = Enum.Font.Unknown
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

UICorner.Parent = TextLabel

local function CHCC_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	local RunService = game:GetService("RunService")
	RunService.RenderStepped:Connect(function(frame)
		script.Parent.Text = ("FPS: "..math.round(1/frame)) 
	end)
	
end
coroutine.wrap(CHCC_fake_script)()
local ambient 
getgenv().ambientcolor = Color3.fromRGB(0,255,0)
RunService.Stepped:Connect(function()
if ambient then
    lighting.Ambient = ambientcolor
    elseif ambient == false then
        lighting.Ambient = defaultambient 
end
end)
local time 
getgenv().timesilder = 14
RunService.Stepped:Connect(function()
if time then lighting.ClockTime = timesilder end
end)
local blur = Instance.new("BlurEffect")
blur.Parent = lighting

render:AddToggle({ Name = "Ambient", Default = false, Save = true, Flag = "render_ambientcheck", Callback = function(v)
    ambient = v
            end
})
render:AddColorpicker({ Name = "Ambient color", Default = Color3.new(1,1,1), Save = true, Flag = "render_ambientcheck_ambientcolor", Callback = function(v)
    ambientcolor = v
            end
})
render:AddToggle({ Name = "NoRender", Default = false, Save = true, Flag = "render_norender", Callback = function(v)
    if v then
        RunService:Set3dRenderingEnabled(false)
    else
            RunService:Set3dRenderingEnabled(true)
end
            end
})

render:AddToggle({ Name = "Time", Default = false, Save = true, Flag = "render_time", Callback = function(v)
    time = v
            end
})
render:AddSlider({ Name = "Time value", Default = 14, Min = 0, Max = 24, ValueName = "time", Save = true, Flag = "render_time_value", Callback = function(v)
    timesilder = v
            end 
})


render:AddToggle({ Name = "Blur", Default = false, Save = true, Flag = "render_blur", Callback = function(v)
   blur.Enabled = v   
            end
})

render:AddSlider({ Name = "Blur effect", Default = 0, Min = 0, Max = 100, ValueName = "blur", Save = true, Flag = "render_blur_value", Callback = function(v)
    blur.Size = v
            end 
})

render:AddToggle({ Name = "FPS counter", Default = false, Save = true, Flag = "render_fps", Callback = function(v)
    TextLabel.Visible = v
end
})

local esp = render:AddSection({
	Name = "ESP"
})
local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/Utility/ESP'),true))()
espLib.options.boxes = false
espLib.options.chams = false
espLib:Load()
--settings
render:AddToggle({ Name = "Enable ESP", Default = false, Save = true, Flag = "render_esp_enabled", Callback = function(v)
    espLib.options.enabled = v
            end
})

render:AddToggle({ Name = "box", Default = false, Save = true, Flag = "render_esp_box", Callback = function(v)
    espLib.options.boxFill = v
end
})

render:AddColorpicker({ Name = "Box color", Default = Color3.new(1,1,1), Save = true, Flag =  "render_esp_box_color", Callback = function(v)
    espLib.options.boxFillColor = v
end
})

render:AddToggle({ Name = "Tracers", Default = false, Save = true, Flag = "render_esp_tracer", Callback = function(v)
    espLib.options.tracers = v
end
})

render:AddColorpicker({ Name = "Tracer color", Default = Color3.new(1,1,1), Save = true, Flag = "render_esp_tracer_color", Callback = function(v)
    espLib.options.tracerColor = v
            end
})

render:AddDropdown({Name = "Tracer Origin", Default = "Mouse", Options = {"Bottom", "Top", "Mouse"}, Save = true, Flag = "render_esp_tracer_origin", Callback = function(v)
                espLib.options.tracerOrigin = v
            end 
})


render:AddToggle({ Name = "HealthBar", Default = false, Save = true, Flag = "render_esp_hpbar", Callback = function(v)
    espLib.options.healthBars = v
    end
})

render:AddColorpicker({ Name = "HealthBar color", Default = Color3.new(1,1,1), Save = true, Flag = "render_esp_hpbar_color", Callback = function(v)
    espLib.options.healthBarsColor = v
            end
})

render:AddToggle({ Name = "HealthText", Default = false, Save = true, Flag = "render_esp_healthtext", Callback = function(v)
    espLib.options.healthText = v
end
})

render:AddColorpicker({ Name = "HealthText color", Default = Color3.new(1,1,1), Save = true, Flag = "render_esp_healthtext_color", Callback = function(v)
    espLib.options.healthTextColor = v
            end
})

render:AddDropdown({Name = "HealthText Suffix", Default = "%", Options = {"%", " HP", " Health"}, Save = true, Flag = "render_esp_healthtext_suffix", Callback = function(v)
                espLib.options.healthTextSuffix = v
            end 
})

render:AddToggle({ Name = "Distance", Default = false, Save = true, Flag = "render_esp_distance", Callback = function(v)
    espLib.options.distance = v
end
})

render:AddDropdown({Name = "Distance Suffix", Default = " Studs", Options = {" Studs", " Distance"}, Save = true, Flag = "render_esp_distance_suffix", Callback = function(v)
                espLib.options.distanceSuffix = v
            end 
})

render:AddToggle({ Name = "Out of view arrows", Default = false, Save = true, Flag = "render_esp_oof", Callback = function(v)
    espLib.options.outOfViewArrows = v
    espLib.options.outOfViewArrowsOutline = v
end
})

render:AddColorpicker({ Name = "Out of view arrow color", Default = Color3.new(1,1,1), Save = true, Flag = "render_esp_oof_color", Callback = function(v)
     espLib.options.outOfViewArrowsColor = v
            end
})

render:AddColorpicker({ Name = "Out of view arrow outline color", Default = Color3.new(1,1,1), Save = true, Flag = "render_esp_oof_outline_color", Callback = function(v)
     espLib.options.outOfViewArrowsOutlineColor = v
            end
})

render:AddSlider({ Name = "Out of view arrow size", Default = 25, Min = 1, Max = 50, ValueName = "size", Save = true, Flag = "render_esp_oof_size", Callback = function(v)
    espLib.options.outOfViewArrowsSize = v
            end 
})

render:AddSlider({ Name = "Out of view arrow radius", Default = 100, Min = 1, Max = 360, ValueName = "Radius", Save = true, Flag = "render_esp_oof_Radius", Callback = function(v)
    espLib.options.outOfViewArrowsRadius = v
            end 
})

render:AddToggle({ Name = "NameTags", Default = false, Save = true, Flag = "render_esp_tags", Callback = function(v)
    espLib.options.names = v
end
})

render:AddColorpicker({ Name = "NameTags color", Default = Color3.new(1,1,1), Save = true, Flag = "render_esp_tags_color", Callback = function(v)
    espLib.options.nameColor = v
            end
})


local espsettings = render:AddSection({
	Name = "ESP Global settings"
})

espsettings:AddToggle({ Name = "Team check", Default = false, Save = true, Flag = "render_esp_teamcheck", Callback = function(v)
    espLib.options.teamCheck = v
end
})

espsettings:AddToggle({ Name = "Visible check", Default = false, Save = true, Flag = "render_esp_visiblecheck", Callback = function(v)
    espLib.options.visibleOnly = v
end
})

espsettings:AddToggle({ Name = "Use team color", Default = false, Save = true, Flag = "render_esp_teamcolor", Callback = function(v)
    espLib.options.teamColor = v
end
})

espsettings:AddSlider({ Name = "Font size", Default = 13, Min = 5, Max = 25, ValueName = "font size", Save = true, Flag = "render_esp_fontsize", Callback = function(v)
    espLib.options.fontSize = v
            end 
})

espsettings:AddToggle({ Name = "Limit Distance", Default = false, Save = true, Flag = "render_esp_ld", Callback = function(v)
    espLib.options.limitDistance = v
end
})

espsettings:AddSlider({ Name = "Distance", Default = 1000, Min = 10, Max = 2000, ValueName = "studs", Save = true, Flag = "render_esp_ld_distance", Callback = function(v)
    espLib.options.maxDistance = v
            end 
})

local noclip 
RunService.Stepped:Connect(function()
    if noclip then
        for i,v in pairs(lplr.Character:GetDescendants()) do
            if v and v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    end
end)

local alwaysrun 
RunService.Stepped:Connect(function()
    while alwaysrun and task.wait() do
        lplr.Character.Humanoid:MoveTo(lplr.Character.HumanoidRootPart.Position+workspace.Camera.CFrame.lookVector*100)
    if alwaysrun == false then
        lplr.Character.Humanoid:MoveTo(lplr.Character.HumanoidRootPart.Position)
    end
    end
end)

local jetpack
game:GetService("UserInputService").JumpRequest:connect(function()
	    if jetpack then
lplr.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
end
end)

local spinbot 
getgenv().spinbotspeed = math.rad(50)
RunService.Stepped:Connect(function()
if spinbot then
    lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, spinbotspeed, 0)
end
end)

movement:AddToggle({ Name = "Noclip", Default = false, Save = true, Flag = "movement_noclip", Callback = function(v)
    noclip = v
end
})

movement:AddToggle({ Name = "Spinbot", Default = false, Save = true, Flag = "movement_spinbot", Callback = function(v)
    spinbot = v
end
})

movement:AddSlider({ Name = "Spinbot speed", Default = 100, Min = 0, Max = 500, Increment = 1,ValueName = "speed", Save = true, Flag = "movement_spinbot_speed", Callback = function(v)
    spinbotspeed = v
            end
})

movement:AddToggle({ Name = "AlwaysMove", Default = false, Save = true, Flag = "movement_am", Callback = function(v)
    alwaysrun = v
end
})

movement:AddToggle({ Name = "Jetpack", Default = false, Save = true, Flag = "movement_jetpack", Callback = function(v)
    jetpack = v
end
})

local TargetWalkspeed
movement:AddSlider({ Name = "Speed", Default = 0, Min = 0, Max = 500, Increment = 1,ValueName = "speed", Save = true, Flag = "movement_speed", Callback = function(v)
    TargetWalkspeed = v
            end
})

RunService.Stepped:Connect(function()
    pcall(function()
        if lplr.Character.Humanoid.MoveDirection.Magnitude > 0 then
            lplr.Character:TranslateBy(lplr.Character.Humanoid.MoveDirection * TargetWalkspeed/50)
        end
    end)
end)

local antiafk
    if antiafk then
            lplr.Idled:connect(function()
                game:GetService("VirtualUser"):ClickButton2(Vector2.new())
            end)
        end
misc:AddToggle({ Name = "Anti-AFK", Default = true, Save = true, Flag = "misc_antiafk", Callback = function(v)
    antiafk = v
end
})

misc:AddToggle({ Name = "Unlock FPS", Default = false, Save = true, Flag = "misc_fps", Callback = function(v)
    if v then
        setfpscap(1000)
        else
            setfpscap(60)
    end
end
})

misc:AddButton({
	Name = "Rejoin",
	Callback = function()
	    if #game:GetService("Players"):GetPlayers() <= 1 then
	        kick("Pissware - rejoining...")
	        task.wait(1.5)
      		tpservice:Teleport(game.PlaceId)
      		else
      		    tpservice:TeleportToPlaceInstance(game.PlaceId,game.JobId)
	    end
  	end    
})

beta:AddParagraph(
    "You found experimental!",
    "Right now this has no use, come back later!"
)

Orion:Init()

queuetp[[
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/Main/main.lua"))()
]]
