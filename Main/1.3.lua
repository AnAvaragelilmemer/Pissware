getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Pissware",
	LoadingTitle = "Welcome to Pissware : Remade.",
	LoadingSubtitle = "Made by APowderedMilk",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "piswarheru"
	},
	
})

local home = Window:CreateTab("Update Logs")
local Player = Window:CreateTab("LocalPlayer")
local Scripts = Window:CreateTab("Scripts")

local Paragraph = home:CreateParagraph({Title = "Pissware : remade", Content = "holy cow? pissware updating??? real, this is gonna be a update log ajhsdkahds"})
local Paragraph = home:CreateParagraph({Title = "returned", Content = "i have returned, to fix pissware, thanks for waiting for 3 days lol"})
local Paragraph = home:CreateParagraph({Title = "version 1.1", Content = "REMOVED AIMBOT/ESP, ADDED SCRIPTS FOR BLOX FRUITS, REMOVED REKTSKY."})
local Paragraph = home:CreateParagraph({Title = "version 1.2", Content = "I actually removed aimbot/esp, Added Orca, Domain x, Client information, Turtle spy, Simplity V2, VHub, Eclipse Hub, EZ hub, and more!"})

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
	Name = "Jump",
	Range = {0, 1000},
	Increment = 1,
	Suffix = "Jumppower",
	CurrentValue = 50,
	Flag = "Slider2", 
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    		
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


Scripts:CreateSection("universal")

local Button = Scripts:CreateButton({
	Name = "BetterBypasser",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/daddysyn/synergy/additional/betterbypasser",true))()
	end,
})

-- why did i even add 3 dexs
local Button = Scripts:CreateButton({
	Name = "Dex v4",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/AnAvaragelilmemer/main/dexv4"))()
	end,
})

local Button = Scripts:CreateButton({
	Name = "Dex V3",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua"))()
	end,
})

local Button = Scripts:CreateButton({
	Name = "awsome explorr",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/awesome-explorer/main/source.lua"))()
	end,
})

local Button = Scripts:CreateButton({
	Name = "infinite yield",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,
})

local Button = Scripts:CreateButton({
	Name = "cmd x",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
	end,
})

local Button = Scripts:CreateButton({
	Name = "Hitbox Expander",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/roburox/s1mple/main/scripts/hitboxexpand"))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "turtle spy",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/BDhSQqUU", true))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "orca",
	Callback = function()
		loadstring(
  game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua")
)()
        end,
})

local Button = Scripts:CreateButton({
	Name = "Domain x",
	Callback = function()
              loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source',true))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "simplity v2",
	Callback = function()
              loadstring(game:HttpGet('https://raw.githubusercontent.com/HeyGyt/simplityv2/main/main',true))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "Universal fe hub",
	Callback = function()
              loadstring(game:HttpGet("https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script"))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "xxHub",
	Callback = function()
              loadstring(game:HttpGet("https://raw.githubusercontent.com/roburox/s1mple/main/scripts/xxhub"))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "Client information",
	Callback = function()
	Rayfield:Notify({
    Title = "Notification",
    Content = "Hold tab to open the gui and release it to not make it visible",
    Duration = 5,
   })
		loadstring(game:HttpGet("https://soggy-ware.cf/Libs/ClientInformation.lua"))()
        end,
})


Scripts:CreateSection("Animation hubs")

