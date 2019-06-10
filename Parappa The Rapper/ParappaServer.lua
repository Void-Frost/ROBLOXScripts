--RUN ON THE SERVER
--Created by Void_Frost.
--Version 1.0 (newest version is always on my github www.github.com/Void-Frost)
--YOU MUST RUN THIS BEFORE RUNNING ParappaClient.lua ON YOUR CLIENT (Also on my github)

local remoteevent=Instance.new("RemoteEvent",game.ReplicatedStorage)
remoteevent.Name="ParappaEvent"
remoteevent.OnServerEvent:Connect(function(plyr,TEXT)
local char= game.Players:FindFirstChild(TEXT).Character
local bgui=Instance.new("BillboardGui",char)
local txt=Instance.new("TextLabel",bgui)
bgui.Size=UDim2.new(10,0,10,0)
bgui.StudsOffset=Vector3.new(0,2,0)
txt.Size=UDim2.new(1,0,1,0)
txt.BackgroundTransparency=1
txt.TextColor3=Color3.fromRGB(255, 255, 255)
txt.TextScaled=true
txt.Text="Pa rap pa The Rapper"
while wait() do
if char:FindFirstChildOfClass("Accessory") then
char:FindFirstChildOfClass("Accessory"):Destroy()
else
break
end
end
if char:FindFirstChild("UpperTorso") then
print(game.Players:GetPlayerFromCharacter(char).Name.." Is R15")
else
char.Head.face:Destroy()
char.Head.Transparency=1
char:FindFirstChild("Left Arm").Transparency=1
char:FindFirstChild("Left Leg").Transparency=1
char:FindFirstChild("Right Arm").Transparency=1
char:FindFirstChild("Right Leg").Transparency=1
char.Torso.Transparency=1
local parappa=Instance.new("Decal",char.Torso)
parappa.Texture="rbxassetid://171888674"
parappa.Face=Enum.NormalId.Front
local Music=Instance.new("Sound",char.Torso)
Music.Name="Driver Test"
Music.SoundId="rbxassetid://392384860"
Music.Volume=10
Music:Play()
end
end)
