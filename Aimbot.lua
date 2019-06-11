print(
[[Welcome to Aimbot!
^focus/playerName - focus on a specific player
^auto to enable - focusing for the nearest player
^enable - enable Aimbot
^disable - disable Aimbot]]
)
local function compare(mag, plr)
	local cf = plr.Character.Head.CFrame
	local cmag = (PlayersService.LocalPlayer.Character.Head.Position - cf.p).magnitude

	if cmag < mag then
		return cf
	end
end
game:GetService("RunService").RenderStepped:Connect(function()
	if enabled then
		if not plrSelected or not (plrSelected.Character or plrSelected.Character:FindFirstChild("Head")) then
			local cf
			local mag = math.huge
			for _, plr in pairs(game.Players:GetPlayers()) do
				if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("Head") then
					local s, pcf = pcall(compare, mag, plr)
					if s and pcf then
						cf = pcf
						print("overwritten with "..plr.Name)
					end
				end
			end

			if cf then
				workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p, cf.p)
			end
		else
			workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p, plrSelected.Character.Head.Position)
		end
	end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
	if msg:find("%^focus/") then
		print("Trying to get focused player")
		local name = msg:match("%^focus/(.*)$")
		local plr
		for _, cplr in pairs(game.Players:GetPlayers()) do
			if cplr.Name:lower():find(name:lower()) then
				plr = cplr
				print("Focused onto "..cplr.Name)
				break
			end
		end
		if not plr then
			print("Could not find "..name)
		else
			plrSelected = plr
			print("Focusing onto "..plr.Name)
		end
	elseif msg:find("%^auto") then
		plrSelected = nil
		print("Automatic focus.")
	elseif msg:find("%^enable") then
		enabled = true
		print("Aimbot enabled.")
	elseif msg:find("%^disable") then
		enabled = false
		print("Aimbot disabled")
	end
end)
--[[
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>
]]
