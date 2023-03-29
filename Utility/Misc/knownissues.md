Here are basically known issues.
+ Distance color not coloring
```
for some odd reason, distance color just wont work,
and it somehow got in the nametags esp color...
```
+ (PATCHED) Attempt to index nil with HumanoidRootPart
```
basically it tries to find the HumanoidRootPart on a player that has no character.
This was fixed by using v.Character:WaitForChild("HumanoidRootPart"), i can sleep now.
```
