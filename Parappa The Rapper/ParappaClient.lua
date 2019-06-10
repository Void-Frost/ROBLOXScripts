--RUN ON YOUR CLIENT
--Created by Void_Frost.
--Version 1.0 (newest version is always on my github www.github.com/Void-Frost)
--YOU MUST RUN THIS AFTER RUNNING ParappaServer.lua ON THE SERVER (Also on my github)
local plyr = game.Players.LocalPlayer
local UI = Instance.new("ScreenGui",plyr.PlayerGui)
UI.Name="Parappa"
local text=Instance.new("TextBox",UI)
text.Name="Player Name"
text.Size=UDim2.new(0.1,0,0.1,0)
text.TextScaled=true
local submit=Instance.new("TextButton",UI)
submit.Size=UDim2.new(0.1,0,0.1,0)
submit.Position=UDim2.new(0,0,0.1,0)
submit.MouseButton1Click:connect(function()
game.ReplicatedStorage.ParappaEvent:FireServer(text.Text)
end)
