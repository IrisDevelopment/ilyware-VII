--[[
--gh 5621592566
--]]
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
if KeyPressed == "f" then
local unanchoredparts = {}
		local movers = {}
		local tog = true
		local move = false
		local Player = game:GetService("Players").LocalPlayer
		local Character = Player.Character
		local mov = {};
		local mov2 = {};

		local Hats = {Hat1  = Character:WaitForChild("Cursed Katana Accessory"), -- u can add multiple hats
       -- Hat2  = Character:WaitForChild("hat name 2 here"), -- and do the same it cant have the same name thats common sense
      -- u can make more hats and repeat the same thing
		}


		--Dont touch below

		for i,v in next, Hats do
			v.Handle.AccessoryWeld:Remove()
			for _,mesh in next, v:GetDescendants() do
				if mesh:IsA("Mesh") or mesh:IsA("Mesh") then -- change mesh to Specialmesh if u want to destroy the mesh
					mesh:Remove()
				end
			end
		end

		function ftp(str)
			local pt = {};
			if str ~= 'me' and str ~= 'random' then
				for i, v in pairs(game.Players:GetPlayers()) do
					if v.Name:lower():find(str:lower()) then
						table.insert(pt, v);
					end
				end
			elseif str == 'me' then
				table.insert(pt, plr);
			elseif str == 'random' then
				table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);
			end
			return pt;
		end

		local function align(i,v)
			local att0 = Instance.new("Attachment", i)
			att0.Position = Vector3.new(0,0,0)
			local att1 = Instance.new("Attachment", v)
			att1.Position = Vector3.new(0,0,0)
			local AP = Instance.new("AlignPosition", i)
			AP.Attachment0 = att0
			AP.Attachment1 = att1
			AP.RigidityEnabled = false
			AP.ReactionForceEnabled = false
			AP.ApplyAtCenterOfMass = false
			AP.MaxForce = 9999999
			AP.MaxVelocity = math.huge
			AP.Responsiveness = 65
			local AO = Instance.new("AlignOrientation", i)
			AO.Attachment0 = att0
			AO.Attachment1 = att1
			AO.ReactionTorqueEnabled = false
			AO.PrimaryAxisOnly = false
			AO.MaxTorque = 9999999
			AO.MaxAngularVelocity = math.huge
			AO.Responsiveness = 50
		end


		--Dont touch above

		align(Hats.Hat1.Handle, Character["Left Arm"])-- copy this and make a new Hat2 or what u named it
	--	align(Hats.Hat2.Handle, Character["Torso"])


		Hats.Hat1.Handle.Attachment.Rotation = Vector3.new(-90,-90,270) -- rotation of the hat if u want to add a hat u need to make a new rotation to
     --   Hats.Hat2.Handle.Attachment.Rotation = Vector3.new(-0,0,0) --  Hat2 rotation always change the name to the u added to the Hat2

		--Attachmment1 is the 1st hat u put in Hats at the top. it goes in order

		Character:WaitForChild("Left Arm"):FindFirstChild("Attachment").Name = "Attachment1" -- make a new attachment to
	    --Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment2" 
        Character:WaitForChild("Left Arm").Attachment1.Position = Vector3.new(0, -1, -1.7) -- normal value -- position of the hat
        -- the mid value is up or down it depends it goes down if u have a minus infront of it and up if u dont
		-- the last value is forwards or backwards if u put a minus infront of it it goes forward and if u remove the minus it goes backwards
		-- the first value is to the side if u dont have minus and to the other side if u have minus im bad at explaining lol
		--Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(-0, 0, -0) -- position of hat2
		-- Position or Rotation
end
end)

HumanDied = false

local CountSCIFIMOVIELOL = 1

function SCIFIMOVIELOL(Part0,Part1,Position,Angle)
	local AlignPos = Instance.new('AlignPosition', Part1); AlignPos.Name = "AliP_"..CountSCIFIMOVIELOL
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 5772000--67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1); AlignOri.Name = "AliO_"..CountSCIFIMOVIELOL
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 5772000
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name = "Ath_"..CountSCIFIMOVIELOL
	local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name = "Ath_"..CountSCIFIMOVIELOL
	AttachmentA.Orientation = Angle or Vector3.new(0,0,0)
	AttachmentA.Position = Position or Vector3.new(0,0,0)
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentA;
	AlignOri.Attachment0 = AttachmentB;
	CountSCIFIMOVIELOL = CountSCIFIMOVIELOL + 1
	return {AlignPos,AlignOri,AttachmentA,AttachmentB}
