--[[ 
        _)                                                 |                      |                         
  __ \   |   __|   __| \ \  \   /   _` |   __|   _ \       __ \   |   |        _` |   __|  __ `__ \    __|  
  |   |  | \__ \ \__ \  \ \  \ /   (   |  |      __/       |   |  |   |       (   |  |     |   |   |  |     
  .__/  _| ____/ ____/   \_/\_/   \__._| _|    \___|      _.__/  \__. |      \__._| _|    _|  _|  _| _|     
 _|                                                              ____/                                      
 ]]-- 
 local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))() 
 local Window = OrionLib:MakeWindow({Name = "Pissware", IntroIcon = "rbxassetid://6031094686", IntroText = "Pissware : remade", HidePremium = true, SaveConfig = false, ConfigFolder = "Orionse"}) 
  
 local update = Window:MakeTab({ 
         Name = "Updates", 
         Icon = "rbxassetid://6022668946", 
         PremiumOnly = false 
 }) 
  
 local Section = update:AddSection({ 
         Name = "Current version : 1.4" 
 }) 
  
 update:AddParagraph("Version 1.4","Created Teleport (might not work), added fps universal") 
 update:AddParagraph("Version 1.3","changed ui") 
  
 local user = Window:MakeTab({ 
         Name = "localuser", 
         Icon = "rbxassetid://6022668898", 
         PremiumOnly = false 
 }) 
  
 user:AddSlider({ 
         Name = "Walkspeed", 
         Min = 1, 
         Max = 500, 
         Default = 16, 
         Color = Color3.fromRGB(255,87,51), 
         Increment = 1, 
         ValueName = "Walkspeed", 
         Callback = function(Value) 
                 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value 
         end     
 }) 
  
 user:AddSlider({ 
         Name = "Jumppower", 
         Min = 1, 
         Max = 1000, 
         Default = 50, 
         Color = Color3.fromRGB(255,87,51), 
         Increment = 1, 
         ValueName = "Jumppower", 
         Callback = function(Value) 
                 game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value 
         end     
 }) 
  
 user:AddSlider({ 
         Name = "Gravity", 
         Min = 1, 
         Max = 1000, 
         Default = 196, 
         Color = Color3.fromRGB(255,87,51), 
         Increment = 1, 
         ValueName = "Gravity", 
         Callback = function(Value) 
                 game.Workspace.Gravity = Value 
         end     
 }) 
  
 local guis = Window:MakeTab({ 
         Name = "Scripts/GUIs", 
         Icon = "rbxassetid://6031086173", 
         PremiumOnly = false 
 }) 
  
 local Section = guis:AddSection({ 
         Name = "Total scripts/GUIS : 37" 
 }) 
  
 local Section = guis:AddSection({ 
         Name = "Universal" 
 }) 
  
 guis:AddButton({ 
         Name = "Dex V3/secure edition", 
         Callback = function() 
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Dex v4", 
         Callback = function() 
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/AnAvaragelilmemer/main/dexv4"))() 
           end     
 }) 
  
 guis:AddButton({ 
     Name = "awsome explorr", 
         Callback = function() 
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/awesome-explorer/main/source.lua"))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Cmd X", 
         Callback = function() 
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Infinite yield", 
         Callback = function() 
                       loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "simplespy", 
         Callback = function() 
                       loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "TurtleSpy", 
         Callback = function() 
                       loadstring(game:HttpGet("https://pastebin.com/raw/BDhSQqUU", true))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Domain x", 
         Callback = function() 
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/fortnitemodder/DomainX/main/Source", true))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Orca", 
         Callback = function() 
                       loadstring( 
   game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua") 
 )() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Hitbox expander", 
         Callback = function() 
      
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/roburox/s1mple/main/scripts/hitboxexpand"))() 
           end     
 }) 
  
 local Section = guis:AddSection({ 
         Name = "Animation hubs" 
 }) 
  
 guis:AddButton({ 
         Name = "universal fe hub", 
         Callback = function() 
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script"))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Simplity v2", 
         Callback = function() 
                       loadstring(game:HttpGet('https://raw.githubusercontent.com/HeyGyt/simplityv2/main/main',true))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Pendulum hub v5", 
         Callback = function() 
                       loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))() 
           end     
 }) 
  
 local Section = guis:AddSection({ 
         Name = "Script Hubs" 
 }) 
  
 guis:AddButton({ 
         Name = "Vhub", 
         Callback = function() 
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/Quan8008/V-Hub/Master/Launch-Screen.lua"))(); 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "EZ hub", 
         Callback = function() 
                       loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Eclipse hub", 
         Callback = function() 
                       local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)() 
     end 
 }) 
  
 guis:AddButton({ 
         Name = "unfair hub", 
         Callback = function() 
     OrionLib:MakeNotification({ 
         Name = "Printed the supported games!", 
         Content = "Press f9 for the supported games", 
         Image = "rbxassetid://6023426926", 
         Time = 5 
 }) 
                       loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))() 
     print("the unfair hub supported games") 
     print("doors") 
     print("pet sim x") 
     print("da hood") 
     print("custom duels") 
     print("Kat") 
     print("slap battles") 
     print("strucid [use alt]") 
     print("phantom forces") 
     print("aimblox beta [rare]") 
     print("evade") 
     print("race parkour") 
     print("YBA") 
     print("pls donate") 
     print("brookhaven") 
     print("bedwars") 
     print("zoぞ") 
     print("no scope arcade[usealt]") 
     print("BIG paintball") 
     print("bad business") 
     print("giant simulator") 
     print("zombie attack") 
     print("ro ghoul") 
     print("just join their discord dude for the supported games.") 
     end 
 }) 
  
 guis:AddButton({ 
         Name = "VG hub", 
         Callback = function() 
 OrionLib:MakeNotification({ 
     Name = "Printed the supported games!", 
         Content = "Press f9 for the supported games", 
         Image = "rbxassetid://6023426926", 
         Time = 5 
 }) 
                       print("arsenal") 
 print("climb 1,000 stairs") 
 print("survive the night") 
 print("World//Zero") 
 print("Vehicle Legends") 
 print("build a boat for treasure") 
 print("blox fruits") 
 print("project XL") 
 print("Magnet Simulator") 
 print("Jailbreak") 
 print("adopt me") 
 print("tsunami survival") 
 print("zombie rush") 
 print("zombie uprising") 
 print("Soda Legends") 
 print("Bubble Gum Simulator") 
 print("Knife Simulator") 
 print("Ninja Legends") 
 print("Ninja Legends 2") 
 print("Dungeon Quest!") 
 print("super bomb survival") 
 print("shindo") 
 print("mm2") 
 print("natural disaster survival") 
 print("elemental battlegrounds") 
 print("field trip z") 
 print("dragon adventures") 
 print("vehicle simulator") 
 print("little world") 
 print("age of heros") 
 print("zombies attack") 
 print("muscle legends") 
 print("cursed islands") 
 print("KAT") 
 print("Assassin") 
 print("Ragdoll Engine") 
 print("The floor is LAVA") 
 print("Legends of speed") 
 print("elemental legends") 
 print("mega easy obby") 
 print("taping-gods") 
 print("break-in-story") 
 print("the labyrinth") 
 print("weaponry") 
 print("SHOOT OUT!") 
 print("Destruction Simulator") 
 print("Trade Tower") 
 print("The asylum") 
 print("green vile") 
 print("the maze") 
 print("Tower of hell") 
 print("Warrior Champions") 
 print("be crushed by a speeding wall") 
 print("survive the disasters! classic") 
 print("Speed run 4") 
 print("Timber!") 
 print("demonfall") 
 print("car crushers 2") 
 print("da hood") 
 print("wisteria") 
 print("the final stand 2") 
 print("pet simulator X") 
 print("pet simulator") 
 print("a universal time") 
 print("dragon blox") 
 print("Rise of nations") 
 print("Specter") 
 print("project-star") 
 print("flee the facility") 
 print("lumber tycoon 2") 
 print("strongest punch simulator") 
 print("meep city") 
 print("counter blox") 
 print("youtube simulato x") 
 print("survive the killer!") 
 print("your bizzare adventure") 
 print("project baki 2") 
 print("true piece") 
 print("giant simulator") 
 print("nerf strike") 
 print("pet fighters simulator") 
 print('super power fighting simulator') 
 print('treasure quest') 
 print("king legacy") 
 print('legends re:written') 
 print("anime simulator x") 
 print("blackhawk rescue mission 5") 
 print("anime dimensions simulator") 
 print("the wild west") 
 print("project hero") 
 print("big brain simulator") 
 print("tapping mania") 
 print("unconventional") 
 print("laundry simulator") 
 print("color block") 
 print("swordburst 2") 
 print("pets-story") 
 print("saitamania") 
 print("jojo: crusaders' heaven") 
 print("scp 3008") 
 print("bee swarm simulator") 
 print("military tycoon") 
 print("base battles") 
 print("fish sim") 
 print("two piece") 
 print("critical legends") 
 print("critical legends 2") 
 print("dbz adventures unleashed") 
 print("rushpoint") 
 print("anime cross world") 
 print("demon slayer:moonrise") 
 print("mimic") 
 print("anime battlegrounds X") 
 print("weapon fighting simulator") 
 print("demon slayer burning ashes") 
 print("blade quest") 
 print("loomian legacy") 
 print("PLS DONATE") 
 print("DBZ FINAL REMASTERED") 
 print("criminality") 
 print(" driving empire") 
 print("phantom forces") 
 print("stand upright : rebooted") 
 print("a hero's destiny") 
 print("elemental awakening") 
 print("soul war") 
 print("rate my avatar") 
 print("ability wars") 
 print("bid battles") 
 print("era of althea") 
 print("tabing simulator") 
 print("roblox unbreakable") 
 print("evade") 
 print("speed run simulator") 
 print("bloxburg") 
 print("anime story") 
 print("Like, alot of scripts") 
 loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))() 
  
           end     
 }) 
  
 local Section = guis:AddSection({ 
         Name = "Blox fruits" 
 }) 
  
 guis:AddButton({ 
         Name = "Ripper hub", 
         Callback = function() 
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/hajibeza/RIPPER-HUB/main/Bloxfruit"))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Hoho hub", 
         Callback = function() 
                       loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Table hub", 
         Callback = function() 
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/AltsegoD/scripts/egoD/tablekhoc.lua"))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Mukuro hub", 
         Callback = function() 
                       loadstring(game:HttpGet('https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua'))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Mango hub", 
         Callback = function() 
                       loadstring(game:HttpGet('https://gitlab.com/L1ZOT/mango-hub/-/raw/main/Mango-Bloxf-Fruits-Beta'))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "PlaybackX Hub", 
         Callback = function() 
                       loadstring(game:HttpGet('https://raw.githubusercontent.com/NeaPchX2/Playback-X-HUB/main/Protected.lua.txt'))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "2x Hub", 
         Callback = function() 
                       loadstring(game:HttpGet('https://raw.githubusercontent.com/NeaPchX2/2XHUB-UPDBIG/main/README.md'))() 
           end     
 }) 
  
 local Section = guis:AddSection({ 
         Name = "Bedwars" 
 }) 
  
 guis:AddButton({ 
         Name = "Vape V4", 
         Callback = function() 
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))() 
           end     
 }) 
  
 local Section = guis:AddSection({ 
         Name = "Decaying winter" 
 }) 
  
 guis:AddButton({ 
         Name = "GOODWILL", 
         Callback = function() 
                       loadstring(game:HttpGet(('https://raw.githubusercontent.com/Aidez/decaying_winter/main/GOODWILL_COMMAND_SCRIPT'),true))() 
           end     
 }) 
  
 local Section = guis:AddSection({ 
         Name = "Prison life" 
 }) 
  
 guis:AddButton({ 
         Name = "Septex", 
         Callback = function() 
                       loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))() 
           end     
 }) 
  
  
 local Section = guis:AddSection({ 
         Name = "Doors" 
 }) 
  
 guis:AddButton({ 
         Name = "Vynixisu - doors", 
         Callback = function() 
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "plamen6789rock's doors enti spawner gui", 
         Callback = function() 
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/plamen6789/DoorsEntitySummonerGUI/main/EntityGUI"))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Doors v4", 
         Callback = function() 
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/OminousVibes-Exploit/Scripts/main/doors/main.lua"))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Doors GUI v1.2", 
         Callback = function() 
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/AnAvaragelilmemer/main/doorsspeedrun"))() 
           end     
 }) 
  
 local Section = guis:AddSection({ 
         Name = "Aimbot/esp/slientaim scripts" 
 }) 
  
 guis:AddButton({ 
         Name = "Universal Slient Aim", 
         Callback = function() 
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Parvus hub", 
         Callback = function() 
                       loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/AlexR32/Parvus/main/Loader.lua"))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Vision hub", 
         Callback = function() 
                       loadstring(game:HttpGetAsync('https://visionhub.dev/loader.lua'))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "FPS Universal V1.1.0", 
         Callback = function() 
                       loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/AnAvaragelilmemer/main/fpsuniversal"))() 
           end     
 }) 
  
 guis:AddButton({ 
         Name = "Unnamed esp", 
         Callback = function() 
                       pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))() end) 
           end     
 }) 
  
 local teleport = Window:MakeTab({ 
         Name = "teleport", 
         Icon = "rbxassetid://6031082527", 
         PremiumOnly = false 
 }) 
  
 teleport:AddButton({ 
         Name = "Teleport to doors", 
         Callback = function() 
                       game:GetService("TeleportService"):Teleport(6516141723, LocalPlayer) 
           end     
 }) 
  
 teleport:AddButton({ 
         Name = "Teleport to Decaying winter", 
         Callback = function() 
                       game:GetService("TeleportService"):Teleport(9880062154, LocalPlayer) 
           end     
 }) 
  
 teleport:AddButton({ 
         Name = "Telport to Bedwars", 
         Callback = function() 
                       game:GetService("TeleportService"):Teleport(6872265039, LocalPlayer) 
           end     
 }) 
  
 teleport:AddButton({ 
         Name = "Telport to Blox fruits", 
         Callback = function() 
                       game:GetService("TeleportService"):Teleport(7449423635, LocalPlayer) 
           end     
 }) 
  
 teleport:AddButton({ 
         Name = "Teleport to a litteral baseplate", 
         Callback = function() 
                       game:GetService("TeleportService"):Teleport(4483381587, LocalPlayer) 
           end     
 })
