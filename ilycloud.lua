--ILYWARE CLOUD
local set = setsimulationradius or set_simulation_radius
game.RunService.Stepped:Connect(function()
settings().Physics.AllowSleep = false
game:GetService("Players").LocalPlayer.ReplicationFocus = workspace
game:GetService("RunService").Heartbeat:wait()
game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.huge
set(math.huge, math.huge)
end)
plr = game.Players.LocalPlayer 
char = plr.Character
cloud = char["Toxic CloudAccessory"]
cloud.Name = "ca"
char["ca"].Handle.AccessoryWeld:Destroy() 
att0 = Instance.new("Attachment",char["ca"].Handle) 
att0.Orientation = Vector3.new(-90,0,0)
att0.Position = Vector3.new(0,1.5,-0.5) 
att1 = Instance.new("Attachment",char["Torso"]) 
ap = Instance.new("AlignPosition",char["ca"].Handle) 
ap.Attachment0 = att0
ap.Attachment1 = att1
ap.RigidityEnabled = true 
ao = Instance.new("AlignOrientation",char["ca"].Handle) 
ao.Attachment0 = att0
ao.Attachment1 = att1
ao.RigidityEnabled = true
local Char=game.Players.LocalPlayer.Character["Dummy"]
local Torso = Char.Torso
local RightShoulder=Torso['Right Shoulder'] 
local RightShoulderOrigin=RightShoulder.C0
local LeftShoulder=Torso['Left Shoulder'] 
local LeftShoulderOrigin=LeftShoulder.C0
local RightHip=Torso['Right Hip'] 
local RightHipOrigin=RightHip.C0
local LeftHip=Torso['Left Hip'] 
local LeftHipOrigin=LeftHip.C0
local RootJoint=Char.HumanoidRootPart.RootJoint 
local RootJointOrigin=RootJoint.C0
local humanoid = Char.Humanoid
pcall(function()
  Char.Animate:Destroy()
end)
for i,v in pairs(humanoid:GetPlayingAnimationTracks()) do
  v:Stop()
end
game:service"RunService".RenderStepped:connect(function()
  game:GetService('RunService').Heartbeat:wait()
  RightShoulder.C0=RightShoulder.C0:Lerp(RightShoulderOrigin*CFrame.new(0,0,0)*CFrame.Angles(math.rad(30),0,math.rad(150)-math.sin(tick()*2)/2),0.1)
  LeftShoulder.C0=LeftShoulder.C0:Lerp(LeftShoulderOrigin*CFrame.new(0,0,0)*CFrame.Angles(math.rad(30),0,math.rad(-150)-math.cos(tick()*2)/2),0.1)
  RightHip.C0=RightHip.C0:Lerp(RightHipOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(10)-math.sin(tick()*4.5)/3),0.1)
  LeftHip.C0=LeftHip.C0:Lerp(LeftHipOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(30)-math.cos(tick()*4.5)/3),0.1)
  RootJoint.C0=RootJoint.C0:Lerp(RootJointOrigin*CFrame.new(0,0,7-math.cos(tick()*2)*3)*CFrame.Angles(math.rad(80),0,0),0.1)
end)
