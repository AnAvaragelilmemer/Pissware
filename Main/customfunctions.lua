local p = {}

local function p.chat(msg)
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg,"All")
end
local function p.kick(msg)
    if msg then
        lplr:Kick(msg)
        else
            lplr:Kick()
    end
end

local function p.exit()
    game:Shutdown()
end
local function p.executor()
local executor = identifyexecutor() or "P"
  return executor
end
return p
