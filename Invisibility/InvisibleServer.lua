--RUN ON THE SERVER
--Created by Void_Frost.
--Version 1.0 (newest version is always on my github www.github.com/Void-Frost)
--YOU MUST RUN THIS BEFORE RUNNING InvisibleClient.lua ON YOUR CLIENT (Also on my github)

local RemoteEvent=Instance.new("RemoteEvent",game.ReplicatedStorage)
RemoteEvent.Name="InvisibleToPlayer"
RemoteEvent.OnServerEvent:connect(function(player)
	local char=player.Character
	char.Head:FindFirstChild("face"):Destroy()
	while wait() do
	if char:FindFirstChildOfClass("Accessory") then
char:FindFirstChildOfClass("Accessory"):Destroy()
else
break
end
end
	local children=player.Character:GetChildren()
	for i=1,#children,1 do
		pcall(function()children[i].Transparency=1 end)
	end
end)
