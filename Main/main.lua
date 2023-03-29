
repeat task.wait() until game:IsLoaded() and game.ContentProvider.RequestQueueSize == 0
local loadedin = os.time()
if getgenv().isloaded then
    return
end
getgenv().isloaded = true
for i,v in pairs(getconnections(game:GetService("LogService").MessageOut)) do
    v:Disable()
end
for i,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
    v:Disable()
end
local Orion = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AnAvaragelilmemer/Orion-mobile/main/source.lua')))()
local function notif(msg)
    Orion:MakeNotification({
	Name = "Pissware",
	Content = msg,
	Image = "rbxassetid://7733658271",
	Time = 6.5
}) 
end
if not game.Players.LocalPlayer.Character then
    repeat notif("Waiting for "..game.Players.LocalPlayer.DisplayName.."'s character...") task.wait(7) until game.Players.LocalPlayer.Character
end
local RunService = game:GetService("RunService")
local lighting = game:GetService("Lighting")
local defaultambient = lighting.Ambient
local lplr = game:GetService("Players").LocalPlayer
local tpservice = game:GetService("TeleportService")
local userinputservice = game:GetService("UserInputService")
local version = "V2.9.1"
local fonts = {}
local camera = workspace.CurrentCamera
local queuetp = (syn and syn.queue_on_teleport) or queue_on_teleport 
local expectedversion = loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/version.lua"))()
if expectedversion ~= version then
    notif("Your current version of pissware is outdated! (expected version "..expectedversion.." got "..version..")")
    getgenv().isloaded = false
    return
end
if userinputservice.TouchEnabled and not userinputservice.KeyboardEnabled and not userinputservice.MouseEnabled then
    game.StarterGui:SetCore("ChatMakeSystemMessage",{Text = "[PISSWARE]: Current device : Mobile, expect certain features to not work.",Color = Color3.fromRGB(255,255,255),Font = Enum.Font.SourceSansSemibold,FontSize = Enum.FontSize.Size24})
elseif not userinputservice.TouchEnabled and userinputservice.KeyboardEnabled and userinputservice.MouseEnabled then
    game.StarterGui:SetCore("ChatMakeSystemMessage",{Text = "[PISSWARE]: Current device : PC ",Color = Color3.fromRGB(255,255,255),Font = Enum.Font.SourceSansSemibold,FontSize = Enum.FontSize.Size24})
end


pcall(function()
    game.ReplicatedStorage.Remote.ReqCharVars.OnClientInvoke = function()
	return {}
end
end)
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

local Window = Orion:MakeWindow({Name = "Pissware "..version, IntroText = "Welcome to pissware, "..lplr.DisplayName..".",IntroIcon = "rbxassetid://6031084743", HidePremium = true, SaveConfig = true, ConfigFolder = "pissware"})
local home = Window:MakeTab({Name = "home", Icon = "rbxassetid://7733960981", PremiumOnly = false})
local combat = Window:MakeTab({Name = "combat", Icon = "rbxassetid://7734056608", PremiumOnly = false})
local render = Window:MakeTab({Name = "render", Icon = "rbxassetid://6031075931", PremiumOnly = false})
local movement = Window:MakeTab({Name = "movement", Icon = "rbxassetid://7743870731", PremiumOnly = false})
local misc = Window:MakeTab({Name = "utility", Icon = "rbxassetid://7743878358", PremiumOnly = false})
local beta = Window:MakeTab({Name = " ", Icon = " ",PremiumOnly = false})
if isfile("loadedmorethanone.lua") then
home:AddLabel("Welcome back, "..lplr.DisplayName.."! are you enjoying the script?")
else
    home:AddLabel("Welcome "..lplr.DisplayName..", hope you'll enjoy this script!")
end

local Section = home:AddSection({
	Name = "Update Logs"
})

home:AddParagraph("Bug fixes","time released: weds, 29 of march\n [+]Actually fixed Hitbox, forgot waitforchild exists\n [-] reduced strafe jump slowness (mininum is now 0.1)\n [+] incresed strafe jump slowness [maxium is now 7]")
home:AddParagraph("Version V2.9.1","Time released: Tues, 28 of march\n [+]Added Strafe jump on movement section\n [+]Added Strafe jump slowness on movement section\n [-]Patched Hitbox not loading properly\n [!]Moved update logs\n [!]Version 2.9.1 is now released, enjoy!")
home:AddParagraph("Movement Update","Time released: Sun, 26 of march\n [+]Added Fly on movement\n [+]Added Fly speed on movement\n [+]Added Jetpack method on movement\n [+]Added Teleport to player on movement\n [!]Player list refreshes every 2 seconds.")
home:AddParagraph("Hitbox Update","Time released: Sat, 25 of march.\n [+]Replaced OldSpeed and NewSpeed to Speed\n [+]Finished hitbox expander\n [+]Added Auto rejoin when kicked on utility section\n [!]I will not add a team check on hitbox")
home:AddParagraph("Replication Update","Time released: Sun, 16 of march.\n [+]Added a toggle to OldSpeed\n [+]Added ReplicationLag in render section\n [+]Added LowOutgoingKBPS in render section\n [+]Improved AlwaysJump.\n [+]Fixed rejoin\n [+]Added infos on home section\n will add more soon!")

