--MUST BE RUN ON THE CLIENT
--Teleports ONLY YOU to wherever you click your mouse, only when the tool is equipped.
--Version 1.0 (newest version is always on my github www.github.com/Void-Frost)
--All credit goes to Void_Frost www.youtube.com/VoidFrost @VoidFrost1 on twitter.
local TeleportTool=Instance.new("Tool",game.Players.LocalPlayer.Backpack)
TeleportTool.Name="Teleport"
TeleportTool.RequiresHandle=false
TeleportTool.Equipped:connect(function(mouse)
mouse.Button1Down:connect(function()
game.Players.LocalPlayer.Character:MoveTo(mouse.Hit.p)
end)
end)
