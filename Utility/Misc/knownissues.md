Here are basically known issues.
+ (PATCHED) Distance color not coloring
```
patched by doing some tweaking
```
+ (PATCHED) Attempt to index nil with HumanoidRootPart
```
basically it tries to find the HumanoidRootPart on a player that has no character.
This was fixed by using v.Character:WaitForChild("HumanoidRootPart"), i can sleep now.
```