local Button = Scripts:CreateButton({
	Name = "Pendulum hub v5",
	Callback = function()
              loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "ConvertWare",
	Callback = function()
	Rayfield:Notify({
    Title = "Notification",
    Content = "Left alt to open gui",
    Duration = 5,
   })
              loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/specowos/CONVERTWARE/main/UI/main.lua"))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "Syntax V3",
	Callback = function()
	Rayfield:Notify({
    Title = "Notification",
    Content = "The key is copied on clipboard",
    Duration = 5,
   })
              shared.colors = {
    Icons = Color3.fromRGB(0,255,149),
    Version = Color3.fromRGB(0,255,149),
    Text = Color3.fromRGB(255,255,255),
    Description = Color3.fromRGB(125,125,125),
    TabList = Color3.fromRGB(30,30,30),
    Scripts = Color3.fromRGB(30,30,30),
    Back = Color3.fromRGB(25,25,25),
    Glow = Color3.fromRGB(0,0,0),
}
shared.transparency = {
    Version = 0,
    Text = 0,
    Description = 0,
    Icons = 0,
    Back = 0,
    Glow = 0.5,
    TabList = 0,
    Scripts = 1,
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Memeboiyot/Syntax-V3-Free/main/Syntax%20v3", true))()
setclipboard("SyntaxV3Free")
        end,
})

Scripts:CreateSection("script hubs")

local Button = Scripts:CreateButton({
	Name = "Unfair Hub",
	Callback = function()
	Rayfield:Notify({
    Title = "Notification",
    Content = "Press F9 for the supported games",
    Duration = 5,
   })
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
    print("the unfair hub supported games")
    print("doors")
    print("pet sim x")
    print("da hood")
    print("custom duels")
    print("Kat")
    print("slap battles")
    print("strucid [use alt]")
    print("phantom forces")
    print("aimblox beta [rare]")
    print("evade")
    print("race parkour")
    print("YBA")
    print("pls donate")
    print("brookhaven")
    print("bedwars")
    print("zoぞ")
    print("no scope arcade[usealt]")
    print("BIG paintball")
    print("bad business")
    print("giant simulator")
    print("zombie attack")
    print("ro ghoul")
    print("just join their discord dude for the supported games.")
        end,
})
 
local Button = Scripts:CreateButton({
	Name = "Vg hub",
	Callback = function()
		Rayfield:Notify({
    Title = "Notification",
    Content = "Press F9 for the supported games",
    Duration = 5,
   })
print("arsenal")
print("climb 1,000 stairs")
print("survive the night")
print("World//Zero")
print("Vehicle Legends")
print("build a boat for treasure")
print("blox fruits")
print("project XL")
print("Magnet Simulator")
print("Jailbreak")
print("adopt me")
print("tsunami survival")
print("zombie rush")
print("zombie uprising")
print("Soda Legends")
print("Bubble Gum Simulator")
print("Knife Simulator")
print("Ninja Legends")
print("Ninja Legends 2")
print("Dungeon Quest!")
print("super bomb survival")
print("shindo")
print("mm2")
print("natural disaster survival")
print("elemental battlegrounds")
print("field trip z")
print("dragon adventures")
print("vehicle simulator")
print("little world")
print("age of heros")
print("zombies attack")
print("muscle legends")
print("cursed islands")
print("KAT")
print("Assassin")
print("Ragdoll Engine")
print("The floor is LAVA")
print("Legends of speed")
print("elemental legends")
print("mega easy obby")
print("taping-gods")
print("break-in-story")
print("the labyrinth")
print("weaponry")
print("SHOOT OUT!")
print("Destruction Simulator")
print("Trade Tower")
print("The asylum")
print("green vile")
print("the maze")
print("Tower of hell")
print("Warrior Champions")
print("be crushed by a speeding wall")
print("survive the disasters! classic")
print("Speed run 4")
print("Timber!")
print("demonfall")
print("car crushers 2")
print("da hood")
print("wisteria")
print("the final stand 2")
print("pet simulator X")
print("pet simulator")
print("a universal time")
print("dragon blox")
print("Rise of nations")
print("Specter")
print("project-star")
print("flee the facility")
print("lumber tycoon 2")
print("strongest punch simulator")
print("meep city")
print("counter blox")
print("youtube simulato x")
print("survive the killer!")
print("your bizzare adventure")
print("project baki 2")
print("true piece")
print("giant simulator")
print("nerf strike")
print("pet fighters simulator")
print('super power fighting simulator')
print('treasure quest')
print("king legacy")
print('legends re:written')
print("anime simulator x")
print("blackhawk rescue mission 5")
print("anime dimensions simulator")
print("the wild west")
print("project hero")
print("big brain simulator")
print("tapping mania")
print("unconventional")
print("laundry simulator")
print("color block")
print("swordburst 2")
print("pets-story")
print("saitamania")
print("jojo: crusaders' heaven")
print("scp 3008")
print("bee swarm simulator")
print("military tycoon")
print("base battles")
print("fish sim")
print("two piece")
print("critical legends")
print("critical legends 2")
print("dbz adventures unleashed")
print("rushpoint")
print("anime cross world")
print("demon slayer:moonrise")
print("mimic")
print("anime battlegrounds X")
print("weapon fighting simulator")
print("demon slayer burning ashes")
print("blade quest")
print("loomian legacy")
print("PLS DONATE")
print("DBZ FINAL REMASTERED")
print("criminality")
print(" driving empire")
print("phantom forces")
print("stand upright : rebooted")
print("a hero's destiny")
print("elemental awakening")
print("soul war")
print("rate my avatar")
print("ability wars")
print("bid battles")
print("era of althea")
print("tabing simulator")
print("roblox unbreakable")
print("evade")
print("speed run simulator")
print("bloxburg")
print("anime story")
loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()

        end,
})

local Button = Scripts:CreateButton({
	Name = "Quadra hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/notxkid/Quadra/main/loader.lua"))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "EZ hub",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "VHub",
	Callback = function()	
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Quan8008/V-Hub/Master/Launch-Screen.lua"))();
        end,
})

