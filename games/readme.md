## Pissware : Piss on others
The script hub that gurantees you satifaction after pissing on others
## so uh, what do i do here?
its not yet completed yet, i will add it to pissware : REMADE soon once its done.
## feature of pissware : Prison life
+ aimbot
+ teleport
+ inf ammo + 0 firerate
+ able to change teams
+ able to remove doors
+ ESP (coming soon!)
+ blatant (kill all, one tap punch, crash server)
## features of pissware : Snow plow simulator
+ infinite snow
+ 1 million rebirths
+ auto farm
# pissware : Prison life loadstring
```
local notifLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Notification%20Library/main.lua"))()

if game.PlaceId == 155615604 then
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/games/prison%20life.lua"))() 
else
    notifLib:CreatePromptNotif({
 TweenSpeed = 1,
 Title = "Hey there!",
 Text = "you seem lost, teleport to prison life?",
 Duration = 900,
 Callback = function(Value)
  game:GetService('TeleportService'):Teleport(155615604)
 end
})
end
```
## More will come soon, stay tuned!
