

local function chat(msg)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg,"All")
end
local function kick(msg)
    if msg then
        game.Players.LocalPlayer:Kick(msg)
        else
            game.Players.LocalPlayer:Kick()
    end
end

local function exit()
    game:Shutdown()
end
local function executor()
local executor = identifyexecutor() or "P"
  return executor
end
