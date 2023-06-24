
  <h3 align="center">Pissware's ESP</h3>
  
  <table><tr><td><h3 align='center'>Notes:</h2></tr></td>

<tr><td>
This is a modified version of a ESP made by Sirius, Therefore I did not make it, I just modified it to make it a little better, and this is inspired by sense docs
</td></tr></table>

  <summary><h3>Loading the ESP</h3></summary>

The ESP is effortless to load. you can use the code below to run the ESP
  ```lua
  -- load the ESP
  local esp = loadstring(game:HttpGet('https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/Utility/ESP'))()
  -- Enable the ESP (THIS IS REQUIRED, you can put this anywhere but i recommend at the end at the script)
  esp:Load()
  -- Unload the ESP (not required)
  --esp:Unload()
  ```
</details>
<details>

  <summary><h3>Configurations</h3></summary>

  Heres the Default Configurations on the ESP, most settings will be disabled.
  ```lua
local esp = {
    instances = {},
    espCache = {},
    chamsCache = {},
    objectCache = {},
    conns = {},
    whitelist = {}, -- insert string that is the player's name you want to whitelist (turns esp color to whitelistColor in options)
    blacklist = {}, -- insert string that is the player's name you want to blacklist (removes player from esp)
    options = {
        enabled = false,
        minScaleFactorX = 1,
        maxScaleFactorX = 10,
        minScaleFactorY = 1,
        maxScaleFactorY = 10,
        scaleFactorX = 5,
        scaleFactorY = 6,
        boundingBox = false, -- WARNING | Significant Performance Decrease when true, Enabled when box is enabled.
        boundingBoxDescending = true,
        excludedPartNames = {},
        font = 2,
        fontSize = 13,
        limitDistance = false,
        maxDistance = 1000,
        visibleOnly = false,
        teamCheck = false,
        teamColor = false,
        fillColor = nil,
        whitelistColor = Color3.new(1, 0, 0),
        outOfViewArrows = false,
        outOfViewArrowsFilled = false,
        outOfViewArrowsSize = 25,
        outOfViewArrowsRadius = 100,
        outOfViewArrowsColor = Color3.new(1, 1, 1),
        outOfViewArrowsTransparency = 0.5,
        outOfViewArrowsOutline = false,
        outOfViewArrowsOutlineFilled = false,
        outOfViewArrowsOutlineColor = Color3.new(1, 1, 1),
        outOfViewArrowsOutlineTransparency = 1,
        names = false,
        nameTransparency = 1,
        nameColor = Color3.new(1, 1, 1),
        boxes = false,
        boxesTransparency = 1,
        boxesColor = Color3.new(1, 0, 0),
        boxFill = false,
        boxFillTransparency = 0.5,
        boxFillColor = Color3.new(1, 0, 0),
        healthBars = false,
        healthBarsSize = 1,
        healthBarsTransparency = 1,
        healthBarsColor = Color3.new(0, 1, 0),
        healthText = false,
        healthTextTransparency = 1,
        healthTextSuffix = "%",
        healthTextColor = Color3.new(1, 1, 1),
        distance = false,
        distanceTransparency = 1,
        distanceSuffix = " Studs",
        distanceColor = Color3.new(1, 1, 1),
        tracers = false,
        tracerTransparency = 1,
        tracerColor = Color3.new(1, 1, 1),
        tracerOrigin = "Bottom", -- Available [Mouse, Top, Bottom, Center]
        chams = false,
        chamsFillColor = Color3.new(1, 0, 0),
        chamsFillTransparency = 0.5,
        chamsOutlineColor = Color3.new(),
        chamsOutlineTransparency = 0
    },
};
  ```
</details>
<details>
  <summary><h3>Game specific functions</h3></summary>

  These are the game specific functions, you're required to modify these for games that use custom characters.
  ```lua
 function espLib.getTeam(player)
    local team = player.Team;
    return team, player.TeamColor.Color;
end

function espLib.getCharacter(player)
    local character = player.Character;
    return character, character and findFirstChild(character, "HumanoidRootPart");
end

function espLib.getHealth(player, character)
    local humanoid = findFirstChild(character, "Humanoid");

    if (humanoid) then
        return humanoid.Health, humanoid.MaxHealth;
    end

    return 100, 100;
end
  ```
</details>
<details>
  <summary><h3>Example of using the ESP</h3></summary>
 Remember when I said using the ESP is effortless, am here to give an example to make this more effortless
  
  ```lua
  local esp = loadstring(game:HttpGet('https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/Utility/ESP'))()
  esp:Load()
  esp.options.enabled = true
  esp.options.boundingBox = true
  esp.options.boxes = true
  esp.options.teamColor = true
  ```
</details>