end	

if _G.netted ~= true then
	_G.netted = true
	coroutine.wrap(function()
		settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
		settings().Physics.AllowSleep = false
		game:GetService("RunService").RenderStepped:Connect(function()
			game:FindFirstChildOfClass("Players").LocalPlayer.MaximumSimulationRadius=math.pow(math.huge,math.huge)
			sethiddenproperty(game:FindFirstChildOfClass("Players").LocalPlayer,"SimulationRadius",math.huge*math.huge)
		end)
	end)()
end

game:FindFirstChildOfClass("Players").LocalPlayer["Character"].Archivable = true

local hatnameclone = {}

for _,v in next, game:FindFirstChildOfClass("Players").LocalPlayer["Character"]:GetChildren() do
	if v:IsA("Accessory") then
		if hatnameclone[v.Name] then
			if hatnameclone[v.Name] == "s" then
				hatnameclone[v.Name] = {}
			end
			table.insert(hatnameclone[v.Name],v)
		else
			hatnameclone[v.Name] = "s"
		end
	end
end

for _,v in pairs(hatnameclone) do
	if type(v) == "table" then
		local num = 1
		for _,w in pairs(v) do
			w.Name = w.Name..num
			num = num + 1
		end
	end
end

hatnameclone = nil

local DeadChar = game:FindFirstChildOfClass("Players").LocalPlayer.Character

local fldr = Instance.new("Folder",game:FindFirstChildOfClass("Players").LocalPlayer["Character"])
fldr.Name = "DMYF"
local CloneChar = DeadChar:Clone()
local ANIMATIONHERE

if CloneChar:FindFirstChild("Animate") then
	ANIMATIONHERE = CloneChar:FindFirstChild("Animate"):Clone()
	CloneChar:FindFirstChild("Animate"):Destroy()
end

if CloneChar:FindFirstChildOfClass("Folder") then CloneChar:FindFirstChildOfClass("Folder"):Destroy() end

if CloneChar.Torso:FindFirstChild("Neck") then
	local Clonessss = CloneChar.Torso:FindFirstChild("Neck"):Clone()
	Clonessss.Part0 = nil
	Clonessss.Part1 = DeadChar.Head
	Clonessss.Parent = DeadChar.Torso
end

CloneChar.Parent = fldr
CloneChar.HumanoidRootPart.CFrame = DeadChar.HumanoidRootPart.CFrame
CloneChar.Humanoid.BreakJointsOnDeath = false
CloneChar.Name = "non"
CloneChar.Humanoid.DisplayDistanceType = "None"

for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		local topacc = false
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
		v.Handle.Massless = true
		v.Handle.CanCollide = false
		if v.Handle:FindFirstChildOfClass("Attachment") then
			local ath__ = v.Handle:FindFirstChildOfClass("Attachment")
			if ath__.Name == "HatAttachment" or ath__.Name == "HairAttachment" or ath__.Name == "FaceFrontAttachment" or ath__.Name == "FaceCenterAttachment" then
				topacc = ath__.Name
			end
		end
		
        local bv = Instance.new("BodyVelocity",v.Handle)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			if topacc then
				local allthings = SCIFIMOVIELOL(v.Handle,DeadChar.Torso,Vector3.new(0,1.5,0)+ (DeadChar.Head[topacc].Position + (v.Handle[topacc].Position*-1)),Vector3.new(0,0,0))
				local normaltop = allthings[1].Attachment1
				local alipos = allthings[1]
				local alirot = allthings[2]
				local p0 = v.Handle
				local p1 = DeadChar.Head
				alipos.Parent = CloneChar:FindFirstChild(v.Name).Handle
				alirot.Parent = CloneChar:FindFirstChild(v.Name).Handle
				while true do
					game:GetService("RunService").RenderStepped:wait()
					if HumanDied then break end
					coroutine.wrap(function()
						if alipos.Attachment1 == normaltop then
							p0.CFrame = p0.CFrame:lerp((((DeadChar.Torso.CFrame * CFrame.new(0,1.5,0)) * p1[topacc].CFrame) * p0[topacc].CFrame:inverse()),1)
						else
							v.Handle.CFrame = v.Handle.CFrame:lerp(alipos.Attachment1.Parent.CFrame * CFrame.new(alipos.Attachment1.Position) * CFrame.Angles(math.rad(alipos.Attachment1.Rotation.X),math.rad(alipos.Attachment1.Rotation.Y),math.rad(alipos.Attachment1.Rotation.Z)),1)
						end
					end)()
				end
			else
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end)()
	end
