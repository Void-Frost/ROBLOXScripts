--MUST BE RUN ON THE SERVER
--Flings every player (even you)
--Version 1.0 (newest version is always on my github www.github.com/Void-Frost)
--All credit goes to Void_Frost www.youtube.com/VoidFrost @VoidFrost1 on twitter.
while wait() do
game.Workspace.Gravity=-math.huge
local playertable=game.Players:GetChildren()
for i=1,#playertable,1 do
wait()
local velocity=Instance.new("BodyVelocity",playertable[i].Character.Head)
velocity.Velocity=Vector3.new(0,2e9,0)
playertable[i].Character:MoveTo(Vector3.new(math.random(),12,math.random()))
end
end
