
local mouse = game.Players.LocalPlayer:GetMouse()
local Char=game.Players.LocalPlayer.Character["Dummy"]
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
local Torso=Char.Torso
local RightShoulder=Torso['Right Shoulder'] -- Right arm
local RightShoulderOrigin=RightShoulder.C0
local LeftShoulder=Torso['Left Shoulder'] -- Left arm
local LeftShoulderOrigin=LeftShoulder.C0
local RightHip=Torso['Right Hip'] -- Right leg
local RightHipOrigin=RightHip.C0
local LeftHip=Torso['Left Hip'] -- Left leg
local LeftHipOrigin=LeftHip.C0
local Neck=Torso.Neck -- Head
local NeckOrigin=Neck.C0
local RootJoint=Char.HumanoidRootPart.RootJoint -- Torso
local RootJointOrigin=RootJoint.C0
local ATTACK = false
local RootPart = Char.HumanoidRootPart
local VT = Vector3.new
local plr = game.Players.LocalPlayer 
local char = plr.Character
local Mouse = plr:GetMouse()

zen = char["MeshPartAccessory"]
zen.Name = "abc"
    
char["abc"].Handle.AccessoryWeld:Destroy() 
    
att0 = Instance.new("Attachment",char["abc"].Handle) 
att0.Orientation = Vector3.new(45,90,0)
att0.Position = Vector3.new(-3,0,-1.5) 
    
att1 = Instance.new("Attachment",char["Right Arm"]) 
    
ap = Instance.new("AlignPosition",char["abc"].Handle) 
ap.Attachment0 = att0
ap.Attachment1 = att1
ap.RigidityEnabled = true 
ao = Instance.new("AlignOrientation",char["abc"].Handle) 
ao.Attachment0 = att0
ao.Attachment1 = att1
ao.RigidityEnabled = true


pcall(function()
    Char.Animate:Destroy()
end)
for i,v in pairs(Humanoid:GetPlayingAnimationTracks()) do
    v:Stop()
end

function swait()
    game:GetService('RunService').Heartbeat:wait()
end
function Lunge()
    ATTACK = true
    for i = 0, 13, 0.2 / 0.5 do
        swait()
        att0.Position = Vector3.new(2.5,2.5,0) 
  RightShoulder.C0=RightShoulder.C0:Lerp(RightShoulderOrigin*CFrame.new(-0.5,0,0)*CFrame.Angles(0,0,math.rad(120)),0.1)
  LeftShoulder.C0=LeftShoulder.C0:Lerp(LeftShoulderOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(40)),0.1)
  RightHip.C0=RightHip.C0:Lerp(RightHipOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(5)),0.1)
  LeftHip.C0=LeftHip.C0:Lerp(LeftHipOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(5)),0.1)
  Neck.C0=Neck.C0:Lerp(NeckOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),0.1)
  RootJoint.C0=RootJoint.C0:Lerp(RootJointOrigin*CFrame.new(0,0,0)*CFrame.Angles(math.rad(30),0,0),0.1)
    end
    for i = 0, 10, 0.2 / 0.5 do
        swait()
        att0.Position = Vector3.new(2.5,2.5,0) 
  RightShoulder.C0=RightShoulder.C0:Lerp(RightShoulderOrigin*CFrame.new(1,0,0)*CFrame.Angles(0,0,math.rad(120)),0.1)
  LeftShoulder.C0=LeftShoulder.C0:Lerp(LeftShoulderOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(40)),0.1)
  RightHip.C0=RightHip.C0:Lerp(RightHipOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(5)),0.1)
  LeftHip.C0=LeftHip.C0:Lerp(LeftHipOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(5)),0.1)
  Neck.C0=Neck.C0:Lerp(NeckOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),0.1)
  RootJoint.C0=RootJoint.C0:Lerp(RootJointOrigin*CFrame.new(0,-30,0)*CFrame.Angles(math.rad(30),0,0),0.1)
    end
    ATTACK = false
end

mouse.Button1Down:connect(function()
if ATTACK == false then
Lunge()
end
end)

while Humanoid.Health > 0 do
    swait()
    local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
    local TORSOVERTICALVELOCITY = RootPart.Velocity.y
  if TORSOVELOCITY > 1 and ATTACK == false then -- walk anim
    swait()
    att0.Position = Vector3.new(2.5,2.5,0) 
  RightShoulder.C0=RightShoulder.C0:Lerp(RightShoulderOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,math.sin(tick()*1)/4,math.rad(170)-math.cos(tick()*2)/4),0.1)
  LeftShoulder.C0=LeftShoulder.C0:Lerp(LeftShoulderOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(40)),0.1)
  RightHip.C0=RightHip.C0:Lerp(RightHipOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.sin(tick()*4)/2),0.1)
  LeftHip.C0=LeftHip.C0:Lerp(LeftHipOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.sin(tick()*4)/2),0.1)
  Neck.C0=Neck.C0:Lerp(NeckOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(5)),0.1)
  RootJoint.C0=RootJoint.C0:Lerp(RootJointOrigin*CFrame.new(0,0,0)*CFrame.Angles(math.rad(15),0,0),0.1)
  elseif TORSOVELOCITY < 1 and ATTACK == false then -- no walk
    swait()
    game:GetService("TweenService"):create(att0,TweenInfo.new(.1,Enum.EasingStyle.Back),{Position=Vector3.new(-5+math.sin(tick()*2)*1,math.sin(tick()*2)*1,-1.5)}):play()
    RightShoulder.C0=RightShoulder.C0:Lerp(RightShoulderOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),0.1)
  LeftShoulder.C0=LeftShoulder.C0:Lerp(LeftShoulderOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),0.1)
  RightHip.C0=RightHip.C0:Lerp(RightHipOrigin*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-3),0,0),0.1)
  LeftHip.C0=LeftHip.C0:Lerp(LeftHipOrigin*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-3),0,0),0.1)
  Neck.C0=Neck.C0:Lerp(NeckOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),0.1)
  RootJoint.C0=RootJoint.C0:Lerp(RootJointOrigin*CFrame.new(0,0,0)*CFrame.Angles(0,0,0),0.1)
end
end