end

local a = DeadChar.Torso
local b = DeadChar.HumanoidRootPart
local c = DeadChar.Humanoid
a.Parent = game:FindFirstChildOfClass("Workspace")
c.Parent = game:FindFirstChildOfClass("Workspace")
local told = a:Clone()
local told1 = c:Clone()
b["RootJoint"].Part0 = told
b["RootJoint"].Part1 = DeadChar.Head
a.Name = "torso"
a.Neck:Destroy()
c.Name = "Mizt Hub Best"
told.Parent = DeadChar
told1.Parent = DeadChar
DeadChar.PrimaryPart = told
told1.Health = 0
b:Destroy()
a.Parent = DeadChar
c.Parent = DeadChar
told:Destroy()
told1:Destroy()
a.Name = "Torso"

if CloneChar.Head:FindFirstChildOfClass("Decal") then CloneChar.Head:FindFirstChildOfClass("Decal").Transparency = 1 end
if DeadChar:FindFirstChild("Animate") then DeadChar:FindFirstChild("Animate"):Destroy() end

local Collider

function UnCollide()
    if HumanDied then Collider:Disconnect(); return end
    --[[for _,Parts in next, CloneChar:GetChildren() do
        if Parts:IsA("BasePart") then
            Parts.CanCollide = false 
        end 
    end]]
    for _,Parts in next, DeadChar:GetChildren() do
        if Parts:IsA("BasePart") then
        Parts.CanCollide = false
        end 
    end 
end

Collider = game:GetService("RunService").Stepped:Connect(UnCollide)

local resetBindable = Instance.new("BindableEvent")
resetBindable.Event:connect(function()
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)

	resetBindable:Destroy()
	HumanDied = true

    pcall(function()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = DeadChar
		DeadChar.Head:Destroy()
		DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
		if DeadChar:FindFirstChildOfClass("Folder") then DeadChar:FindFirstChildOfClass("Folder"):Destroy() end
	end)
end)

game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

coroutine.wrap(function()

    while true do

        game:GetService("RunService").RenderStepped:wait()

        if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChildOfClass("Humanoid") or CloneChar:FindFirstChildOfClass("Humanoid").Health <= 0 and not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChildOfClass("Humanoid") or DeadChar:FindFirstChildOfClass("Humanoid").Health <= 0 then 
            
	HumanDied = true
            pcall(function()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = DeadChar
				DeadChar.Head:Destroy()
				DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
				if DeadChar:FindFirstChildOfClass("Folder") then DeadChar:FindFirstChildOfClass("Folder"):Destroy() end
			end)
            if resetBindable then

                game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
                resetBindable:Destroy()

            end

            break
        end		
    end
end)()

SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"])
SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"])
SCIFIMOVIELOL(DeadChar["Torso"],CloneChar["Torso"])
SCIFIMOVIELOL(DeadChar["Left Arm"],CloneChar["Left Arm"])
SCIFIMOVIELOL(DeadChar["Right Arm"],CloneChar["Right Arm"])
SCIFIMOVIELOL(DeadChar["Left Leg"],CloneChar["Left Leg"])
SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"])

for _,v in pairs(DeadChar:GetChildren()) do

	if v:IsA("BasePart") and v.Name ~= "Head" then

		--[[local bv = Instance.new("BodyVelocity",v)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()

			while true do

				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				v.CFrame = CloneChar[v.Name].CFrame
			end

		end)()]]

	elseif v:IsA("BasePart") and v.Name == "Head" then

		local bv = Instance.new("BodyVelocity",v)
		bv.Velocity = Vector3.new(0,0,0)

		coroutine.wrap(function()

			while true do

				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				v.CFrame = DeadChar.Torso.CFrame * CFrame.new(0,1.5,0)

			end
		end)()
	end
end

