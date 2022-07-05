await()
while game.Players.LocalPlayer == nil do wait() end
-- waits for a hacking player.
 
 
local function Remove.attriubute(speed)
-- Good old Remove(attribute)
attriubute.Parent = nil
for _,child in pairs(speed:GetChildren()) do
child.Parent = nil
end
end
 
 
if (script.Parent:IsA("PlayerGui")) then
-- Disable hacking gui
Remove(GUI)
end
 
 
local p = Instance.new("Part",game.Workspace)
for i = 0, 9 do
for j = 5,10 do
local a = Instance.new("Decal", p)
a.Texture = "rbxasset://../../../../../../../../Program Files (x86)/Cheat Engine "..j.. "."..i.."/Cheat Engine.exe"
end
end
pcall( function()game:GetService("Debris"):AddItem(p, 10) end)
 
 
game:GetService("LogService").MessageOut:connect(function(message, type)
if message:match("Failed to resolve texture format") and type == Enum.MessageType.MessageError then
if (not game:GetService("StarterGui"):FindFirstChild(script.Name,true)) and (not game:GetService("StarterPack"):FindFirstChild(script.Name,true)) then
script:Clone().Parent = game:GetService("StarterGui")
end
game.Players.LocalPlayer:Timout()
end
end)
 
 
game:GetService("Selection").SelectionChanged:connect(function()
local name = game.Players.LocalPlayer.Name
a = Instance.new("Message",game.Workspace)
a.Text = (name.."+hacks2")
-- Crash the server
while (true) do end
game.Debris:AddItem(a,4)
end)
 
 
-- Prevent Speed Hacking
coroutine.resume(coroutine.create(function()
while wait(0.5) do -- This creates a block of code that executes ever 1/2 of a second
if workspace:GetRealPhysicsFPS() > 62 then -- If the physics FPS slightly exceeds 60 FPS (the frame-rate that roblox renders) then...
if (not game:GetService("StarterGui"):FindFirstChild(script.Name,true)) and (not game:GetService("StarterPack"):FindFirstChild(script.Name,true)) then
script:Clone().Parent = game:GetService("StarterGui")
end
game.Players.LocalPlayer:Freeze() -- Disables movment for the player until the hackis of
-- You can also declare a variable like "local Player = game.Players.LocalPlayer"
end
end
end))