local Button = Scripts:CreateButton({
	Name = "Eclipse hub",
	Callback = function()
		local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
        end,
})

Scripts:CreateSection("Blox fruits")

local Button = Scripts:CreateButton({
	Name = "Ripper hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/hajibeza/RIPPER-HUB/main/Bloxfruit"))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "Hoho hub",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "Table hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/AltsegoD/scripts/egoD/tablekhoc.lua"))()
        end,
})

local Button = Scripts:CreateButton({
        Name = "Nub.xyz",
	Callback = function()
	        loadstring(game:HttpGet('https://rawscripts.net/raw/UPDATE-16-Blox-Fruits-Nub-V1-Hub-4583'))()
	end,
})

local Button = Scripts:CreateButton({
        Name = "playback x",
	Callback = function() 
               loadstring(game:HttpGet("https://raw.githubusercontent.com/NeaPchX2/Playback-X-HUB/main/Protected.lua.txt"))()
	end,
})

Scripts:CreateSection("bedwars")

local Button = Scripts:CreateButton({
	Name = "Vape V4",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
        end,
})

Scripts:CreateSection("Decaying winter")

local Button = Scripts:CreateButton({
	Name = "GOODWILL",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/Aidez/decaying_winter/main/GOODWILL_COMMAND_SCRIPT'),true))()
        end,
})

Scripts:CreateSection("Prison life")

local Button = Scripts:CreateButton({
	Name = "Septex",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
        end,
})

Scripts:CreateSection("Doors")

local Button = Scripts:CreateButton({
	Name = "Vynixius - doors",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "plamen6789rock's doors entity spawner gui",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/plamen6789/DoorsEntitySummonerGUI/main/EntityGUI"))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "Doors v4",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/OminousVibes-Exploit/Scripts/main/doors/main.lua"))()
        end,
})

Scripts:CreateSection("CHAOS")

local Button = Scripts:CreateButton({
	Name = "CHAOS script",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/1111-ssss/Chaos_Script/main/Chaos_script.txt'))()
        end,
})

Scripts:CreateSection("Flood escape 2")

local Button = Scripts:CreateButton({
	Name = "Flood gui v3 (a lil outdated but still good)",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ImMejor35/Flood-GUI/main/Flood%20GUI%20v3"))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "dothub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CF-Trail/random/main/.x.vr.e.hi/loader.lua"))()
        end,
})

Scripts:CreateSection("Aimbot/slientaim scripts")


local Button = Scripts:CreateButton({
	Name = "Universal Slient Aim",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "parvus hub",
	Callback = function()
		loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/AlexR32/Parvus/main/Loader.lua"))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "Vision hub",
	Callback = function()
		loadstring(game:HttpGetAsync('https://visionhub.dev/loader.lua'))()
        end,
})

local Button = Scripts:CreateButton({
	Name = "unnamed esp",
	Callback = function()
		pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))() end)
        end,
})

local Button = Scripts:CreateButton({
	Name = "Roware by scriptware",
	Callback = function()
	Rayfield:Notify({
    Title = "Notification",
    Content = "Copied to clipboard! https://script-ware.com/roware",
    Duration = 5,
   })
		setclipboard("https://script-ware.com/roware")
        end,
})