for _,BodyParts in next, CloneChar:GetDescendants() do
if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
BodyParts.Transparency = 1 end end
game:GetService("RunService").RenderStepped:wait()
game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
game:FindFirstChildOfClass("Workspace"):FindFirstChildOfClass("Camera").CameraSubject = CloneChar.Humanoid

for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
		if v.Handle:FindFirstChildOfClass("AccessoryWeld") then v.Handle:FindFirstChildOfClass("AccessoryWeld"):Destroy() end
		if v.Handle:FindFirstChildOfClass("BodyBackAttachment") then v.Handle:FindFirstChildOfClass("BodyBackAttachment"):Destroy() end
	end
end

local Player = game:GetService("Players").LocalPlayer
local Char = Player.Character
local Humanoid = Char.Humanoid
Humanoid.WalkSpeed = 20
Humanoid.JumpPower = 50
Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = game.Players.LocalPlayer.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character.HumanoidRootPart
Torso = Character.Torso
Head = Character.Head
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart.RootJoint
Neck = Torso.Neck
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
Equipped = false

-------------------------------------------------------------------------

weld = function(parent, part0, part1, c0)
	local weld = it("Weld")
	weld.Parent = parent
	weld.Part0 = part0
	weld.Part1 = part1
    weld.C0 = c0
    return weld
end

function unanchor()
	if UNANCHOR == true then
		g = CharacterA:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

Animation_Speed = 1.8
Frame_Speed = 0.016666666666666666
local FORCERESET = false
Frame_Speed = 1 / 80 -- (1 / 60) OR (1 / 80)
local Speed = 25
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local HOLD = false
local Rooted = false
local SINE = 0
local SIZE = 1
local UserInputService = game:GetService("UserInputService")
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character:FindFirstChild("Animate")
local UNANCHOR = true

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		game:GetService("RunService").RenderStepped:wait()
	else
		for i = 1, NUMBER do
			game:GetService("RunService").RenderStepped:wait()
		end
	end
end

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
 
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
-- weldtest

--end
while true do
	Swait()
	if Character:FindFirstChildOfClass("Humanoid") == nil then
		Humanoid = IT("Humanoid",Character)
	end
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	
plr = game.Players.LocalPlayer

local mouse = plr:GetMouse()


