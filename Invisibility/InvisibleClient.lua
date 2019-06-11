    
--RUN ON YOUR CLIENT
--Created by Void_Frost.
--Version 1.0 (newest version is always on my github www.github.com/Void-Frost)
--YOU MUST RUN THIS AFTER RUNNING InvisibleServer.lua ON THE SERVER (Also on my github)
local key="Q" --Change this to whatever key you want AS LONG AS IT IS A LETTER.
game:GetService("UserInputService").InputBegan:connect(function(input)
	local keyhit=game:GetService("UserInputService"):GetStringForKeyCode(input.KeyCode)
	if string.lower(keyhit)==string.lower(key) then
		game.ReplicatedStorage.InvisibleToPlayer:FireServer()
	end
end)