home:AddParagraph("Info for your roblox account"," Name: "..lplr.Name.."\n DisplayName: "..lplr.DisplayName.."\n UserId: "..lplr.UserId)
home:AddButton({
	Name = "Copy Name",
	Callback = function()
      		setclipboard(lplr.Name)
  	end    
})
home:AddButton({
	Name = "Copy DisplayName",
	Callback = function()
      		setclipboard(lplr.DisplayName)
  	end    
})

home:AddParagraph("Game info"," Name: "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.."\n ID: "..game.PlaceId.."\n JobId: "..game.JobId)

home:AddButton({
	Name = "Copy Name",
	Callback = function()
      		setclipboard(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
  	end    
})

home:AddButton({
	Name = "Copy JobId",
	Callback = function()
      		setclipboard(game.JobId)
  	end    
})

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

local hitbox 
getgenv().hitboxsize = 12
getgenv().hitboxcolor = Color3.new(255,255,255)
--no team check cause its impossible
RunService.Heartbeat:Connect(function()
if hitbox then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	local char = v.Character or v.CharacterAdded:Wait()
	local charhumanoid = char:WaitForChild("HumanoidRootPart")
	if v.Name ~= lplr.Name and charhumanoid then
	v.Character.HumanoidRootPart.Transparency = 0.5
	v.Character.HumanoidRootPart.Color = hitboxcolor
	v.Character.HumanoidRootPart.Size = Vector3.new(hitboxsize,hitboxsize,hitboxsize)
	v.Character.HumanoidRootPart.Material = "Plastic"
	v.Character.HumanoidRootPart.CanCollide = false
		end
end
else
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	if v.Name ~= lplr.Name then
	v.Character.HumanoidRootPart.Transparency = 1
	v.Character.HumanoidRootPart.Color = Color3.new(255,255,255)
	v.Character.HumanoidRootPart.Size = Vector3.new(2,2,1)
	v.Character.HumanoidRootPart.Material = "Plastic"
	v.Character.HumanoidRootPart.CanCollide = false
		end
end
end
end)
combat:AddToggle({Name = "Hitbox toggle", Default = false, Save = true, Flag = "combat_hitbox", Callback = function(v)
    hitbox = v
            end
})

combat:AddSlider({ Name = "Hitbox size", Default = 10, Min = 2, Max = 50, ValueName = "Size", Save = true, Flag = "combat_hitbox_size", Callback = function(v)
    hitboxsize = v
            end 
})

combat:AddColorpicker({ Name = "Hitbox color", Default = Color3.new(1,1,1), Save = true, Flag = "combat_hitbox_color", Callback = function(v)
    hitboxcolor = v
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

render:AddColorpicker({ Name = "FPS counter color", Default = Color3.new(80,80,80), Save = true, Flag = "render_fps_color", Callback = function(v)
    TextLabel.TextColor3 = v
            end
})

render:AddSlider({ Name = "Field of view", Default = 70, Min = 30, Max = 120, ValueName = "FOV", Save = true, Flag = "render_fov", Callback = function(v)
    camera.FieldOfView = v
            end 
})

render:AddToggle({ Name = "ReplicationLag", Default = false, Save = true, Flag = "render_replilag", Callback = function(v)
    if v then
    settings().Network.IncomingReplicationLag = 10000
        else
            settings().Network.IncomingReplicationLag = 0
    end
end
})

render:AddToggle({ Name = "LowOutgoingKBPS", Default = false, Save = true, Flag = "render_kbps", Callback = function(v)
    if v then
     game:GetService("NetworkClient"):SetOutgoingKBPSLimit(1)        
     else
        game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
    end
end
})

local esp = render:AddSection({
	Name = "ESP"
})
local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/Utility/ESP'),true))()
--settings
espLib.options.boxes = false
espLib.options.chams = false
espLib:Load()
for i,v in pairs(Drawing.Fonts) do
    fonts[v] = i
end
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

render:AddDropdown({Name = "Tracer Origin", Default = "Top", Options = {"Bottom", "Top", "Mouse"}, Save = true, Flag = "render_esp_tracer_origin", Callback = function(v)
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

espsettings:AddSlider({ Name = "Font size", Default = 17, Min = 5, Max = 25, ValueName = "font size", Save = true, Flag = "render_esp_fontsize", Callback = function(v)
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

espsettings:AddDropdown({Name = "Font", Default = fonts[1], Options = fonts, Save = true, Flag = "render_esp_font", Callback = function(v)
                espLib.options.font = Drawing.Fonts[v]
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
        lplr.Character.Humanoid:MoveTo(lplr.Character.HumanoidRootPart.Position+game.Workspace.Camera.CFrame.lookVector*100)
    if alwaysrun == false then
        lplr.Character.Humanoid:MoveTo(lplr.Character.HumanoidRootPart.Position)
    end
    end
end)
local jetpack
local jetpackmethod = "Hold"
game:GetService("UserInputService").InputBegan:Connect(function(inp,process)
if jetpack and jetpackmethod == "Press" and inp.KeyCode.Name == "Space" and not process then
	lplr.Character.Humanoid:ChangeState("Jumping")
end
end)
game:GetService("UserInputService").JumpRequest:connect(function()
if jetpack and jetpackmethod == "Hold" then
	lplr.Character.Humanoid:ChangeState("Jumping")
end
end)

local spinbot 
local spinbotspeed = math.rad(50)
RunService.Stepped:Connect(function()
if spinbot then
    lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, spinbotspeed, 0)
end
end)

local bhoptoggle
RunService.Stepped:Connect(function()
    if lplr.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall and bhoptoggle and lplr.Character.Humanoid.MoveDirection.Magnitude > 0 and lplr.Character.Humanoid.Health > 0.01 then
        lplr.Character.Humanoid:ChangeState("Jumping")
       end
end)
local strafetoggle
local strafeslowness = 3.2
RunService.Stepped:Connect(function()
    if lplr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and strafetoggle and lplr.Character.Humanoid.MoveDirection.Magnitude > 0 and lplr.Character.Humanoid.Health > 0.01 then
   lplr.Character:TranslateBy(lplr.Character.Humanoid.MoveDirection/strafeslowness)
  end
end)

--credits for sirius for their fly, i had a bad time coding a fly script
getgenv().flyspeed = 50
local fly
RunService.Stepped:Connect(function()
 local RootPart = lplr.Character.Humanoid.RootPart
 local vector3 = Vector3.zero
if fly then
            if userinputservice:IsKeyDown(Enum.KeyCode.W) then
                vector3 += camera.CFrame.LookVector
            end
            if userinputservice:IsKeyDown(Enum.KeyCode.S) then
                vector3 += -camera.CFrame.LookVector
            end
			if userinputservice:IsKeyDown(Enum.KeyCode.A) then
                vector3 += -camera.CFrame.RightVector
            end
            if userinputservice:IsKeyDown(Enum.KeyCode.D) then
                vector3 += camera.CFrame.RightVector
            end
            if userinputservice:IsKeyDown(Enum.KeyCode.Space) then
                vector3 += RootPart.CFrame.UpVector
            end
            if userinputservice:IsKeyDown(Enum.KeyCode.LeftControl) then
                vector3 += -RootPart.CFrame.UpVector
            end
            RootPart.Velocity = vector3 * flyspeed
end
end)

local speedmethod = "TranslateBy"
local Walkspeed
local walkspeedtog
RunService.Stepped:Connect(function()
    pcall(function()
        if lplr.Character.Humanoid.MoveDirection.Magnitude > 0 and walkspeedtog and speedmethod == "TranslateBy" then
            lplr.Character:TranslateBy(lplr.Character.Humanoid.MoveDirection * Walkspeed/50)
        end
    end)
end)
RunService.Stepped:Connect(function()
    if walkspeedtog and speedmethod == "CFrame" then
        lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame + lplr.Character.Humanoid.MoveDirection * Walkspeed/20
    end
end)
local function tptoplr(Player)
lplr.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame
end


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

movement:AddDropdown({Name = "Jetpack method", Default = "Hold", Options = {"Hold","Press"}, Save = true, Flag = "movement_jetpack_method", Callback = function(v)
    jetpackmethod = v
            end 
})

movement:AddToggle({ Name = "Speed toggle", Default = false, Save = true, Flag = "movement_speed_toggle", Callback = function(v)
    walkspeedtog = v
end
})

movement:AddDropdown({Name = "Speed method", Default = "TranslateBy", Options = {"TranslateBy","CFrame"}, Save = true, Flag = "movement_speed_method", Callback = function(v)
    speedmethod = v
            end 
})

movement:AddSlider({ Name = "Speed", Default = 20, Min = 0, Max = 150, Increment = 1,ValueName = "speed", Save = true, Flag = "movement_speed", Callback = function(v)
    Walkspeed = v
            end
})

movement:AddToggle({ Name = "AlwaysJump", Default = false, Save = true, Flag = "movement_bhop", Callback = function(v)
    bhoptoggle = v
end
})

movement:AddToggle({ Name = "StrafeJump", Default = false, Save = true, Flag = "movement_strafe", Callback = function(v)
    strafetoggle = v
end
})

movement:AddSlider({ Name = "StrafeJump slowness", Default = 1, Min = 0.1, Max = 7, Increment = 0.1,ValueName = "slowness", Save = true, Flag = "movement_strafe_slowness", Callback = function(v)
    strafeslowness = v
            end
})

movement:AddToggle({ Name = "Fly", Default = false, Save = true, Flag = "movement_fly", Callback = function(v)
    fly = v
end
})

movement:AddSlider({ Name = "Fly speed", Default = 50, Min = 1, Max = 300, Increment = 1,ValueName = "speed", Save = true, Flag = "movement_fly_speed", Callback = function(v)
    flyspeed = v
            end
})

local players = {}
local refreshlist = movement:AddDropdown({
	Name = "Teleport to player",
	Options = {},
	Callback = function(v)
		local selecteduser = players[v]
		if selecteduser then
			tptoplr(selecteduser)
		end
	end    
})
spawn(function()
while task.wait(2) do
      	players = {}
		  local playeroptions = {}
         for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			 table.insert(playeroptions,v.DisplayName)
			 players[v.DisplayName] = v
		 end
		 refreshlist:Refresh(playeroptions,true)
end
end)
local antiafk
lplr.Idled:connect(function()
    if antiafk then
                game:GetService("VirtualUser"):ClickButton2(Vector2.new())
    end
end)
local autorejoin
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.DescendantAdded:Connect(function()
      local errprompt = game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")
      if errprompt and autorejoin then
          if errprompt.TitleFrame.ErrorTitle.Text:lower():match("disconnected") then
               if #game:GetService("Players"):GetPlayers() == 1 then
	        task.wait(1.5)
      		tpservice:Teleport(game.PlaceId)
      		else
            tpservice:TeleportToPlaceInstance(game.PlaceId,game.JobId)
               end
          end
      end
end)
            
local spam 
getgenv().message = "pɪssware on top"
function spamm()
while spam do
	wait(2)
	chat(message) 
end
end
misc:AddToggle({ Name = "Anti-AFK", Default = true, Save = true, Flag = "misc_antiafk", Callback = function(v)
    antiafk = v
end
})

misc:AddToggle({ Name = "UnlockFPS", Default = false, Save = true, Flag = "misc_fps", Callback = function(v)
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
	    if #game:GetService("Players"):GetPlayers() == 1 then
	        kick("Pissware - rejoining...")
	        task.wait(1.5)
      		tpservice:Teleport(game.PlaceId)
      		else
            tpservice:TeleportToPlaceInstance(game.PlaceId,game.JobId)
	    end
  	end    
})

misc:AddToggle({ Name = "Spam", Default = false, Save = true, Flag = "misc_spam", Callback = function(v)
    spam = v
	spamm()
end
})

misc:AddTextbox({
	Name = "Spam message",
	Default = "pɪssware on top",
	TextDisappear = false,
	Callback = function(v)
		message = v
	end	  
})

misc:AddToggle({ Name = "AutoReconnect", Default = false, Save = true, Flag = "misc_autorejoin", Callback = function(v)
    autorejoin = v
end
})

beta:AddParagraph(
    "You found experimental!",
    "lol"
)

misc:AddButton({
	Name = "Generate join code",
	Callback = function()
	   setclipboard('game:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..',"'..game.JobId..'")')
	   notif("Sucessfully generated a Join code for your session.")
  	end    
})

Orion:Init()
writefile("loadedmorethanone.lua", "--This is used to detect if you use pissware more than once.")
queuetp[[
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/Main/main.lua"))()
]]
game.StarterGui:SetCore("ChatMakeSystemMessage",{Text = "[PISSWARE]: Pissware loaded in "..os.time()-loadedin.." seconds, Enjoy!",Color = Color3.fromRGB(255,255,255),Font = Enum.Font.SourceSansSemibold,FontSize = Enum.FontSize.Size24})