mouse.KeyDown:connect(function(k)
    if k == " " and ATTACK == false and Equipped == false then
           ATTACK = true
        Equipped = true
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , -0 ,-0.3 - 0 * COS(SINE / 12)) * ANGLES(RAD(350), RAD(0), RAD(0)), 0.15 / 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.2 - 0 * COS(SINE / 12), 0) * ANGLES(RAD(160 + 0* COS(SINE / 12)), RAD(0), RAD(-45))* RIGHTSHOULDERC0,0.55 / 0.55)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 2 * COS(SINE / 12)), RAD(3), RAD(40 + 2 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55 / 0.55)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 5 * COS(SINE / 12)), RAD(3), RAD(-40 + 2 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / 0.55)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0 - 0 * COS(SINE / 12),-0.7) * ANGLES(RAD(-10), RAD(-80 + 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
		wait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , -0 ,0.2 - 0 * COS(SINE / 12)) * ANGLES(RAD(310), RAD(0), RAD(0)), 0.15 / 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.2 - 0 * COS(SINE / 12), 0) * ANGLES(RAD(140 + 0* COS(SINE / 12)), RAD(0), RAD(-45))* RIGHTSHOULDERC0,0.55 / 0.55)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 2 * COS(SINE / 12)), RAD(3), RAD(40 + 2 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55 / 0.55)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 5 * COS(SINE / 12)), RAD(3), RAD(-40 + 2 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / 0.55)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0 - 0 * COS(SINE / 12),-0.7) * ANGLES(RAD(-10), RAD(-80 + 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
        wait()
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , -0 ,0.7 - 0 * COS(SINE / 12)) * ANGLES(RAD(270), RAD(0), RAD(0)), 0.15 / 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 2 * COS(SINE / 12)), RAD(3), RAD(40 + 2 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55 / 0.55)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 5 * COS(SINE / 12)), RAD(3), RAD(-40 + 2 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / 0.55)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -0 - 0 * COS(SINE / 12), -0.7) * ANGLES(RAD(-10), RAD(80 - 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0 - 0 * COS(SINE / 12),-0.7) * ANGLES(RAD(-10), RAD(-80 + 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
        wait()
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , -0 ,1.2 - 0 * COS(SINE / 12)) * ANGLES(RAD(230), RAD(0), RAD(0)), 0.15 / 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 2 * COS(SINE / 12)), RAD(3), RAD(40 + 2 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55 / 0.55)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 5 * COS(SINE / 12)), RAD(3), RAD(-40 + 2 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / 0.55)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -0 - 0 * COS(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(80 - 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0 - 0 * COS(SINE / 12),-0.7) * ANGLES(RAD(0), RAD(-80 + 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
        wait()
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , -0 ,1.7 - 0 * COS(SINE / 12)) * ANGLES(RAD(190), RAD(0), RAD(0)), 0.15 / 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 2 * COS(SINE / 12)), RAD(3), RAD(40 + 2 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55 / 0.55)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 5 * COS(SINE / 12)), RAD(3), RAD(-40 + 2 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / 0.55)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -0 - 0 * COS(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(80 - 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0 - 0 * COS(SINE / 12),-0.7) * ANGLES(RAD(0), RAD(-80 + 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
        wait()
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , -0 ,2.2 - 0 * COS(SINE / 12)) * ANGLES(RAD(150), RAD(0), RAD(0)), 0.15 / 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 2 * COS(SINE / 12)), RAD(3), RAD(40 + 2 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55 / 0.55)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 5 * COS(SINE / 12)), RAD(3), RAD(-40 + 2 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / 0.55)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -0 - 0 * COS(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(80 - 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0 - 0 * COS(SINE / 12),-0.7) * ANGLES(RAD(0), RAD(-80 + 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
        wait()
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , -0 ,1.7 - 0 * COS(SINE / 12)) * ANGLES(RAD(110), RAD(0), RAD(0)), 0.15 / 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 2 * COS(SINE / 12)), RAD(3), RAD(40 + 2 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55 / 0.55)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 5 * COS(SINE / 12)), RAD(3), RAD(-40 + 2 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / 0.55)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -0 - 0 * COS(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(80 - 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0 - 0 * COS(SINE / 12),-0.7) * ANGLES(RAD(0), RAD(-80 + 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
        wait()
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , -0.4 ,1.2 - 0 * COS(SINE / 12)) * ANGLES(RAD(70), RAD(0), RAD(0)), 0.15 / 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 2 * COS(SINE / 12)), RAD(3), RAD(40 + 2 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55 / 0.55)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 5 * COS(SINE / 12)), RAD(3), RAD(-40 + 2 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / 0.55)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -0.2 - 0 * COS(SINE / 12), -0.7) * ANGLES(RAD(20), RAD(80 - 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.2 - 0 * COS(SINE / 12),-0.7) * ANGLES(RAD(20), RAD(-80 + 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
        wait()
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , -0.6 ,0.7 - 0 * COS(SINE / 12)) * ANGLES(RAD(40), RAD(0), RAD(0)), 0.15 / 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 2 * COS(SINE / 12)), RAD(3), RAD(40 + 2 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55 / 0.55)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 5 * COS(SINE / 12)), RAD(3), RAD(-40 + 2 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / 0.55)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -0.4 - 0 * COS(SINE / 12), -0) * ANGLES(RAD(40), RAD(80 - 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.4 - 0 * COS(SINE / 12),-0) * ANGLES(RAD(40), RAD(-80 + 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
        wait()
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , -0.2 ,0.2 - 0 * COS(SINE / 12)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.15 / 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 2 * COS(SINE / 12)), RAD(3), RAD(40 + 2 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55 / 0.55)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 5 * COS(SINE / 12)), RAD(3), RAD(-40 + 2 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / 0.55)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -0.8 - 0 * COS(SINE / 12), -0) * ANGLES(RAD(20), RAD(80 - 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0 * COS(SINE / 12),-0) * ANGLES(RAD(20), RAD(-80 + 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
        wait()
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,-0.3 - 0 * COS(SINE / 12)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.15 / 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 2 * COS(SINE / 12)), RAD(3), RAD(40 + 2 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55 / 0.55)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 5 * COS(SINE / 12)), RAD(3), RAD(-40 + 2 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / 0.55)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0 * COS(SINE / 12), -0) * ANGLES(RAD(-0), RAD(90 - 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0 * COS(SINE / 12),-0) * ANGLES(RAD(0), RAD(-90 + 0* COS(SINE / 12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / 0.55)
        wait()
        ATTACK = false
        Equipped = false
    end
end)
  mouse.KeyDown:connect(function(k)
    if k == "c" and ATTACK == false and Equipped == false then
        ATTACK = true
        Equipped = true
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-50)), 0.70 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(200 + 2 * COS(SINE / 10)), RAD(-0), RAD(20 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.70/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-10 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.70 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 0.70 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 0.70 / Animation_Speed)
		wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-100)), 0.70 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(200 + 2 * COS(SINE / 10)), RAD(-0), RAD(20 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.70/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-10 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.70 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-7), RAD(0), RAD(0)), 0.70 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-7), RAD(0), RAD(0)), 0.70 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-100)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-20 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-100)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-30 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-7), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-7), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-150)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-70 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-7), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-7), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-160)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-70 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-200)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-100 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-300)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-100 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-400)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-100 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-450)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-100 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-500)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-100 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
        ATTACK = false
        Equipped = false
    end
end)	
  mouse.KeyDown:connect(function(k)
    if k == "x" and ATTACK == false and Equipped == false then
        ATTACK = true
        Equipped = true
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(10), RAD(100), RAD(-50)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(200 + 2 * COS(SINE / 10)), RAD(-0), RAD(20 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-10 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5 +0.05 * COS(SINE / 12), -0) * ANGLES(RAD(30 - 2 * COS(SINE / 20)), RAD(80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, 0.5 +0.05 * COS(SINE / 12) , -0) * ANGLES(RAD(30 - 3 * COS(SINE / 24)), RAD(-80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
		wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,5 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(30), RAD(100), RAD(-100)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(200 + 2 * COS(SINE / 10)), RAD(-0), RAD(20 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-10 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5 +0.05 * COS(SINE / 12), -0) * ANGLES(RAD(30 - 2 * COS(SINE / 20)), RAD(80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, 0.5 +0.05 * COS(SINE / 12) , -0) * ANGLES(RAD(30 - 3 * COS(SINE / 24)), RAD(-80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,7 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(30), RAD(100), RAD(-100)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-20 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5 +0.05 * COS(SINE / 12), -0) * ANGLES(RAD(30 - 2 * COS(SINE / 20)), RAD(80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, 0.5 +0.05 * COS(SINE / 12) , -0) * ANGLES(RAD(30 - 3 * COS(SINE / 24)), RAD(-80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,8 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(40), RAD(100), RAD(-100)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-30 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5 +0.05 * COS(SINE / 12), -0) * ANGLES(RAD(30 - 2 * COS(SINE / 20)), RAD(80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, 0.5 +0.05 * COS(SINE / 12) , -0) * ANGLES(RAD(30 - 3 * COS(SINE / 24)), RAD(-80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,9 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(40), RAD(100), RAD(-150)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-70 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5 +0.05 * COS(SINE / 12), -0) * ANGLES(RAD(30 - 2 * COS(SINE / 20)), RAD(80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, 0.5 +0.05 * COS(SINE / 12) , -0) * ANGLES(RAD(30 - 3 * COS(SINE / 24)), RAD(-80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,9 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(40), RAD(100), RAD(-160)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-70 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5 +0.05 * COS(SINE / 12), -0) * ANGLES(RAD(30 - 2 * COS(SINE / 20)), RAD(80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, 0.5 +0.05 * COS(SINE / 12) , -0) * ANGLES(RAD(30 - 3 * COS(SINE / 24)), RAD(-80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,9 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(50), RAD(100), RAD(-200)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-100 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5 +0.05 * COS(SINE / 12), -0) * ANGLES(RAD(30 - 2 * COS(SINE / 20)), RAD(80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, 0.5 +0.05 * COS(SINE / 12) , -0) * ANGLES(RAD(30 - 3 * COS(SINE / 24)), RAD(-80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,8 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(50), RAD(100), RAD(-300)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-100 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5 +0.05 * COS(SINE / 12), -0) * ANGLES(RAD(30 - 2 * COS(SINE / 20)), RAD(80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, 0.5 +0.05 * COS(SINE / 12) , -0) * ANGLES(RAD(30 - 3 * COS(SINE / 24)), RAD(-80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,6 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(50), RAD(100), RAD(-400)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-100 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5 +0.05 * COS(SINE / 12), -0) * ANGLES(RAD(30 - 2 * COS(SINE / 20)), RAD(80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, 0.5 +0.05 * COS(SINE / 12) , -0) * ANGLES(RAD(30 - 3 * COS(SINE / 24)), RAD(-80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,5 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(200), RAD(-450)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-100 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5 +0.05 * COS(SINE / 12), -0) * ANGLES(RAD(30 - 2 * COS(SINE / 20)), RAD(80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, 0.5 +0.05 * COS(SINE / 12) , -0) * ANGLES(RAD(30 - 3 * COS(SINE / 24)), RAD(-80), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(300), RAD(-500)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-100 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
        ATTACK = false
        Equipped = false
    end
end)	
  mouse.KeyDown:connect(function(k)
    if k == "e" and ATTACK == false and Equipped == false then
        ATTACK = true
        Equipped = true
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-0)), 0.70 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(200 + 2 * COS(SINE / 10)), RAD(-0), RAD(20 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.70/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-10 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.70 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 0.70 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 0.70 / Animation_Speed)
		wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-50)), 0.70 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(200 + 2 * COS(SINE / 10)), RAD(-0), RAD(20 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.70/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-10 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.70 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-7), RAD(0), RAD(0)), 0.70 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-7), RAD(0), RAD(0)), 0.70 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-100)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-20 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-102)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-30 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-7), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-7), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-200)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-70 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-7), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-7), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-200)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-70 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(300)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-100 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-350)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-100 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-400)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-100 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(400)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-100 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0.1 - 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-400)), 0.90 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(30 + 2 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.90/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-100 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.90 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0.07 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0.07 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 0.90 / Animation_Speed)
        wait()
        ATTACK = false
        Equipped = false
    end
end)	

local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
local TORSOVERTICALVELOCITY = RootPart.Velocity.y
local NameClan = 0
local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 5, Character)
local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
	SINE = SINE + CHANGE
	if TORSOVERTICALVELOCITY > 1 and ATTACK == false and Equipped == false and HITFLOOR == nil then
		
		ANIM = "Jump"
                RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0 - 0 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
  	
	elseif TORSOVERTICALVELOCITY < -1 and ATTACK == false and Equipped == false and HITFLOOR == nil then
		
		ANIM = "Fall"
                RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0 - 0 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
  		
	elseif TORSOVELOCITY < 1 and ATTACK == false and Equipped == false and HITFLOOR ~= nil then
		
		ANIM = "Idle"
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 0.2 + 0.1 * COS(SINE / 35)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.4+ 0.1 * SIN(SINE / 35), -.0) * ANGLES(RAD(10), RAD(-10), RAD(15 + -1 * COS(SINE / 35)))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.4 + 0.1 * SIN(SINE / -35), .0) * ANGLES(RAD(-10), RAD(10), RAD(-15 + -1 * COS(SINE / -35))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.1 * COS(SINE / 35), 0) * ANGLES(RAD(-10), RAD(86), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.1 * COS(SINE / 35) , 0) * ANGLES(RAD(-10), RAD(-86), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15 / Animation_Speed)	elseif TORSOVELOCITY > 1 and Equipped == false and HITFLOOR ~= nil then
		
		ANIM = "Walk"
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0* 1, 0* 1, -0.175 + 0.025 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7* 1) * ANGLES(RAD(26 - 4.5 * COS(SINE / 3.5)), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(15 * COS(SINE / 7))), 0.15)
			RightHip.C0 = Clerp(RightHip.C0, CF(1* 1, -0.925 - 0.5 * COS(SINE / 7) / 2* 1, 0.7 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(-15 - 55 * COS(SINE / 7)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 7) / 2.5, RAD(90 - 0.1 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 0.1 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
	        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1* 1, -0.925 + 0.5 * COS(SINE / 7) / 2* 1, -0.7 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(-15 + 55 * COS(SINE / 7)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 7) / 2.5, RAD(-90 - 0.1 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 0.1 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.4+ 0.1 * SIN(SINE / 35), -.0) * ANGLES(RAD(10), RAD(-10), RAD(15 + -1 * COS(SINE / 35)))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.4 + 0.1 * SIN(SINE / -35), .0) * ANGLES(RAD(-10), RAD(10), RAD(-15 + -1 * COS(SINE / -35))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)	elseif TORSOVELOCITY > 1 and Equipped == false and HITFLOOR ~= nil then
  	end
end
