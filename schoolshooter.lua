local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.644067824, 0, 0.67578125, 0)
Frame.Size = UDim2.new(0, 369, 0, 156)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(25, 25, 25)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.050

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(-0.0347003154, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 222, 0, 33)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = "SCHOOL SHOOTER"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.0235610586, 0, 0.208974391, 0)
TextLabel_2.Size = UDim2.new(0, 167, 0, 37)
TextLabel_2.Font = Enum.Font.GothamSemibold
TextLabel_2.Text = "CLICK/HOLD : SHOOT"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 15.000

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.0235610586, 0, 0.506374657, 0)
TextLabel_3.Size = UDim2.new(0, 167, 0, 37)
TextLabel_3.Font = Enum.Font.GothamSemibold
TextLabel_3.Text = "L : PAUSE/PLAY MUSIC"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 15.000

TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(7.4505806e-09, 0, 0.746153891, 0)
TextLabel_4.Size = UDim2.new(0, 211, 0, 33)
TextLabel_4.Font = Enum.Font.Gotham
TextLabel_4.Text = "  Creds to Sukia for conversion."
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 12.000
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_5.Parent = Frame
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0.530336142, 0, 0.208974391, 0)
TextLabel_5.Size = UDim2.new(0, 167, 0, 37)
TextLabel_5.Font = Enum.Font.GothamSemibold
TextLabel_5.Text = "Q : SIT"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 15.000

TextLabel_6.Parent = Frame
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Position = UDim2.new(0.530336142, 0, 0.506374657, 0)
TextLabel_6.Size = UDim2.new(0, 167, 0, 37)
TextLabel_6.Font = Enum.Font.GothamSemibold
TextLabel_6.Text = "Enjoy!"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextSize = 15.000

wait(1/60)

loadstring(game:HttpGet("https://paste.ee/r/oPpQI"))()

workspace.FallenPartsDestroyHeight = 0/0




--// Shortcut Variables \\--
local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local CF = {N=CFrame.new,A=CFrame.Angles,fEA=CFrame.fromEulerAnglesXYZ}
local C3 = {tRGB= function(c3) return c3.r*255,c3.g*255,c3.b*255 end,N=Color3.new,RGB=Color3.fromRGB,HSV=Color3.fromHSV,tHSV=Color3.toHSV}
local V3 = {N=Vector3.new,FNI=Vector3.FromNormalId,A=Vector3.FromAxis}
local M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}
local R3 = {N=Region3.new}
local De = S.Debris
local WS = workspace
local Lght = S.Lighting
local RepS = S.ReplicatedStorage
local IN = Instance.new
local Plrs = S.Players

local plr = game.Players.LocalPlayer
local char = plr.Character["Dummy"]
local mouse = plr:GetMouse()
local hum = char:FindFirstChildOfClass'Humanoid'
local hed = char.Head
local root = char:FindFirstChild'HumanoidRootPart'
local rootj = root.RootJoint
local tors = char.Torso
local Muted = false
local ra = char["Right Arm"]
local la = char["Left Arm"]
local rl = char["Right Leg"]
local ll = char["Left Leg"]
local neck = tors["Neck"]
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
local maincolor = BrickColor.new("Institutional white")
local SONG = 2906078012
local VOLUME = 10
local PITCH = 1.42
local FAKENAME = "THE SCHOOL SHOOTER"
-------------------------------------------------------
--Start Whitelist and Invincibility--
-------------------------------------------------------	
ff = Instance.new("ForceField",char)
ff.Visible = false
hum.Name = "Humanoid"
hum.MaxHealth = math.huge
hum.Health = math.huge
hum.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
game:GetService("RunService"):BindToRenderStep("Base", 0, function()
	if hum.Health > 0.1 and hum.Health < math.huge then
		hum.MaxHealth = math.huge
		hum.Health = math.huge
	end
end)
-------------------------------------------------------
--End Whitelist and Invincibility--
-------------------------------------------------------	

-------------------------------------------------------
--Start Good Stuff--
-------------------------------------------------------
cam = game.Workspace.CurrentCamera
CF = CFrame.new
angles = CFrame.Angles
attack = false
Euler = CFrame.fromEulerAnglesXYZ
Rad = math.rad
IT = Instance.new
BrickC = BrickColor.new
Cos = math.cos
Acos = math.acos
Sin = math.sin
Asin = math.asin
Abs = math.abs
Mrandom = math.random
Floor = math.floor


-------------------------------------------------------
--End Good Stuff--
-------------------------------------------------------
necko = CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RSH, LSH = nil, nil 
RW = Instance.new("Weld") 
LW = Instance.new("Weld")
RH = tors["Right Hip"]
LH = tors["Left Hip"]
RSH = tors["Right Shoulder"] 
LSH = tors["Left Shoulder"] 
RSH.Parent = nil 
LSH.Parent = nil 
RW.Name = "RW"
RW.Part0 = tors 
RW.C0 = CF(1.5, 0.5, 0)
RW.C1 = CF(0, 0.5, 0) 
RW.Part1 = ra
RW.Parent = tors 
LW.Name = "LW"
LW.Part0 = tors 
LW.C0 = CF(-1.5, 0.5, 0)
LW.C1 = CF(0, 0.5, 0) 
LW.Part1 = la
LW.Parent = tors
Effects = {}
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
	local wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
newWeld(tors, ll, -0.5, -1, 0)
ll.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(tors, rl, 0.5, -1, 0)
rl.Weld.C1 = CFrame.new(0, 1, 0)
-------------------------------------------------------
--Start HeartBeat--
-------------------------------------------------------
ArtificialHB = Instance.new("BindableEvent")
ArtificialHB.Name = "Heartbeat"

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false


lastframe = tick()
ArtificialHB:Fire()


game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				ArtificialHB:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)
-------------------------------------------------------
--End HeartBeat--
-------------------------------------------------------

-------------------------------------------------------
--Start Important Functions--
-------------------------------------------------------
function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end
function thread(f)
	coroutine.resume(coroutine.create(f))
end
function clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
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
		if m00 < m11 then
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
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
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
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1 / Sin(theta)
			startInterp = Sin((1 - t) * theta) * invSinTheta
			finishInterp = Sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = math.acos(-cosTheta)
		local invSinTheta = 1 / Sin(theta)
		startInterp = Sin((t - 1) * theta) * invSinTheta
		finishInterp = Sin(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end

local Create = LoadLibrary("RbxUtility").Create

-------------------------------------------------------
--Start Damage Function--
-------------------------------------------------------

-------------------------------------------------------
--End Damage Function--
-------------------------------------------------------

-------------------------------------------------------
--Start Damage Function Customization--
-------------------------------------------------------
function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui"){
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		Font = "Arcade",
		TextColor3 = Color3.new(0,0,0),
		TextScaled = true,
		TextStrokeColor3 = Color3.new(1,0,0),
		Parent = BillboardGui,
	}
	game.Debris:AddItem(EffectPart, (Time))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end
local baseSound = Instance.new("Sound")
function Sound(parent,id,pitch,volume,looped,effect,autoPlay)
	local Sound = baseSound:Clone()
	Sound.SoundId = "rbxassetid://".. tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(autoPlay)then
		coroutine.wrap(function()
			repeat wait() until Sound.IsLoaded
			Sound.Playing = autoPlay or false
		end)()
	end
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			Sound:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent =parent or tors
	return Sound
end

function Chat(text)
	if(char:FindFirstChild'ChatGUI')then char.ChatGUI:destroy() end
	local BBG = NewInstance("BillboardGui",char,{Name='ChatGUI',Size=UDim2.new(0,100,0,40),StudsOffset=V3.N(0,2,0),Adornee=hed})
	local Txt = NewInstance("TextLabel",BBG,{Text = "",BackgroundTransparency=1,TextColor3=Color3.new(1,1,1),BorderSizePixel=0,Font=Enum.Font.SourceSansBold,TextSize=30,TextStrokeTransparency=0.7,TextStrokeColor3=Color3.new(0,0,0),Size=UDim2.new(1,0,.5,0)})
	local SND = Sound(BBG,4724428597,M.RNG(9,11)/10,100,false,false,true)
	for i = 1, #text do
		delay(i/15, function()
			local SSND = SND:Clone()
			SSND.Pitch = M.RNG(9,11)/10
			SSND.Volume = 1
			SSND.EmitterSize = 25
			SSND.Parent = BBG
			SSND:Play()
			Txt.Text = text:sub(1,i)
		end)
	end
	delay((#text/30)+5, function()
		for i = 0, 1, .025 do
			Txt.TextTransparency=i
			Txt.TextStrokeTransparency=i
			wait()
		end
		BBG:destroy()
	end)
end

plr.Chatted:Connect(function(message)
	if message:sub(1,3) == "/e " then
		if message:sub(4,8) == "play/" then
			SONG = message:sub(9)
			VOLUME = 1
			PITCH = 1
		elseif message:sub(4,7) == "vol/" then
			VOLUME = message:sub(8)
		elseif message:sub(4,9) == "pitch/" then
			PITCH = message:sub(10)
		elseif message:sub(4,8) == "name/" then
			FAKENAME = message:sub(9)
		else
			Chat(message:sub(4))
		end
	end
end)

-------------------------------------------------------
--Radio Thing--
-------------------------------------------------------
-- removed

-------------------------------------------------------
--End Damage Function Customization--
-------------------------------------------------------

function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Head")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if magni >= mag and c.Name ~= plr.Name then
					-- Damage(head, head, mindam, maxdam, knock, Type, root, 0.1, "http://www.roblox.com/asset/?id=0", 1.2)
				end
			end
		end
	end
end


CFuncs = {
	Part = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part")({
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material
			})
			RemoveOutlines(Part)
			return Part
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Weld = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld")({
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1
			})
			return Weld
		end
	},
	Sound = {
		Create = function(id, par, vol, pit)
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound")({
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace
				})
				wait()
				S:play()
				game:GetService("Debris"):AddItem(S, 6)
			end))
		end
	},
	ParticleEmitter = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter")({
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread
			})
			return fp
		end
	}
}
function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part")({
		formFactor = FormFactor,
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material
	})
	RemoveOutlines(Part)
	return Part
end
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh)({
		Parent = Part,
		Offset = OffSet,
		Scale = Scale
	})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld")({
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1
	})
	return Weld
end


-------------------------------------------------------
--Start Effect Function--
-------------------------------------------------------
EffectModel = Instance.new("Model", char)
Effects = {
	Block = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			if Type == 1 or Type == nil then
				table.insert(Effects, {
					prt,
					"Block1",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			elseif Type == 2 then
				table.insert(Effects, {
					prt,
					"Block2",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			else
				table.insert(Effects, {
					prt,
					"Block3",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		end
	},
	Sphere = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	},
	Cylinder = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	},
	Wave = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1 / 60, y1 / 60, z1 / 60))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3 / 60,
				y3 / 60,
				z3 / 60,
				msh
			})
		end
	},
	Ring = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	},
	Break = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			local num = math.random(10, 50) / 1000
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Shatter",
				num,
				prt.CFrame,
				math.random() - math.random(),
				0,
				math.random(50, 100) / 100
			})
		end
	},
	Spiral = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://1051557", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	},
	Push = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://437347603", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	}
}
function part(formfactor ,parent, reflectance, transparency, brickcolor, name, size)
	local fp = IT("Part")
	fp.formFactor = formfactor 
	fp.Parent = parent
	fp.Reflectance = reflectance
	fp.Transparency = transparency
	fp.CanCollide = false 
	fp.Locked = true
	fp.BrickColor = brickcolor
	fp.Name = name
	fp.Size = size
	fp.Position = tors.Position 
	RemoveOutlines(fp)
	fp.Material = "SmoothPlastic"
	fp:BreakJoints()
	return fp 
end 

function mesh(Mesh,part,meshtype,meshid,offset,scale)
	local mesh = IT(Mesh) 
	mesh.Parent = part
	if Mesh == "SpecialMesh" then
		mesh.MeshType = meshtype
		if meshid ~= "nil" then
			mesh.MeshId = "http://www.roblox.com/asset/?id="..meshid
		end
	end
	mesh.Offset = offset
	mesh.Scale = scale
	return mesh
end

function Magic(bonuspeed, type, pos, scale, value, color, MType)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = MType
	rngm.Scale = scale
	local scaler2 = 1
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, scaler2 * bonuspeed)
		end
		rng:Destroy()
	end))
end

function Eviscerate(dude)
	if dude.Name ~= char then
		local bgf = IT("BodyGyro", dude.Head)
		bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
		local val = IT("BoolValue", dude)
		val.Name = "IsHit"
		local ds = coroutine.wrap(function()
			dude:WaitForChild("Head"):BreakJoints()
			wait(0.5)
			target = nil
			coroutine.resume(coroutine.create(function()
				for i, v in pairs(dude:GetChildren()) do
					if v:IsA("Accessory") then
						v:Destroy()
					end
					if v:IsA("Humanoid") then
						v:Destroy()
					end
					if v:IsA("CharacterMesh") then
						v:Destroy()
					end
					if v:IsA("Model") then
						v:Destroy()
					end
					if v:IsA("Part") or v:IsA("MeshPart") then
						for x, o in pairs(v:GetChildren()) do
							if o:IsA("Decal") then
								o:Destroy()
							end
						end
						coroutine.resume(coroutine.create(function()
							v.Material = "Neon"
							v.CanCollide = false
							local PartEmmit1 = IT("ParticleEmitter", v)
							PartEmmit1.LightEmission = 1
							PartEmmit1.Texture = "rbxassetid://284205403"
							PartEmmit1.Color = ColorSequence.new(maincolor.Color)
							PartEmmit1.Rate = 150
							PartEmmit1.Lifetime = NumberRange.new(1)
							PartEmmit1.Size = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 0.75, 0),
								NumberSequenceKeypoint.new(1, 0, 0)
							})
							PartEmmit1.Transparency = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 0, 0),
								NumberSequenceKeypoint.new(1, 1, 0)
							})
							PartEmmit1.Speed = NumberRange.new(0, 0)
							PartEmmit1.VelocitySpread = 30000
							PartEmmit1.Rotation = NumberRange.new(-500, 500)
							PartEmmit1.RotSpeed = NumberRange.new(-500, 500)
							local BodPoss = IT("BodyPosition", v)
							BodPoss.P = 3000
							BodPoss.D = 1000
							BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
							BodPoss.position = v.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
							v.Color = maincolor.Color
							coroutine.resume(coroutine.create(function()
								for i = 0, 49 do
									swait(1)
									v.Transparency = v.Transparency + 0.08
								end
								wait(0.5)
								PartEmmit1.Enabled = false
								wait(3)
								v:Destroy()
								dude:Destroy()
							end))
						end))
					end
				end
			end))
		end)
		ds()
	end
end

function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v:findFirstChild("Head") and v ~= char and Distance >= (v.Head.Position - Position).magnitude then
			table.insert(List, v)
		end
	end
	return List
end

function Aura(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos, MType)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector * outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = MType
	rngm.Scale = Vector3.new(x1, y1, z1)
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			speeder = speeder - 0.01 * FastSpeed * bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
		end
		rng:Destroy()
	end))
end

function SoulSteal(dude)
	if dude.Name ~= char then
		local bgf = IT("BodyGyro", dude.Head)
		bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
		local val = IT("BoolValue", dude)
		val.Name = "IsHit"
		local torso = (dude:FindFirstChild'Head' or dude:FindFirstChild'Torso' or dude:FindFirstChild'UpperTorso' or dude:FindFirstChild'LowerTorso' or dude:FindFirstChild'HumanoidRootPart')
		local soulst = coroutine.wrap(function()
			local soul = Instance.new("Part",dude)
			soul.Size = Vector3.new(1,1,1)
			soul.CanCollide = false
			soul.Anchored = false
			soul.Position = torso.Position
			soul.Transparency = 1
			local PartEmmit1 = IT("ParticleEmitter", soul)
			PartEmmit1.LightEmission = 1
			PartEmmit1.Texture = "rbxassetid://569507414"
			PartEmmit1.Color = ColorSequence.new(maincolor.Color)
			PartEmmit1.Rate = 250
			PartEmmit1.Lifetime = NumberRange.new(1.6)
			PartEmmit1.Size = NumberSequence.new({
				NumberSequenceKeypoint.new(0, 1, 0),
				NumberSequenceKeypoint.new(1, 0, 0)
			})
			PartEmmit1.Transparency = NumberSequence.new({
				NumberSequenceKeypoint.new(0, 0, 0),
				NumberSequenceKeypoint.new(1, 1, 0)
			})
			PartEmmit1.Speed = NumberRange.new(0, 0)
			PartEmmit1.VelocitySpread = 30000
			PartEmmit1.Rotation = NumberRange.new(-360, 360)
			PartEmmit1.RotSpeed = NumberRange.new(-360, 360)
			local BodPoss = IT("BodyPosition", soul)
			BodPoss.P = 3000
			BodPoss.D = 1000
			BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
			BodPoss.position = torso.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
			wait(1.6)
			soul.Touched:connect(function(hit)
				if hit.Parent == char then
					soul:Destroy()
				end
			end)
			wait(1.2)
			while soul do
				swait()
				PartEmmit1.Color = ColorSequence.new(maincolor.Color)
				BodPoss.Position = tors.Position
			end
		end)
		soulst()
	end
end
function FaceMouse()
	local	Cam = workspace.CurrentCamera
	return {
		CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
		Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
	}
end
Effects = {
	Block = function(cf,partsize,meshstart,meshadd,matr,colour,spin,inverse,factor)
		local p = Instance.new("Part",EffectModel)
		p.BrickColor = BrickColor.new(colour)
		p.Size = partsize
		p.Anchored = true
		p.CanCollide = false
		p.Material = matr
		p.CFrame = cf
		if inverse == true then
			p.Transparency = 1
		else
			p.Transparency = 0
		end
		local m = Instance.new("BlockMesh",p)
		m.Scale = meshstart
		coroutine.wrap(function()
			for i = 0, 1, factor do
				swait()
				if inverse == true then
					p.Transparency = 1-i
				else
					p.Transparency = i
				end
				m.Scale = m.Scale + meshadd
				if spin == true then
					p.CFrame = p.CFrame * CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
				end
			end
			p:Destroy()
		end)()
		return p
	end,
	Sphere = function(cf,partsize,meshstart,meshadd,matr,colour,inverse,factor)
		local p = Instance.new("Part",EffectModel)
		p.BrickColor = BrickColor.new(colour)
		p.Size = partsize
		p.Anchored = true
		p.CanCollide = false
		p.Material = matr
		p.CFrame = cf
		if inverse == true then
			p.Transparency = 1
		else
			p.Transparency = 0
		end
		local m = Instance.new("SpecialMesh",p)
		m.MeshType = "Sphere"
		m.Scale = meshstart
		coroutine.wrap(function()
			for i=0,1,factor do
				swait()
				if inverse == true then
					p.Transparency = 1-i
				else
					p.Transparency = i
				end
				m.Scale = m.Scale + meshadd
			end
			p:Destroy()
		end)()
		return p
	end,

	Cylinder = function(cf,partsize,meshstart,meshadd,matr,colour,inverse,factor)
		local p = Instance.new("Part",EffectModel)
		p.BrickColor = BrickColor.new(colour)
		p.Size = partsize
		p.Anchored = true
		p.CanCollide = false
		p.Material = matr
		p.CFrame = cf
		if inverse == true then
			p.Transparency = 1
		else
			p.Transparency = 0
		end
		local m = Instance.new("CylinderMesh",p)
		m.Scale = meshstart
		coroutine.wrap(function()
			for i=0,1,factor do
				swait()
				if inverse == true then
					p.Transparency = 1-i
				else
					p.Transparency = i
				end
				m.Scale = m.Scale + meshadd
			end
			p:Destroy()
		end)()
		return p
	end,

	Wave = function(cf,meshstart,meshadd,colour,spin,inverse,factor)
		local p = Instance.new("Part",EffectModel)
		p.BrickColor = BrickColor.new(colour)
		p.Size = Vector3.new()
		p.Anchored = true
		p.CanCollide = false
		p.CFrame = cf
		if inverse == true then
			p.Transparency = 1
		else
			p.Transparency = 0
		end
		local m = Instance.new("SpecialMesh",p)
		m.MeshId = "rbxassetid://20329976"
		m.Scale = meshstart
		coroutine.wrap(function()
			for i=0,1,factor do
				swait()
				if inverse == true then
					p.Transparency = 1-i
				else
					p.Transparency = i
				end
				m.Scale = m.Scale + meshadd
				p.CFrame = p.CFrame * CFrame.Angles(0,math.rad(spin),0)
			end
			p:Destroy()
		end)()
		return p
	end,

	Ring = function(cf,meshstart,meshadd,colour,inverse,factor)
		local p = Instance.new("Part",EffectModel)
		p.BrickColor = BrickColor.new(colour)
		p.Size = Vector3.new()
		p.Anchored = true
		p.CanCollide = false
		p.CFrame = cf
		if inverse == true then
			p.Transparency = 1
		else
			p.Transparency = 0
		end
		local m = Instance.new("SpecialMesh",p)
		m.MeshId = "rbxassetid://3270017"
		m.Scale = meshstart
		coroutine.wrap(function()
			for i=0,1,factor do
				swait()
				if inverse == true then
					p.Transparency = 1-i
				else
					p.Transparency = i
				end
				m.Scale = m.Scale + meshadd
			end
			p:Destroy()
		end)()
		return p
	end,

	Meshed = function(cf,meshstart,meshadd,colour,meshid,textid,spin,inverse,factor)
		local p = Instance.new("Part",EffectModel)
		p.BrickColor = BrickColor.new(colour)
		p.Size = Vector3.new()
		p.Anchored = true
		p.CanCollide = false
		p.CFrame = cf
		if inverse == true then
			p.Transparency = 1
		else
			p.Transparency = 0
		end
		local m = Instance.new("SpecialMesh",p)
		m.MeshId = meshid
		m.TextureId = textid
		m.Scale = meshstart
		coroutine.wrap(function()
			for i=0,1,factor do
				swait()
				if inverse == true then
					p.Transparency = 1-i
				else
					p.Transparency = i
				end
				m.Scale = m.Scale + meshadd
				p.CFrame = p.CFrame * CFrame.Angles(0,math.rad(spin),0)
			end
			p:Destroy()
		end)()
		return p
	end,

	Explode = function(cf,partsize,meshstart,meshadd,matr,colour,move,inverse,factor)
		local p = Instance.new("Part",EffectModel)
		p.BrickColor = BrickColor.new(colour)
		p.Size = partsize
		p.Anchored = true
		p.CanCollide = false
		p.Material = matr
		p.CFrame = cf * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
		if inverse == true then
			p.Transparency = 1
		else
			p.Transparency = 0
		end
		local m = Instance.new("SpecialMesh",p)
		m.MeshType = "Sphere"
		m.Scale = meshstart
		coroutine.wrap(function()
			for i=0,1,factor do
				swait()
				if inverse == true then
					p.Transparency = 1-i
				else
					p.Transparency = i
				end
				m.Scale = m.Scale + meshadd
				p.CFrame = p.CFrame * CFrame.new(0,move,0)
			end
			p:Destroy()
		end)()
		return p
	end,

}
-------------------------------------------------------
--End Effect Function--
-------------------------------------------------------
function Cso(ID, PARENT, VOLUME, PITCH)
	local NSound = nil
	coroutine.resume(coroutine.create(function()
		NSound = IT("Sound", PARENT)
		NSound.Volume = VOLUME
		NSound.Pitch = PITCH
		NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
		swait()
		NSound:play()
		game:GetService("Debris"):AddItem(NSound, 10)
	end))
	return NSound
end
function CamShake(Length, Intensity)
	coroutine.resume(coroutine.create(function()
		local intensity = 1 * Intensity
		local rotM = 0.01 * Intensity
		for i = 0, Length, 0.1 do
			swait()
			intensity = intensity - 0.05 * Intensity / Length
			rotM = rotM - 5.0E-4 * Intensity / Length
			hum.CameraOffset = Vector3.new(Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)))
			cam.CFrame = cam.CFrame * CF(Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity))) * Euler(Rad(Mrandom(-intensity, intensity)) * rotM, Rad(Mrandom(-intensity, intensity)) * rotM, Rad(Mrandom(-intensity, intensity)) * rotM)
		end
		hum.CameraOffset = Vector3.new(0, 0, 0)
	end))
end
NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance)
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end
function New(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
Uzi = New("Model", char, "Uzi", {})
Handle = New("Part", Uzi, "Handle", {
	BrickColor = BrickColor.new("Black"),
	Transparency = 1,
	Transparency = 1,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.303939581, 0.303939581, 0.303939581),
	CFrame = CFrame.new(-63.9497833, 3.39759564, 8.0905323, -0.999997377, -1.38907907E-9, 5.60066837E-9, -4.67619166E-10, 0.999989152, 5.95959136E-7, -1.86810212E-9, 1.98648195E-7, -0.999986291),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})

local hat = game:GetService("Players").LocalPlayer.Character["Type-49 Abomindation Back Accessory"]
hat.Handle.AccessoryWeld:Destroy()

local function align(part0, part1)
	local attachment0 = Instance.new("Attachment", part0)
	if part0 == hat.Handle then
		attachment0.Position = Vector3.new(0.1, -0.2, -0.3) --Custom Positioning Values Here
		attachment0.Orientation = Vector3.new(-60.5, 85.9193, 15.9831) --Custom Rotationing Values here
		-- attachment0.Rotation = Vector3.new(30, 100, -20.1)
	end
	local attachment1 = Instance.new("Attachment", part1)
	local weldpos = Instance.new("AlignPosition", part0)
	weldpos.Attachment0 = attachment0
	weldpos.Attachment1 = attachment1
	weldpos.RigidityEnabled = false
	weldpos.ReactionForceEnabled = true
	weldpos.ApplyAtCenterOfMass = false
	weldpos.MaxForce = 20000
	weldpos.MaxVelocity = math.huge
	weldpos.Responsiveness = 200000
	local weldrot = Instance.new("AlignOrientation", part0)
	weldrot.Attachment0 = attachment0
	weldrot.Attachment1 = attachment1
	weldrot.ReactionTorqueEnabled = true
	weldrot.PrimaryAxisOnly = false
	weldrot.MaxTorque = 20000
	weldrot.MaxAngularVelocity = math.huge
	weldrot.Responsiveness = 200000
end

align(hat.Handle, Handle)

Port = New("Part", Uzi, "Port", {
	BrickColor = BrickColor.new("Dark stone grey"),
	Material = Enum.Material.SmoothPlastic,
	Transparency = 1,
	Transparency = 1,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.303939581, 0.303939581, 0.514359295),
	CFrame = CFrame.new(-64.0102158, 4.07008171, 7.94762278, -0.258818001, 0.965921998, 7.03767E-9, -0.965913594, -0.258815765, -8.10978804E-7, -2.25573785E-7, -4.02978912E-8, 0.999983191),
	CanCollide = false,
	BackSurface = Enum.SurfaceType.SmoothNoOutlines,
	BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
	FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
	LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
	RightSurface = Enum.SurfaceType.SmoothNoOutlines,
	TopSurface = Enum.SurfaceType.SmoothNoOutlines,
	Color = Color3.new(0.388235, 0.372549, 0.384314)
})
Mesh = New("BlockMesh", Port, "Mesh", {
	Scale = Vector3.new(0.0769230723, 0.538461506, 1)
})
mot = New("Motor", Port, "mot", {
	Part0 = Port,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, -0.258819044, -0.965925932, -5.89169019E-7, 0.965925872, -0.258819073, -1.6708546E-7, 8.90398955E-9, -6.12338397E-7, 1),
	C1 = CFrame.new(0.0604324341, 0.672489882, 0.142884254, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Mag2 = New("Part", Uzi, "Mag2", {
	BrickColor = BrickColor.new("Dark stone grey"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.303939581, 0.969711781, 0.303939581),
	CFrame = CFrame.new(-63.8785477, 2.57360268, 8.01299381, -1.5159877E-5, -3.46758636E-4, -0.999997377, 4.30490618E-5, 0.999989152, -3.46755522E-4, 0.999986291, -4.34514986E-5, -1.51409104E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.388235, 0.372549, 0.384314)
})
Mesh = New("BlockMesh", Mag2, "Mesh", {
	Scale = Vector3.new(0.809523821, 1, 0.714285731)
})
mot = New("Motor", Mag2, "mot", {
	Part0 = Mag2,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, -1.51580507E-5, 4.32481829E-5, 1, -3.46759072E-4, 1, -4.32534325E-5, -1, -3.46759742E-4, -1.51430522E-5),
	C1 = CFrame.new(-0.0712356567, -0.824002028, 0.077539444, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Part = New("Part", Uzi, "Part", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Symmetric,
	Size = Vector3.new(1.51969779, 1.51969779, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 3.47921586, 7.06472969, -1.5159877E-5, -3.46758636E-4, -0.999997377, 4.30490618E-5, 0.999989152, -3.46755522E-4, 0.999986291, -4.34514986E-5, -1.51409104E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("BlockMesh", Part, "Mesh", {
	Scale = Vector3.new(0.0476190485, 0.380952388, 0.190476194)
})
mot = New("Motor", Part, "mot", {
	Part0 = Part,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, -1.51580507E-5, 4.32481829E-5, 1, -3.46759072E-4, 1, -4.32534325E-5, -1, -3.46759742E-4, -1.51430522E-5),
	C1 = CFrame.new(-0.0704956055, 0.0816204548, 1.02581644, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
AimPart = New("Part", Uzi, "AimPart", {
	BrickColor = BrickColor.new("Black"),
	Transparency = 1,
	Transparency = 1,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.303939581, 0.303939581, 0.303939581),
	CFrame = CFrame.new(-63.8798447, 4.32250595, 5.97696972, -0.999997377, -1.38856626E-9, 5.60066127E-9, -4.67106354E-10, 0.999989152, 5.95963002E-7, -1.86809501E-9, 1.9865206E-7, -0.999986291),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
mot = New("Motor", AimPart, "mot", {
	Part0 = AimPart,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, -1, -9.25960919E-10, -3.73438835E-9, -9.25962418E-10, 1, 3.97315489E-7, 3.73438791E-9, 3.97315489E-7, -1),
	C1 = CFrame.new(-0.0699386597, 0.92491889, 2.11359167, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Hole = New("Part", Uzi, "Hole", {
	BrickColor = BrickColor.new("Really black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.607879162, 0.607879221, 1.51969779),
	CFrame = CFrame.new(-64.0106277, 4.09136534, 7.99518442, 3.04593304E-5, -6.80373148E-7, 0.999997377, -0.999989152, -1.32646619E-5, 3.04581481E-5, 1.36619119E-5, -0.999986291, -6.84514248E-7),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
})
Mesh = New("BlockMesh", Hole, "Mesh", {
	Scale = Vector3.new(0.238095239, 1.19047618, 0.0476190485)
})
mot = New("Motor", Hole, "mot", {
	Part0 = Hole,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 3.04589466E-5, -1, 1.34634383E-5, -6.8224125E-7, -1.34634593E-5, -1, 1, 3.04589375E-5, -6.82651319E-7),
	C1 = CFrame.new(0.0608444214, 0.693777323, 0.0953493118, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
NoSight = New("Part", Uzi, "NoSight", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.303939581, 0.303939581, 0.303939581),
	CFrame = CFrame.new(-63.9215851, 4.32565308, 8.6785574, -1.5159877E-5, -3.46758636E-4, -0.999997377, 4.30490618E-5, 0.999989152, -3.46755522E-4, 0.999986291, -4.34514986E-5, -1.51409104E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("SpecialMesh", NoSight, "Mesh", {
	Scale = Vector3.new(0.333333343, 0.142857149, 0.095238097),
	MeshType = Enum.MeshType.Wedge
})
mot = New("Motor", NoSight, "mot", {
	Part0 = NoSight,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, -1.51580507E-5, 4.32481829E-5, 1, -3.46759072E-4, 1, -4.32534325E-5, -1, -3.46759742E-4, -1.51430522E-5),
	C1 = CFrame.new(-0.0281982422, 0.928067923, -0.588032722, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
NoSight = New("Part", Uzi, "NoSight", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.303939581, 0.303939581, 0.303939581),
	CFrame = CFrame.new(-63.8792877, 4.27408314, 8.6785574, -0.999997377, 3.7727732E-4, 4.80012168E-5, -3.77270597E-4, -0.999989152, 5.5595694E-5, 4.8025533E-5, 5.59747241E-5, 0.999986291),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("SpecialMesh", NoSight, "Mesh", {
	Scale = Vector3.new(0.380952358, 0.190476194, 0.333333343),
	MeshType = Enum.MeshType.Torso
})
mot = New("Motor", NoSight, "mot", {
	Part0 = NoSight,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, -1, -3.77275166E-4, 4.80242488E-5, 3.77277844E-4, -1, 5.57768326E-5, 4.80032068E-5, 5.57949534E-5, 1),
	C1 = CFrame.new(-0.0704956055, 0.876497507, -0.588032722, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
NoSight = New("Part", Uzi, "NoSight", {
	BrickColor = BrickColor.new("White"),
	Transparency = 1,
	Transparency = 1,
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.303939581, 0.303939581, 0.303939581),
	CFrame = CFrame.new(-63.8792877, 4.33158779, 9.11930084, 0.999997377, -3.77276359E-4, -1.73402132E-5, 3.77273274E-4, 0.999989152, 5.57149033E-5, 1.73151166E-5, -5.61185843E-5, 0.999986291),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.94902, 0.952941, 0.952941)
})
lenspart = New("IntValue", NoSight, "lenspart", {})
Mesh = New("BlockMesh", NoSight, "Mesh", {
	Scale = Vector3.new(0.095238097, 0.0476190485, 0.0476190485)
})
mot = New("Motor", NoSight, "mot", {
	Part0 = NoSight,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 1, 3.77277844E-4, 1.73172939E-5, -3.77276883E-4, 1, -5.59206928E-5, -1.73383924E-5, 5.59141627E-5, 1),
	C1 = CFrame.new(-0.0704956055, 0.934002638, -1.02878189, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
NoSight = New("Part", Uzi, "NoSight", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.303939581, 0.303939581, 0.303939581),
	CFrame = CFrame.new(-63.8792877, 4.29654217, 9.19813633, 4.20435099E-4, -1.53568108E-5, 0.999997318, -0.999989092, -4.51352062E-5, 4.20430006E-4, 4.55259251E-5, -0.999986291, -1.53795154E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("BlockMesh", NoSight, "Mesh", {
	Scale = Vector3.new(0.285714269, 0.476190478, 0.095238097)
})
mot = New("Motor", NoSight, "mot", {
	Part0 = NoSight,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 4.20435739E-4, -0.99999994, 4.53278881E-5, -1.53587171E-5, -4.53343491E-5, -1, 0.99999994, 4.20435041E-4, -1.53777764E-5),
	C1 = CFrame.new(-0.0704956055, 0.898957014, -1.10761929, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
NoSight = New("Part", Uzi, "NoSight", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.303939581, 0.303939581, 0.303939581),
	CFrame = CFrame.new(-63.8355064, 4.32565308, 8.6785574, 1.51598751E-5, -4.07793617E-4, 0.999997377, -4.30490618E-5, 0.999989152, 4.07790008E-4, -0.999986291, -4.34524227E-5, 1.51382555E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("SpecialMesh", NoSight, "Mesh", {
	Scale = Vector3.new(0.333333343, 0.142857149, 0.095238097),
	MeshType = Enum.MeshType.Wedge
})
mot = New("Motor", NoSight, "mot", {
	Part0 = NoSight,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 1.51580489E-5, -4.32481829E-5, -1, -4.07794229E-4, 1, -4.32543566E-5, 1, 4.07794898E-4, 1.51404101E-5),
	C1 = CFrame.new(-0.114276886, 0.928067923, -0.588032722, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
NoSight = New("Part", Uzi, "NoSight", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.303939581, 0.303939581, 0.303939581),
	CFrame = CFrame.new(-63.8792877, 4.33177757, 7.20867538, 0.999997318, 4.20433673E-4, 1.73239296E-5, 4.2042954E-4, -0.999989152, -1.25467186E-5, 1.73145636E-5, 1.29512719E-5, -0.999986291),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("SpecialMesh", NoSight, "Mesh", {
	Scale = Vector3.new(0.0868398845, 0.0868398845, 0.0868398845),
	MeshId = "http://www.roblox.com/asset/?id=3270017",
	MeshType = Enum.MeshType.FileMesh
})
mot = New("Motor", NoSight, "mot", {
	Part0 = NoSight,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 0.99999994, 4.20434575E-4, 1.731675E-5, 4.20434313E-4, -1, 1.27527892E-5, 1.73221088E-5, -1.27455087E-5, -1),
	C1 = CFrame.new(-0.0704956055, 0.934191465, 0.881869316, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
NoSight = New("Part", Uzi, "NoSight", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Plate,
	Size = Vector3.new(1.51969779, 0.607879162, 1.51969779),
	CFrame = CFrame.new(-63.9950485, 4.25275517, 7.24577427, 3.16243502E-4, -0.999997318, -1.53725232E-5, -0.999989152, -3.16239311E-4, -4.30490618E-5, 4.34413814E-5, 1.53898236E-5, -0.999986291),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("CylinderMesh", NoSight, "Mesh", {
	Scale = Vector3.new(0.190476194, 0.095238097, 0.190476194)
})
mot = New("Motor", NoSight, "mot", {
	Part0 = NoSight,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 3.16243852E-4, -1, 4.32433153E-5, -0.99999994, -3.16243211E-4, 1.53881065E-5, -1.53744295E-5, -4.32481829E-5, -1),
	C1 = CFrame.new(0.0452651978, 0.855168581, 0.844769955, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
NoSight = New("Part", Uzi, "NoSight", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Plate,
	Size = Vector3.new(1.51969779, 0.607879162, 1.51969779),
	CFrame = CFrame.new(-63.9950485, 4.25256538, 9.19813633, 3.16243502E-4, -0.999997318, -1.53725232E-5, -0.999989152, -3.16239311E-4, -4.30490618E-5, 4.34413814E-5, 1.53898236E-5, -0.999986291),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("CylinderMesh", NoSight, "Mesh", {
	Scale = Vector3.new(0.190476194, 0.095238097, 0.190476194)
})
mot = New("Motor", NoSight, "mot", {
	Part0 = NoSight,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 3.16243852E-4, -1, 4.32433153E-5, -0.99999994, -3.16243211E-4, 1.53881065E-5, -1.53744295E-5, -4.32481829E-5, -1),
	C1 = CFrame.new(0.0452651978, 0.854979753, -1.10761929, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Part = New("Part", Uzi, "Part", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Symmetric,
	Size = Vector3.new(1.51969779, 1.51969779, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 3.84094381, 7.38972139, -1.5159877E-5, -3.46758636E-4, -0.999997377, 4.30490618E-5, 0.999989152, -3.46755522E-4, 0.999986291, -4.34514986E-5, -1.51409104E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("BlockMesh", Part, "Mesh", {
	Scale = Vector3.new(0.571428597, 0.095238097, 0.190476194)
})
mot = New("Motor", Part, "mot", {
	Part0 = Part,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, -1.51580507E-5, 4.32481829E-5, 1, -3.46759072E-4, 1, -4.32534325E-5, -1, -3.46759742E-4, -1.51430522E-5),
	C1 = CFrame.new(-0.0704956055, 0.443352461, 0.700820446, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Part = New("Part", Uzi, "Part", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Symmetric,
	Size = Vector3.new(1.51969779, 1.51969779, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 3.4792161, 6.99127293, -0.999997377, 3.7727732E-4, 4.80012168E-5, -3.77270597E-4, -0.999989152, 5.5595694E-5, 4.8025533E-5, 5.59747241E-5, 0.999986291),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("SpecialMesh", Part, "Mesh", {
	Scale = Vector3.new(0.190476194, 0.380952388, 0.0476190485),
	MeshType = Enum.MeshType.Wedge
})
mot = New("Motor", Part, "mot", {
	Part0 = Part,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, -1, -3.77275166E-4, 4.80242488E-5, 3.77277844E-4, -1, 5.57768326E-5, 4.80032068E-5, 5.57949534E-5, 1),
	C1 = CFrame.new(-0.0704956055, 0.0816206932, 1.09927416, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Part = New("Part", Uzi, "Part", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Symmetric,
	Size = Vector3.new(1.51969779, 1.51969779, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 4.10843039, 9.70547295, 4.20435099E-4, -1.53568108E-5, 0.999997318, -0.999989092, -4.51352062E-5, 4.20430006E-4, 4.55259251E-5, -0.999986291, -1.53795154E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("CylinderMesh", Part, "Mesh", {
	Scale = Vector3.new(0.095238097, 0.285714298, 0.095238097)
})
mot = New("Motor", Part, "mot", {
	Part0 = Part,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 4.20435739E-4, -0.99999994, 4.53278881E-5, -1.53587171E-5, -4.53343491E-5, -1, 0.99999994, 4.20435041E-4, -1.53777764E-5),
	C1 = CFrame.new(-0.0704956055, 0.710843325, -1.61496258, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
A1 = New("Part", Uzi, "A1", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.623076081, 0.729454994, 1.51969779),
	CFrame = CFrame.new(-64.0106277, 4.09897423, 7.99518442, 3.04593304E-5, -6.80373148E-7, 0.999997377, -0.999989152, -1.32646619E-5, 3.04581481E-5, 1.36619119E-5, -0.999986291, -6.84514248E-7),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("BlockMesh", A1, "Mesh", {
	Scale = Vector3.new(0.238000005, 1, 0.0480000004)
})
mot = New("Motor", A1, "mot", {
	Part0 = A1,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 3.04589466E-5, -1, 1.34634383E-5, -6.8224125E-7, -1.34634593E-5, -1, 1, 3.04589375E-5, -6.82651319E-7),
	C1 = CFrame.new(0.0608444214, 0.701386213, 0.0953493118, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Cylinder1 = New("Part", Uzi, "Cylinder", {
	BrickColor = BrickColor.new("Really black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Plate,
	Size = Vector3.new(1.51969779, 0.607879162, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 4.10842991, 9.93623352, 3.34118115E-4, 1.53568108E-5, -0.999997318, -0.999989092, 4.51352062E-5, -3.34113749E-4, 4.5527253E-5, 0.999986291, 1.53755864E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
})
Mesh = New("CylinderMesh", Cylinder1, "Mesh", {
	Offset = Vector3.new(0, -0.0185714271, 0),
	Scale = Vector3.new(0.0666666627, 0.0476190485, 0.0666666627)
})
mot = New("Motor", Cylinder1, "mot", {
	Part0 = Cylinder1,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 3.34118522E-4, -0.99999994, 4.53292159E-5, 1.53587171E-5, 4.53343491E-5, 1, -0.99999994, -3.34117853E-4, 1.53738638E-5),
	C1 = CFrame.new(-0.0704956055, 0.710842848, -1.84572601, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Mag1 = New("Part", Uzi, "Mag1", {
	BrickColor = BrickColor.new("Dark stone grey"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.303939581, 0.723665655, 0.303939581),
	CFrame = CFrame.new(-63.8785477, 2.8062222, 8.01299381, -1.5159877E-5, -3.46758636E-4, -0.999997377, 4.30490618E-5, 0.999989152, -3.46755522E-4, 0.999986291, -4.34514986E-5, -1.51409104E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.388235, 0.372549, 0.384314)
})
Mesh = New("BlockMesh", Mag1, "Mesh", {
	Scale = Vector3.new(0.809523821, 1, 0.714285731)
})
mot = New("Motor", Mag1, "mot", {
	Part0 = Mag1,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, -1.51580507E-5, 4.32481829E-5, 1, -3.46759072E-4, 1, -4.32534325E-5, -1, -3.46759742E-4, -1.51430522E-5),
	C1 = CFrame.new(-0.0712356567, -0.591379881, 0.077539444, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Part = New("Part", Uzi, "Part", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Symmetric,
	Size = Vector3.new(1.51969779, 1.51969779, 1.51969779),
	CFrame = CFrame.new(-63.8792839, 3.96399546, 8.94571686, 4.20436263E-4, -1.53869969E-5, 0.999994516, -0.999985397, -4.49496983E-5, 4.20421362E-4, 4.57110073E-5, -0.999980092, -1.53492692E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("BlockMesh", Part, "Mesh", {
	Scale = Vector3.new(0.095238097, 0.523809552, 0.238095239)
})
Weld = New("ManualWeld", Part, "Weld", {
	Part0 = Part,
	Part1 = Port,
	C0 = CFrame.new(-0.759848893, 0.759848893, 0.759848893, -1, 0, 0, 0, 0, 1, 0, 1, 0),
	C1 = CFrame.new(-0.862224281, 0.690827668, 0.238218009, -0.965815187, -0.259224743, 4.81826173E-5, -0.259224653, 0.965815544, -3.01207638E-6, -4.59400871E-5, -1.53690817E-5, -0.999996901)
})
mot = New("Motor", Part, "mot", {
	Part0 = Part,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 4.20408818E-4, -0.99999994, 4.51425221E-5, -1.53889487E-5, -4.51489977E-5, -1, 1, 4.20408091E-4, -1.5407928E-5),
	C1 = CFrame.new(-0.0704994202, 0.566405296, -0.855195999, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Part = New("Part", Uzi, "Part", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Symmetric,
	Size = Vector3.new(1.51969779, 1.51969779, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 4.07189083, 8.22297764, 3.34118115E-4, 1.53568108E-5, -0.999997318, -0.999989092, 4.51352062E-5, -3.34113749E-4, 4.5527253E-5, 0.999986291, 1.53755864E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("BlockMesh", Part, "Mesh", {
	Scale = Vector3.new(0.238095239, 1.47619045, 0.190476194)
})
mot = New("Motor", Part, "mot", {
	Part0 = Part,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 3.34118522E-4, -0.99999994, 4.53292159E-5, 1.53587171E-5, 4.53343491E-5, 1, -0.99999994, -3.34117853E-4, 1.53738638E-5),
	C1 = CFrame.new(-0.0704956055, 0.674302816, -0.132447243, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Part = New("Part", Uzi, "Part", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Symmetric,
	Size = Vector3.new(1.51969779, 1.51969779, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 3.89102483, 8.94586086, 4.20435099E-4, -1.53568108E-5, 0.999997318, -0.999989092, -4.51352062E-5, 4.20430006E-4, 4.55259251E-5, -0.999986291, -1.53795154E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("CylinderMesh", Part, "Mesh", {
	Scale = Vector3.new(0.285714298, 0.523809552, 0.238095239)
})
Weld = New("ManualWeld", Part, "Weld", {
	Part0 = Part,
	Part1 = Port,
	C0 = CFrame.new(-0.759848893, 0.759848893, 0.759848893, -1, 0, 0, 0, 0, 1, 0, 1, 0),
	C1 = CFrame.new(-0.791742086, 0.70971489, 0.238357142, -0.965815187, -0.259224743, 4.81826173E-5, -0.259224653, 0.965815544, -3.01207638E-6, -4.59400871E-5, -1.53690817E-5, -0.999996901)
})
mot = New("Motor", Part, "mot", {
	Part0 = Part,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 4.20435739E-4, -0.99999994, 4.53278881E-5, -1.53587171E-5, -4.53343491E-5, -1, 0.99999994, 4.20435041E-4, -1.53777764E-5),
	C1 = CFrame.new(-0.0704956055, 0.493435144, -0.855340004, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Part = New("Part", Uzi, "Part", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Symmetric,
	Size = Vector3.new(1.51969779, 1.51969779, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 3.38516831, 8.00556946, -1.5159877E-5, -3.46758636E-4, -0.999997377, 4.30490618E-5, 0.999989152, -3.46755522E-4, 0.999986291, -4.34514986E-5, -1.51409104E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("BlockMesh", Part, "Mesh", {
	Scale = Vector3.new(0.238095239, 0.476190478, 0.190476194)
})
mot = New("Motor", Part, "mot", {
	Part0 = Part,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, -1.51580507E-5, 4.32481829E-5, 1, -3.46759072E-4, 1, -4.32534325E-5, -1, -3.46759742E-4, -1.51430522E-5),
	C1 = CFrame.new(-0.0704956055, -0.0124275684, 0.0849637985, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Part = New("Part", Uzi, "Part", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Symmetric,
	Size = Vector3.new(1.51969779, 1.51969779, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 3.13159156, 7.78817034, -1.5159877E-5, -3.46758636E-4, -0.999997377, 4.30490618E-5, 0.999989152, -3.46755522E-4, 0.999986291, -4.34514986E-5, -1.51409104E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("BlockMesh", Part, "Mesh", {
	Scale = Vector3.new(0.0476190485, 0.142857149, 0.190476194)
})
mot = New("Motor", Part, "mot", {
	Part0 = Part,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, -1.51580507E-5, 4.32481829E-5, 1, -3.46759072E-4, 1, -4.32534325E-5, -1, -3.46759742E-4, -1.51430522E-5),
	C1 = CFrame.new(-0.0704956055, -0.266007185, 0.302366257, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Part = New("Part", Uzi, "Part", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Symmetric,
	Size = Vector3.new(1.51969779, 1.51969779, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 3.81812668, 8.18587875, 3.34118115E-4, 1.53568108E-5, -0.999997318, -0.999989092, 4.51352062E-5, -3.34113749E-4, 4.5527253E-5, 0.999986291, 1.53755864E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("BlockMesh", Part, "Mesh", {
	Scale = Vector3.new(0.095238097, 0.476190478, 0.190476194)
})
mot = New("Motor", Part, "mot", {
	Part0 = Part,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 3.34118522E-4, -0.99999994, 4.53292159E-5, 1.53587171E-5, 4.53343491E-5, 1, -0.99999994, -3.34117853E-4, 1.53738638E-5),
	C1 = CFrame.new(-0.0704956055, 0.420535564, -0.0953474045, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Part = New("Part", Uzi, "Part", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Symmetric,
	Size = Vector3.new(1.51969779, 1.51969779, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 3.57790494, 7.28955317, 2.37775297E-4, -2.39374975E-4, -0.999997377, -0.707075596, 0.707122624, -3.37392528E-4, 0.707120895, 0.707073271, -1.11602742E-6),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("BlockMesh", Part, "Mesh", {
	Scale = Vector3.new(0.0476190485, 0.428571433, 0.095238097)
})
mot = New("Motor", Part, "mot", {
	Part0 = Part,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 2.37776927E-4, -0.707083166, 0.707130432, -2.39373941E-4, 0.707130432, 0.707083166, -1, -3.37396661E-4, -1.1179759E-6),
	C1 = CFrame.new(-0.0704956055, 0.180310726, 0.800990105, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Part = New("Part", Uzi, "Part", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Symmetric,
	Size = Vector3.new(1.51969779, 1.51969779, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 3.91217613, 7.10108757, 1.53677556E-5, 0.999997318, -3.44614644E-4, 5.5595694E-5, 3.44610075E-4, 0.999989152, 0.999986291, -1.53906112E-5, -5.59875407E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("CylinderMesh", Part, "Mesh", {
	Scale = Vector3.new(0.190476194, 0.190476194, 0.190476194)
})
mot = New("Motor", Part, "mot", {
	Part0 = Part,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 1.53696619E-5, 5.57949534E-5, 1, 0.99999994, 3.44614265E-4, -1.53888886E-5, -3.4461508E-4, 1, -5.57896492E-5),
	C1 = CFrame.new(-0.0704956055, 0.514585495, 0.989458561, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Part = New("Part", Uzi, "Part", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Symmetric,
	Size = Vector3.new(1.51969779, 1.51969779, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 3.49313116, 7.78817034, -0.999997318, -4.58751165E-5, 4.07794083E-4, -4.07787855E-4, -4.30788677E-5, -0.999989152, 4.58960603E-5, -0.999986291, 4.3457334E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("SpecialMesh", Part, "Mesh", {
	Scale = Vector3.new(0.190476194, 0.0476190485, 0.333333343),
	MeshType = Enum.MeshType.Wedge
})
mot = New("Motor", Part, "mot", {
	Part0 = Part,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, -0.99999994, -4.07792744E-4, 4.58947434E-5, -4.58770992E-5, -4.32779889E-5, -1, 4.07794694E-4, -1, 4.32592715E-5),
	C1 = CFrame.new(-0.0704956055, 0.0955364704, 0.302366257, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Part = New("Part", Uzi, "Part", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Symmetric,
	Size = Vector3.new(1.51969779, 1.51969779, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 3.81812716, 7.78816938, 0.999997377, 7.62029813E-5, -4.07784712E-4, 4.0778832E-4, -1.04068669E-4, 0.999989092, 7.61557822E-5, -0.999986291, -1.0449675E-4),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("SpecialMesh", Part, "Mesh", {
	Scale = Vector3.new(0.190476194, 0.0476190485, 0.095238097),
	MeshType = Enum.MeshType.Wedge
})
mot = New("Motor", Part, "mot", {
	Part0 = Part,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 1, 4.07793239E-4, 7.61587726E-5, 7.62013078E-5, -1.04268453E-4, -1, -4.07785323E-4, 0.99999994, -1.04299521E-4),
	C1 = CFrame.new(-0.0704956055, 0.420535803, 0.30236721, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Part = New("Part", Uzi, "Part", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Symmetric,
	Size = Vector3.new(1.51969779, 1.51969779, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 4.10843039, 9.41535473, 4.20435099E-4, -1.53568108E-5, 0.999997318, -0.999989092, -4.51352062E-5, 4.20430006E-4, 4.55259251E-5, -0.999986291, -1.53795154E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("CylinderMesh", Part, "Mesh", {
	Scale = Vector3.new(0.142857149, 0.095238097, 0.142857149)
})
mot = New("Motor", Part, "mot", {
	Part0 = Part,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 4.20435739E-4, -0.99999994, 4.53278881E-5, -1.53587171E-5, -4.53343491E-5, -1, 0.99999994, 4.20435041E-4, -1.53777764E-5),
	C1 = CFrame.new(-0.0704956055, 0.710843325, -1.32484055, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Block = New("Part", Uzi, "Block", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Plate,
	Size = Vector3.new(1.51969779, 0.607879162, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 3.673805, 8.25339222, -3.23260669E-4, 2.16992383E-4, -0.999997377, 0.866039515, -0.499953777, -3.88442742E-4, -0.499952704, -0.866036952, -2.63046823E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("BlockMesh", Block, "Mesh", {
	Scale = Vector3.new(0.142857149, 0.0952381045, 0.0476190485)
})
mot = New("Motor", Block, "mot", {
	Part0 = Block,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, -3.23262066E-4, 0.866048813, -0.499959379, 2.16991102E-4, -0.49995935, -0.866048872, -1, -3.88447457E-4, -2.63069869E-5),
	C1 = CFrame.new(-0.0704956055, 0.276212454, -0.162861824, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
NoSight = New("Part", Uzi, "NoSight", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Plate,
	Size = Vector3.new(1.51969779, 0.607879162, 1.51969779),
	CFrame = CFrame.new(-63.7637138, 4.25275517, 7.24577427, 3.16243502E-4, -0.999997318, -1.53725232E-5, -0.999989152, -3.16239311E-4, -4.30490618E-5, 4.34413814E-5, 1.53898236E-5, -0.999986291),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("CylinderMesh", NoSight, "Mesh", {
	Scale = Vector3.new(0.190476194, 0.095238097, 0.190476194)
})
mot = New("Motor", NoSight, "mot", {
	Part0 = NoSight,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 3.16243852E-4, -1, 4.32433153E-5, -0.99999994, -3.16243211E-4, 1.53881065E-5, -1.53744295E-5, -4.32481829E-5, -1),
	C1 = CFrame.new(-0.186069489, 0.855168581, 0.844769955, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
NoSight = New("Part", Uzi, "NoSight", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.303939581, 0.303939581, 0.303939581),
	CFrame = CFrame.new(-63.857769, 4.31044102, 8.6785574, 1.51598751E-5, -4.07793617E-4, 0.999997377, -4.30490618E-5, 0.999989152, 4.07790008E-4, -0.999986291, -4.34524227E-5, 1.51382555E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("SpecialMesh", NoSight, "Mesh", {
	Scale = Vector3.new(0.333333224, 0.0476190485, 0.142857105),
	MeshType = Enum.MeshType.Wedge
})
mot = New("Motor", NoSight, "mot", {
	Part0 = NoSight,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 1.51580489E-5, -4.32481829E-5, -1, -4.07794229E-4, 1, -4.32543566E-5, 1, 4.07794898E-4, 1.51404101E-5),
	C1 = CFrame.new(-0.0920143127, 0.912855864, -0.588032722, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
Ring = New("Part", Uzi, "Ring", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Symmetric,
	Size = Vector3.new(1.51969779, 1.51969779, 1.51969779),
	CFrame = CFrame.new(-63.8792877, 3.71034932, 8.25933456, 4.58751165E-5, 4.0779452E-4, 0.999997318, 4.30788677E-5, -0.999989152, 4.07788291E-4, 0.999986291, 4.34573376E-5, -4.58960603E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("SpecialMesh", Ring, "Mesh", {
	Scale = Vector3.new(0.434199393, 0.361832827, 0.361832827),
	MeshId = "http://www.roblox.com/asset/?id=3270017",
	MeshType = Enum.MeshType.FileMesh
})
mot = New("Motor", Ring, "mot", {
	Part0 = Ring,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 4.58770992E-5, 4.32779889E-5, 1, 4.07795131E-4, -1, 4.32592751E-5, 0.99999994, 4.07793181E-4, -4.58947434E-5),
	C1 = CFrame.new(-0.0704956055, 0.312757254, -0.168804169, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
NoSight = New("Part", Uzi, "NoSight", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.303939581, 0.303939581, 0.303939581),
	CFrame = CFrame.new(-63.9008064, 4.31044102, 8.6785574, -1.5159877E-5, -3.46758636E-4, -0.999997377, 4.30490618E-5, 0.999989152, -3.46755522E-4, 0.999986291, -4.34514986E-5, -1.51409104E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("SpecialMesh", NoSight, "Mesh", {
	Scale = Vector3.new(0.333333224, 0.0476190485, 0.142857105),
	MeshType = Enum.MeshType.Wedge
})
mot = New("Motor", NoSight, "mot", {
	Part0 = NoSight,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, -1.51580507E-5, 4.32481829E-5, 1, -3.46759072E-4, 1, -4.32534325E-5, -1, -3.46759742E-4, -1.51430522E-5),
	C1 = CFrame.new(-0.0489768982, 0.912855864, -0.588032722, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
NoSight = New("Part", Uzi, "NoSight", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Plate,
	Size = Vector3.new(1.51969779, 0.607879162, 1.51969779),
	CFrame = CFrame.new(-63.7637138, 4.25256538, 9.19813633, 3.16242484E-4, -0.999998629, -1.53781439E-5, -0.999994516, -3.16240039E-4, -4.36452538E-5, 4.38389834E-5, 1.53937908E-5, -0.999993145),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("CylinderMesh", NoSight, "Mesh", {
	Scale = Vector3.new(0.190476194, 0.095238097, 0.190476194)
})
mot = New("Motor", NoSight, "mot", {
	Part0 = NoSight,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 3.16242484E-4, -0.999994516, 4.38389834E-5, -0.999998629, -3.16240039E-4, 1.53937908E-5, -1.53781439E-5, -4.36452538E-5, -0.999993145),
	C1 = CFrame.new(-0.186069489, 0.854979753, -1.10761929, -1, -9.26473731E-10, -3.73439546E-9, -9.2647523E-10, 1, 3.97311624E-7, 3.73439502E-9, 3.97311624E-7, -1)
})
NoSight = New("Part", Uzi, "NoSight", {
	BrickColor = BrickColor.new("Black"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.303939581, 0.303939581, 0.303939581),
	CFrame = CFrame.new(-63.8792877, 4.27389956, 7.20867825, -1.5159877E-5, -3.46758636E-4, -0.999997377, 4.30490654E-5, 0.999989152, -3.46755493E-4, 0.999986291, -4.34515023E-5, -1.51409085E-5),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.105882, 0.164706, 0.207843)
})
Mesh = New("BlockMesh", NoSight, "Mesh", {
	Scale = Vector3.new(0.0476190522, 0.190476194, 0.19047603)
})
mot = New("Motor", NoSight, "mot", {
	Part0 = NoSight,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, -1.5159917E-5, 4.30495311E-5, 1, -3.46759538E-4, 1, -4.30547843E-5, -1, -3.46760178E-4, -1.51449858E-5),
	C1 = CFrame.new(-0.0704956055, 0.876312971, 0.881866455, -1, -1.38907941E-9, -5.60068347E-9, -1.38908274E-9, 1, 5.95965616E-7, 5.60068303E-9, 5.95965616E-7, -1)
})
A2 = New("Part", Uzi, "A2", {
	BrickColor = BrickColor.new("Dark stone grey"),
	Elasticity = 0,
	FormFactor = Enum.FormFactor.Custom,
	Size = Vector3.new(0.303939581, 0.303939581, 1.8236376),
	CFrame = CFrame.new(-64.1623764, 4.10658884, 8.22297573, 3.04593304E-5, -6.80373148E-7, 0.999997377, -0.999989152, -1.32646619E-5, 3.04581481E-5, 1.36619119E-5, -0.999986291, -6.84514305E-7),
	CanCollide = false,
	BottomSurface = Enum.SurfaceType.Smooth,
	TopSurface = Enum.SurfaceType.Smooth,
	Color = Color3.new(0.388235, 0.372549, 0.384314)
})
Mesh = New("BlockMesh", A2, "Mesh", {
	Offset = Vector3.new(0, 0, 0.0599999987),
	Scale = Vector3.new(0.200000003, 0.200000003, 0.0480000004)
})
mot = New("Motor", A2, "mot", {
	Part0 = A2,
	Part1 = Handle,
	C0 = CFrame.new(0, 0, 0, 3.04594105E-5, -1, 1.32647847E-5, -6.80374967E-7, -1.32648056E-5, -1, 1, 3.04594014E-5, -6.8077901E-7),
	C1 = CFrame.new(0.212593079, 0.709000826, -0.132445335, -1, -1.38907941E-9, -5.60068347E-9, -1.38908274E-9, 1, 5.95965616E-7, 5.60068303E-9, 5.95965616E-7, -1)
})
for _, v in pairs(Uzi:GetChildren()) do
	if v:IsA("BasePart") then
		v.CanCollide = false
	end
end
local NewInstance = function(instance, parent, properties)
	local inst = Instance.new(instance, parent)
	if properties then
		for i, v in next, properties, nil do
			pcall(function()
				inst[i] = v
			end)
		end
	end
	return inst
end
local HW = NewInstance("Weld", char, {
	Part0 = ra,
	Part1 = Handle,
	C0 = CFrame.new(0, -1.1, -0.2) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
})
-------------------------------------------------------
--End Important Functions--
-------------------------------------------------------


-------------------------------------------------------
--Start Customization--
-------------------------------------------------------
mas = Instance.new("Model",hed)
mas.Name = "Model2Script"
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("Part")
o4 = Instance.new("Part")
o5 = Instance.new("Part")
o6 = Instance.new("Part")
o7 = Instance.new("Part")
o8 = Instance.new("Part")
o9 = Instance.new("Part")
o10 = Instance.new("Part")
o11 = Instance.new("Part")
o12 = Instance.new("Part")
o13 = Instance.new("Part")
o14 = Instance.new("Part")
o15 = Instance.new("Part")
o16 = Instance.new("Part")
o17 = Instance.new("Part")
o18 = Instance.new("Part")
o19 = Instance.new("Part")
o20 = Instance.new("Part")
o21 = Instance.new("Part")
o22 = Instance.new("Part")
o23 = Instance.new("Part")
o24 = Instance.new("Part")
o25 = Instance.new("Part")
o26 = Instance.new("Part")
o27 = Instance.new("Part")
o28 = Instance.new("Part")
o29 = Instance.new("Part")
o30 = Instance.new("Part")
o31 = Instance.new("Part")
o32 = Instance.new("Part")
o33 = Instance.new("Part")
o34 = Instance.new("Part")
o35 = Instance.new("Part")
o36 = Instance.new("Part")
o37 = Instance.new("Part")
o1.Parent = mas
o2.Name = "Head"
o2.Parent = o1
o2.Material = Enum.Material.SmoothPlastic
o2.BrickColor = BrickColor.new("Really black")
o2.Transparency = 1
o2.Rotation = Vector3.new(-0.00999999978, 3.26999998, 0.00999999978)
o2.FormFactor = Enum.FormFactor.Symmetric
o2.Size = Vector3.new(1.99999988, 0.99999994, 0.99999994)
o2.CFrame = CFrame.new(12.5892553, 4.50960207, -3.75727963, 0.998376548, -0.000250246754, 0.0569584854, 0.000245001953, 1.00000846, 9.91025372e-05, -0.056957975, -8.49864373e-05, 0.998385131)
o2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o2.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o2.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o3.Parent = o2
o3.BrickColor = BrickColor.new("Fossil")
o3.Rotation = Vector3.new(-0.00999999978, 35.1199989, 0.0199999996)
o3.CanCollide = false
o3.Size = Vector3.new(0.0600024611, 0.250000179, 0.220000237)
o3.CFrame = CFrame.new(12.3422012, 4.47093582, -4.18185663, 0.817933738, -0.000248847413, 0.575312555, 0.000196001551, 1.00000846, 0.000153887318, -0.575316489, -1.31072084e-05, 0.817941368)
o3.BottomSurface = Enum.SurfaceType.Smooth
o3.TopSurface = Enum.SurfaceType.Smooth
o3.Color = Color3.new(0.623529, 0.631373, 0.67451)
o3.Color = Color3.new(0.623529, 0.631373, 0.67451)
o4.Parent = o2
o4.Material = Enum.Material.Neon
o4.BrickColor = BrickColor.new("Eggplant")
o4.Rotation = Vector3.new(0, 0.629999995, 0.00999999978)
o4.CanCollide = false
o4.Shape = Enum.PartType.Ball
o4.Size = Vector3.new(0.190001294, 0.190001294, 0.190001294)
o4.CFrame = CFrame.new(12.6813383, 4.85306978, -4.3403945, 0.999939919, -0.00023901432, 0.0109635331, 0.00023900198, 1.00000846, 2.62037793e-06, -0.0109626129, 3.71073838e-10, 0.999948502)
o4.BottomSurface = Enum.SurfaceType.Smooth
o4.TopSurface = Enum.SurfaceType.Smooth
o4.Color = Color3.new(0.482353, 0, 0.482353)
o4.Color = Color3.new(0.482353, 0, 0.482353)
o5.Parent = o2
o5.BrickColor = BrickColor.new("Fossil")
o5.Rotation = Vector3.new(-0.00999999978, 35.1199989, 0.0199999996)
o5.CanCollide = false
o5.Size = Vector3.new(0.0600024611, 0.250000179, 0.220000237)
o5.CFrame = CFrame.new(12.25453, 4.47092152, -4.12017584, 0.817933738, -0.000248847413, 0.575312555, 0.000196001551, 1.00000846, 0.000153887318, -0.575316489, -1.31072084e-05, 0.817941368)
o5.BottomSurface = Enum.SurfaceType.Smooth
o5.TopSurface = Enum.SurfaceType.Smooth
o5.Color = Color3.new(0.623529, 0.631373, 0.67451)
o5.Color = Color3.new(0.623529, 0.631373, 0.67451)
o6.Parent = o2
o6.BrickColor = BrickColor.new("Fossil")
o6.Rotation = Vector3.new(-0.00999999978, 35.1199989, 0.0199999996)
o6.CanCollide = false
o6.Size = Vector3.new(0.0600024611, 0.250000179, 0.220000237)
o6.CFrame = CFrame.new(12.3307505, 4.47093344, -4.19189453, 0.817933738, -0.000248847413, 0.575312555, 0.000196001551, 1.00000846, 0.000153887318, -0.575316489, -1.31072084e-05, 0.817941368)
o6.BottomSurface = Enum.SurfaceType.Smooth
o6.TopSurface = Enum.SurfaceType.Smooth
o6.Color = Color3.new(0.623529, 0.631373, 0.67451)
o6.Color = Color3.new(0.623529, 0.631373, 0.67451)
o7.Parent = o2
o7.BrickColor = BrickColor.new("Fossil")
o7.Rotation = Vector3.new(-0.00999999978, 35.1199989, 0.0199999996)
o7.CanCollide = false
o7.Size = Vector3.new(0.0600024611, 0.250000179, 0.220000237)
o7.CFrame = CFrame.new(12.4249439, 4.47095871, -4.24005365, 0.817933738, -0.000248847413, 0.575312555, 0.000196001551, 1.00000846, 0.000153887318, -0.575316489, -1.31072084e-05, 0.817941368)
o7.BottomSurface = Enum.SurfaceType.Smooth
o7.TopSurface = Enum.SurfaceType.Smooth
o7.Color = Color3.new(0.623529, 0.631373, 0.67451)
o7.Color = Color3.new(0.623529, 0.631373, 0.67451)
o8.Parent = o2
o8.BrickColor = BrickColor.new("Fossil")
o8.Rotation = Vector3.new(0.00999999978, -30.1099987, 0.0199999996)
o8.CanCollide = false
o8.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o8.CFrame = CFrame.new(12.8379145, 4.46701479, -4.16434002, 0.865085423, -0.000253115431, -0.501624584, 0.000219001973, 1.00000846, -0.000126912026, 0.50162971, -6.67569111e-08, 0.865092278)
o8.BottomSurface = Enum.SurfaceType.Smooth
o8.TopSurface = Enum.SurfaceType.Smooth
o8.Color = Color3.new(0.623529, 0.631373, 0.67451)
o8.Color = Color3.new(0.623529, 0.631373, 0.67451)
o9.Parent = o2
o9.BrickColor = BrickColor.new("Fossil")
o9.Rotation = Vector3.new(0.00999999978, -30.1099987, 0.0199999996)
o9.CanCollide = false
o9.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o9.CFrame = CFrame.new(12.9631338, 4.46704054, -4.09174585, 0.865085423, -0.000253115431, -0.501624584, 0.000219001973, 1.00000846, -0.000126912026, 0.50162971, -6.67569111e-08, 0.865092278)
o9.BottomSurface = Enum.SurfaceType.Smooth
o9.TopSurface = Enum.SurfaceType.Smooth
o9.Color = Color3.new(0.623529, 0.631373, 0.67451)
o9.Color = Color3.new(0.623529, 0.631373, 0.67451)
o10.Parent = o2
o10.BrickColor = BrickColor.new("Fossil")
o10.Rotation = Vector3.new(-0.00999999978, 35.1199989, 0.0199999996)
o10.CanCollide = false
o10.Size = Vector3.new(0.0600024611, 0.250000179, 0.220000237)
o10.CFrame = CFrame.new(12.2429972, 4.4709177, -4.11946106, 0.817933738, -0.000248847413, 0.575312555, 0.000196001551, 1.00000846, 0.000153887318, -0.575316489, -1.31072084e-05, 0.817941368)
o10.BottomSurface = Enum.SurfaceType.Smooth
o10.TopSurface = Enum.SurfaceType.Smooth
o10.Color = Color3.new(0.623529, 0.631373, 0.67451)
o10.Color = Color3.new(0.623529, 0.631373, 0.67451)
o11.Parent = o2
o11.Material = Enum.Material.Metal
o11.BrickColor = BrickColor.new("Pearl")
o11.Rotation = Vector3.new(-179.959991, 70.5100021, 179.970001)
o11.CanCollide = false
o11.Size = Vector3.new(0.250002503, 0.350000173, 0.2900002)
o11.CFrame = CFrame.new(13.0351248, 4.18798542, -4.05297899, -0.333613515, -0.000202421492, 0.942709923, -1.74622983e-10, 1.00000834, 0.000214724801, -0.942718267, 7.16352733e-05, -0.333615392)
o11.BottomSurface = Enum.SurfaceType.Smooth
o11.TopSurface = Enum.SurfaceType.Smooth
o11.Color = Color3.new(0.905882, 0.905882, 0.92549)
o11.Color = Color3.new(0.905882, 0.905882, 0.92549)
o12.Parent = o2
o12.Material = Enum.Material.Metal
o12.BrickColor = BrickColor.new("Pearl")
o12.Rotation = Vector3.new(-0.0199999996, 59.8599968, 0.0299999993)
o12.CanCollide = false
o12.Size = Vector3.new(0.250002503, 0.330000162, 0.2900002)
o12.CFrame = CFrame.new(12.1336823, 4.17776823, -4.01179171, 0.502042472, -0.000225768134, 0.864842951, 0.000113000759, 1.00000834, 0.000195456203, -0.864849985, -3.99100827e-07, 0.502047539)
o12.BottomSurface = Enum.SurfaceType.Smooth
o12.TopSurface = Enum.SurfaceType.Smooth
o12.Color = Color3.new(0.905882, 0.905882, 0.92549)
o12.Color = Color3.new(0.905882, 0.905882, 0.92549)
o13.Parent = o2
o13.BrickColor = BrickColor.new("Fossil")
o13.Rotation = Vector3.new(-0.00999999978, 35.1199989, 0.0199999996)
o13.CanCollide = false
o13.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o13.CFrame = CFrame.new(12.4135151, 4.13782883, -4.25640917, 0.817933738, -0.000248847413, 0.575312555, 0.000196001551, 1.00000846, 0.000153887318, -0.575316489, -1.31072084e-05, 0.817941368)
o13.BottomSurface = Enum.SurfaceType.Smooth
o13.TopSurface = Enum.SurfaceType.Smooth
o13.Color = Color3.new(0.623529, 0.631373, 0.67451)
o13.Color = Color3.new(0.623529, 0.631373, 0.67451)
o14.Parent = o2
o14.Material = Enum.Material.SmoothPlastic
o14.BrickColor = BrickColor.new("Really black")
o14.Rotation = Vector3.new(0, 0.629999995, 0.00999999978)
o14.CanCollide = false
o14.Size = Vector3.new(0.370002419, 0.380000234, 0.300000221)
o14.CFrame = CFrame.new(12.5940952, 4.50669909, -4.2362237, 0.999939919, -0.00023901432, 0.0109635331, 0.00023900198, 1.00000846, 2.62037793e-06, -0.0109626129, 3.71073838e-10, 0.999948502)
o14.BottomSurface = Enum.SurfaceType.Smooth
o14.TopSurface = Enum.SurfaceType.Smooth
o14.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o14.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o15.Parent = o2
o15.Material = Enum.Material.Metal
o15.BrickColor = BrickColor.new("Pearl")
o15.Rotation = Vector3.new(0, 0.629999995, 0.00999999978)
o15.CanCollide = false
o15.Size = Vector3.new(0.0800024197, 0.250000238, 0.300000221)
o15.CFrame = CFrame.new(12.720789, 4.13790607, -4.30649519, 0.999939919, -0.00023901432, 0.0109635331, 0.00023900198, 1.00000846, 2.62037793e-06, -0.0109626129, 3.71073838e-10, 0.999948502)
o15.BottomSurface = Enum.SurfaceType.Smooth
o15.TopSurface = Enum.SurfaceType.Smooth
o15.Color = Color3.new(0.905882, 0.905882, 0.92549)
o15.Color = Color3.new(0.905882, 0.905882, 0.92549)
o16.Parent = o2
o16.BrickColor = BrickColor.new("Fossil")
o16.Rotation = Vector3.new(0.00999999978, -30.1099987, 0.0199999996)
o16.CanCollide = false
o16.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o16.CFrame = CFrame.new(12.8739166, 4.14795494, -4.19200373, 0.865085423, -0.000253115431, -0.501624584, 0.000219001973, 1.00000846, -0.000126912026, 0.50162971, -6.67569111e-08, 0.865092278)
o16.BottomSurface = Enum.SurfaceType.Smooth
o16.TopSurface = Enum.SurfaceType.Smooth
o16.Color = Color3.new(0.623529, 0.631373, 0.67451)
o16.Color = Color3.new(0.623529, 0.631373, 0.67451)
o17.Parent = o2
o17.Material = Enum.Material.Metal
o17.BrickColor = BrickColor.new("Pearl")
o17.Rotation = Vector3.new(0, 0.629999995, 30.0699997)
o17.CanCollide = false
o17.Size = Vector3.new(0.370002478, 0.120000228, 0.130000144)
o17.CFrame = CFrame.new(13.0013018, 5.05734348, -4.35467005, 0.865364432, -0.501023412, 0.0109602921, 0.501057446, 0.865423858, 2.24432806e-05, -0.00949566439, 0.00547180884, 0.999948561)
o17.BottomSurface = Enum.SurfaceType.Smooth
o17.TopSurface = Enum.SurfaceType.Smooth
o17.Color = Color3.new(0.905882, 0.905882, 0.92549)
o17.Color = Color3.new(0.905882, 0.905882, 0.92549)
o18.Parent = o2
o18.Material = Enum.Material.Neon
o18.BrickColor = BrickColor.new("Eggplant")
o18.Rotation = Vector3.new(0, 0.629999995, -89.9899979)
o18.CanCollide = false
o18.Shape = Enum.PartType.Cylinder
o18.Size = Vector3.new(0.48999992, 1.15999997, 1.30999982)
o18.CFrame = CFrame.new(12.586771, 4.26036596, -3.78879094, 0.000245000003, 0.999939919, 0.0109635293, -1.00000846, 0.000244855793, 1.46855382e-05, 1.19998876e-05, -0.0109626055, 0.999948502)
o18.BottomSurface = Enum.SurfaceType.Smooth
o18.TopSurface = Enum.SurfaceType.Smooth
o18.Color = Color3.new(0.482353, 0, 0.482353)
o18.Color = Color3.new(0.482353, 0, 0.482353)
o19.Parent = o2
o19.Material = Enum.Material.Metal
o19.BrickColor = BrickColor.new("Pearl")
o19.Rotation = Vector3.new(0, 0.629999995, 12.8699999)
o19.CanCollide = false
o19.Size = Vector3.new(0.0800024197, 0.170000225, 0.2900002)
o19.CFrame = CFrame.new(12.6530409, 4.55379057, -4.27083921, 0.974806547, -0.22278282, 0.0109562129, 0.222797751, 0.974873364, 2.55261766e-05, -0.0106856115, 0.00241591129, 0.999948502)
o19.BottomSurface = Enum.SurfaceType.Smooth
o19.TopSurface = Enum.SurfaceType.Smooth
o19.Color = Color3.new(0.905882, 0.905882, 0.92549)
o19.Color = Color3.new(0.905882, 0.905882, 0.92549)
o20.Parent = o2
o20.Material = Enum.Material.Metal
o20.BrickColor = BrickColor.new("Pearl")
o20.Rotation = Vector3.new(-0.00999999978, 29.6299992, 0.0199999996)
o20.CanCollide = false
o20.Size = Vector3.new(0.420002431, 0.200000226, 0.2900002)
o20.CFrame = CFrame.new(12.2898045, 4.11280489, -4.19457197, 0.869223297, -0.000238353008, 0.494419813, 0.000207001765, 1.00000846, 0.000118167409, -0.494423091, -3.67785105e-07, 0.869231284)
o20.BottomSurface = Enum.SurfaceType.Smooth
o20.TopSurface = Enum.SurfaceType.Smooth
o20.Color = Color3.new(0.905882, 0.905882, 0.92549)
o20.Color = Color3.new(0.905882, 0.905882, 0.92549)
o21.Parent = o2
o21.Material = Enum.Material.Metal
o21.BrickColor = BrickColor.new("Pearl")
o21.Rotation = Vector3.new(0, 0.629999995, 30.0699997)
o21.CanCollide = false
o21.Size = Vector3.new(0.350002438, 0.120000228, 0.130000204)
o21.CFrame = CFrame.new(13.0757389, 4.90882826, -4.35546923, 0.865364432, -0.501023412, 0.0109602921, 0.501057446, 0.865423858, 2.24432806e-05, -0.00949566439, 0.00547180884, 0.999948561)
o21.BottomSurface = Enum.SurfaceType.Smooth
o21.TopSurface = Enum.SurfaceType.Smooth
o21.Color = Color3.new(0.905882, 0.905882, 0.92549)
o21.Color = Color3.new(0.905882, 0.905882, 0.92549)
o22.Parent = o2
o22.Material = Enum.Material.Metal
o22.BrickColor = BrickColor.new("Pearl")
o22.Rotation = Vector3.new(0, 0.629999995, 30.0699997)
o22.CanCollide = false
o22.Size = Vector3.new(0.330002487, 0.110000268, 0.140000194)
o22.CFrame = CFrame.new(13.142314, 4.7739563, -4.35119486, 0.865364432, -0.501023412, 0.0109602921, 0.501057446, 0.865423858, 2.24432806e-05, -0.00949566439, 0.00547180884, 0.999948561)
o22.BottomSurface = Enum.SurfaceType.Smooth
o22.TopSurface = Enum.SurfaceType.Smooth
o22.Color = Color3.new(0.905882, 0.905882, 0.92549)
o22.Color = Color3.new(0.905882, 0.905882, 0.92549)
o23.Parent = o2
o23.Material = Enum.Material.Metal
o23.BrickColor = BrickColor.new("Pearl")
o23.Rotation = Vector3.new(0, 0.629999995, 0.00999999978)
o23.CanCollide = false
o23.Size = Vector3.new(0.0800024197, 0.250000238, 0.2900002)
o23.CFrame = CFrame.new(12.4452009, 4.13783503, -4.29846525, 0.999939919, -0.00023901432, 0.0109635331, 0.00023900198, 1.00000846, 2.62037793e-06, -0.0109626129, 3.71073838e-10, 0.999948502)
o23.BottomSurface = Enum.SurfaceType.Smooth
o23.TopSurface = Enum.SurfaceType.Smooth
o23.Color = Color3.new(0.905882, 0.905882, 0.92549)
o23.Color = Color3.new(0.905882, 0.905882, 0.92549)
o24.Parent = o2
o24.Material = Enum.Material.Metal
o24.BrickColor = BrickColor.new("Pearl")
o24.Rotation = Vector3.new(0, 0.629999995, -30.1299992)
o24.CanCollide = false
o24.Size = Vector3.new(0.330002487, 0.110000268, 0.130000249)
o24.CFrame = CFrame.new(13.0381289, 4.67515135, -4.35506392, 0.864809334, 0.501980901, 0.0109607317, -0.502015352, 0.864868522, 1.60243653e-05, -0.00947066396, -0.00551580451, 0.999948561)
o24.BottomSurface = Enum.SurfaceType.Smooth
o24.TopSurface = Enum.SurfaceType.Smooth
o24.Color = Color3.new(0.905882, 0.905882, 0.92549)
o24.Color = Color3.new(0.905882, 0.905882, 0.92549)
o25.Parent = o2
o25.BrickColor = BrickColor.new("Fossil")
o25.Rotation = Vector3.new(-0.00999999978, 35.1199989, 0.0199999996)
o25.CanCollide = false
o25.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o25.CFrame = CFrame.new(12.2344007, 4.13779402, -4.13043022, 0.817933738, -0.000248847413, 0.575312555, 0.000196001551, 1.00000846, 0.000153887318, -0.575316489, -1.31072084e-05, 0.817941368)
o25.BottomSurface = Enum.SurfaceType.Smooth
o25.TopSurface = Enum.SurfaceType.Smooth
o25.Color = Color3.new(0.623529, 0.631373, 0.67451)
o25.Color = Color3.new(0.623529, 0.631373, 0.67451)
o26.Parent = o2
o26.BrickColor = BrickColor.new("Fossil")
o26.Rotation = Vector3.new(0.00999999978, -30.1099987, 0.0199999996)
o26.CanCollide = false
o26.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o26.CFrame = CFrame.new(12.7699385, 4.14792395, -4.25231028, 0.865085423, -0.000253115431, -0.501624584, 0.000219001973, 1.00000846, -0.000126912026, 0.50162971, -6.67569111e-08, 0.865092278)
o26.BottomSurface = Enum.SurfaceType.Smooth
o26.TopSurface = Enum.SurfaceType.Smooth
o26.Color = Color3.new(0.623529, 0.631373, 0.67451)
o26.Color = Color3.new(0.623529, 0.631373, 0.67451)
o27.Parent = o2
o27.Material = Enum.Material.SmoothPlastic
o27.BrickColor = BrickColor.new("Really black")
o27.Rotation = Vector3.new(180, -3.27999997, 179.98999)
o27.Shape = Enum.PartType.Cylinder
o27.Size = Vector3.new(0.0500000007, 0.250000238, 1.6000005)
o27.CFrame = CFrame.new(12.2895432, 4.72786093, -4.26638556, -0.998360634, -0.000245401112, -0.0572395623, -0.000245002186, 1.00000846, -1.40238844e-05, 0.0572390407, 2.32175807e-08, -0.998369098)
o27.BottomSurface = Enum.SurfaceType.Smooth
o27.TopSurface = Enum.SurfaceType.Smooth
o27.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o27.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o28.Parent = o2
o28.Material = Enum.Material.SmoothPlastic
o28.BrickColor = BrickColor.new("Really black")
o28.Rotation = Vector3.new(0, 0.629999995, -89.9899979)
o28.CanCollide = false
o28.Shape = Enum.PartType.Cylinder
o28.Size = Vector3.new(0.24999994, 1.25999975, 1.54999959)
o28.CFrame = CFrame.new(12.5879374, 4.09035969, -3.785882, 0.000245000003, 0.999939919, 0.0109635293, -1.00000846, 0.000244855793, 1.46855382e-05, 1.19998876e-05, -0.0109626055, 0.999948502)
o28.BottomSurface = Enum.SurfaceType.Smooth
o28.TopSurface = Enum.SurfaceType.Smooth
o28.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o28.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o29.Parent = o2
o29.Material = Enum.Material.Neon
o29.BrickColor = BrickColor.new("Eggplant")
o29.Rotation = Vector3.new(0, 0.629999995, 0.00999999978)
o29.CanCollide = false
o29.Shape = Enum.PartType.Ball
o29.Size = Vector3.new(0.190001294, 0.190001294, 0.190001294)
o29.CFrame = CFrame.new(12.8344183, 4.76740217, -4.34208727, 0.999939919, -0.00023901432, 0.0109635331, 0.00023900198, 1.00000846, 2.62037793e-06, -0.0109626129, 3.71073838e-10, 0.999948502)
o29.BottomSurface = Enum.SurfaceType.Smooth
o29.TopSurface = Enum.SurfaceType.Smooth
o29.Color = Color3.new(0.482353, 0, 0.482353)
o29.Color = Color3.new(0.482353, 0, 0.482353)
o30.Parent = o2
o30.Material = Enum.Material.Neon
o30.BrickColor = BrickColor.new("Eggplant")
o30.Rotation = Vector3.new(0, 0.629999995, 0.00999999978)
o30.CanCollide = false
o30.Shape = Enum.PartType.Ball
o30.Size = Vector3.new(0.190001294, 0.190001294, 0.190001294)
o30.CFrame = CFrame.new(12.6813812, 4.67232227, -4.34039068, 0.999939919, -0.00023901432, 0.0109635331, 0.00023900198, 1.00000846, 2.62037793e-06, -0.0109626129, 3.71073838e-10, 0.999948502)
o30.BottomSurface = Enum.SurfaceType.Smooth
o30.TopSurface = Enum.SurfaceType.Smooth
o30.Color = Color3.new(0.482353, 0, 0.482353)
o30.Color = Color3.new(0.482353, 0, 0.482353)
o31.Parent = o2
o31.BrickColor = BrickColor.new("Fossil")
o31.Rotation = Vector3.new(0.00999999978, -30.1099987, 0.0199999996)
o31.CanCollide = false
o31.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o31.CFrame = CFrame.new(12.9933138, 4.14798307, -4.12279606, 0.865085423, -0.000253115431, -0.501624584, 0.000219001973, 1.00000846, -0.000126912026, 0.50162971, -6.67569111e-08, 0.865092278)
o31.BottomSurface = Enum.SurfaceType.Smooth
o31.TopSurface = Enum.SurfaceType.Smooth
o31.Color = Color3.new(0.623529, 0.631373, 0.67451)
o31.Color = Color3.new(0.623529, 0.631373, 0.67451)
o32.Name = "r"
o32.Parent = o2
o32.Material = Enum.Material.SmoothPlastic
o32.BrickColor = BrickColor.new("Really black")
o32.Rotation = Vector3.new(0, 0.629999995, -89.9899979)
o32.CanCollide = false
o32.Shape = Enum.PartType.Cylinder
o32.Size = Vector3.new(0.46999985, 1.25999975, 1.54999959)
o32.CFrame = CFrame.new(12.5878134, 4.61972094, -3.7858963, 0.000245000003, 0.999939919, 0.0109635293, -1.00000846, 0.000244855793, 1.46855382e-05, 1.19998876e-05, -0.0109626055, 0.999948502)
o32.BottomSurface = Enum.SurfaceType.Smooth
o32.TopSurface = Enum.SurfaceType.Smooth
o32.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o32.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o33.Parent = o2
o33.BrickColor = BrickColor.new("Fossil")
o33.Rotation = Vector3.new(-0.00999999978, 35.1199989, 0.0199999996)
o33.CanCollide = false
o33.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o33.CFrame = CFrame.new(12.3250799, 4.13780499, -4.19420767, 0.817933738, -0.000248847413, 0.575312555, 0.000196001551, 1.00000846, 0.000153887318, -0.575316489, -1.31072084e-05, 0.817941368)
o33.BottomSurface = Enum.SurfaceType.Smooth
o33.TopSurface = Enum.SurfaceType.Smooth
o33.Color = Color3.new(0.623529, 0.631373, 0.67451)
o33.Color = Color3.new(0.623529, 0.631373, 0.67451)
o34.Parent = o2
o34.Material = Enum.Material.Neon
o34.BrickColor = BrickColor.new("Eggplant")
o34.Rotation = Vector3.new(0, 0.629999995, 0.00999999978)
o34.CanCollide = false
o34.Shape = Enum.PartType.Ball
o34.Size = Vector3.new(0.230001301, 0.230001301, 0.230001301)
o34.CFrame = CFrame.new(12.320076, 4.73971415, -4.26470613, 0.999939919, -0.00023901432, 0.0109635331, 0.00023900198, 1.00000846, 2.62037793e-06, -0.0109626129, 3.71073838e-10, 0.999948502)
o34.BottomSurface = Enum.SurfaceType.Smooth
o34.TopSurface = Enum.SurfaceType.Smooth
o34.Color = Color3.new(0.482353, 0, 0.482353)
o34.Color = Color3.new(0.482353, 0, 0.482353)
o35.Parent = o2
o35.Material = Enum.Material.Metal
o35.BrickColor = BrickColor.new("Pearl")
o35.Rotation = Vector3.new(0, 0.629999995, 12.8699999)
o35.CanCollide = false
o35.Size = Vector3.new(0.520002484, 0.440000206, 0.2900002)
o35.CFrame = CFrame.new(12.8338127, 4.79513836, -4.27282286, 0.974806547, -0.22278282, 0.0109562129, 0.222797751, 0.974873364, 2.55261766e-05, -0.0106856115, 0.00241591129, 0.999948502)
o35.BottomSurface = Enum.SurfaceType.Smooth
o35.TopSurface = Enum.SurfaceType.Smooth
o35.Color = Color3.new(0.905882, 0.905882, 0.92549)
o35.Color = Color3.new(0.905882, 0.905882, 0.92549)
o36.Parent = o2
o36.Material = Enum.Material.Metal
o36.BrickColor = BrickColor.new("Pearl")
o36.Rotation = Vector3.new(0.00999999978, -30.1099987, 0.0199999996)
o36.CanCollide = false
o36.Size = Vector3.new(0.420002431, 0.200000226, 0.2900002)
o36.CFrame = CFrame.new(12.8746452, 4.11295271, -4.2049346, 0.865085423, -0.000253115431, -0.501624584, 0.000219001973, 1.00000846, -0.000126912026, 0.50162971, -6.67569111e-08, 0.865092278)
o36.BottomSurface = Enum.SurfaceType.Smooth
o36.TopSurface = Enum.SurfaceType.Smooth
o36.Color = Color3.new(0.905882, 0.905882, 0.92549)
o36.Color = Color3.new(0.905882, 0.905882, 0.92549)
o37.Parent = o2
o37.BrickColor = BrickColor.new("Fossil")
o37.Rotation = Vector3.new(0.00999999978, -30.1099987, 0.0199999996)
o37.CanCollide = false
o37.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o37.CFrame = CFrame.new(12.7551317, 4.46699476, -4.21234465, 0.865085423, -0.000253115431, -0.501624584, 0.000219001973, 1.00000846, -0.000126912026, 0.50162971, -6.67569111e-08, 0.865092278)
o37.BottomSurface = Enum.SurfaceType.Smooth
o37.TopSurface = Enum.SurfaceType.Smooth
o37.Color = Color3.new(0.623529, 0.631373, 0.67451)
o37.Color = Color3.new(0.623529, 0.631373, 0.67451)
mas.Parent = workspace
mas:MakeJoints()

local Player_Size = 1
if Player_Size ~= 1 then
	root.Size = root.Size * Player_Size
	tors.Size = tors.Size * Player_Size
	hed.Size = hed.Size * Player_Size
	ra.Size = ra.Size * Player_Size
	la.Size = la.Size * Player_Size
	rl.Size = rl.Size * Player_Size
	ll.Size = ll.Size * Player_Size
	----------------------------------------------------------------------------------
	rootj.Parent = root
	neck.Parent = tors
	RW.Parent = tors
	LW.Parent = tors
	RH.Parent = tors
	LH.Parent = tors
	----------------------------------------------------------------------------------
	rootj.C0 = RootCF * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0))
	rootj.C1 = RootCF * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0))
	neck.C0 = necko * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0))
	neck.C1 = CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * angles(Rad(-90), Rad(0), Rad(180))
	RW.C0 = CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0)) --* RIGHTSHOULDERC0
	LW.C0 = CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0)) --* LEFTSHOULDERC0
	----------------------------------------------------------------------------------
	RH.C0 = CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
	LH.C0 = CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
	RH.C1 = CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
	LH.C1 = CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
	--hat.Parent = Character
end
----------------------------------------------------------------------------------
local Music = Instance.new("Sound")
----------------------------------------------------------------------------------
local equipped = false
local idle = 0
local change = 1
local val = 0
local toim = 0
local idleanim = 0.4
local sine = 0
local Sit = 1
local WasAir = false
local InAir = false
local LandTick = 0
local movelegs = false
local Speed = 35
local Firing = false

game.Players.LocalPlayer.Character.StrawHat.Handle.Mesh:Destroy()
game.Players.LocalPlayer.Character.StrawHat.Parent = workspace
game:GetService("RunService").Stepped:wait()
v = game.Workspace["StrawHat"].Handle
local Outline = Instance.new("SelectionBox", v)
Outline.LineThickness = 0.1
Outline.Color3 = Color3.fromRGB(195, 130, 0)
Outline.Adornee = v
v.Transparency = 0.5
local temp = Instance.new("BodyPosition")
temp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
temp.P = 1000000
temp.Parent = v
game:GetService("RunService").Stepped:wait()
local temp1 = Instance.new("BodyThrust")
temp1.Location = Vector3.new(5,0,0)
temp1.Force = Vector3.new(100000,100000,100000)
temp1.Parent = v
v.CanCollide = false
----------------------------------------------------------------------------------
hum.JumpPower = 55
-------------------------------------------------------
--End Customization--
-------------------------------------------------------


-------------------------------------------------------
--Start Attacks N Stuff--
-------------------------------------------------------
function AttackTemplate()
	attack = true
	for i = 0, 2, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
		neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0 + 5 * Sin(sine / 20)), Rad(10 + 5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0 - 5 * Sin(sine / 20)), Rad(-10 - 5 * Sin(sine / 20))), 0.1)
	end
	attack = false
end
local Camera = workspace.CurrentCamera
function ShootEmUp()
	attack = true
	Speed = 5
	movelegs = true
	repeat
		swait()
		for i = 0, 0.3, 0.2 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(60)), 0.3)
			neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(20 - 5 * Sin(sine / 20)), Rad(0), Rad(-60)), 0.3)
			rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.3)
			ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.3)
			RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(90), Rad(0), Rad(45)), 0.3)
			LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0 - 5 * Sin(sine / 20)), Rad(-10 - 5 * Sin(sine / 20))), 0.3)
		end
		local part, pos = rayCast(Cylinder1.Position,((mouse.Hit.p+Vector3.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)) - Cylinder1.Position),200,char)
		Effects.Block(Cylinder1.CFrame,Vector3.new(.4,.4,.4),Vector3.new(),Vector3.new(.6,.6,.6),"Neon","Bright yellow",true,false,.1)
		Effects.Block(CFrame.new(pos),Vector3.new(.4,.4,.4),Vector3.new(),Vector3.new(.1,.1,.1),"Neon","Bright yellow",true,false,.1)
		Effects.Block(CFrame.new((Cylinder1.Position + pos)/2,pos),Vector3.new(.2,.2,(Cylinder1.Position - pos).magnitude),Vector3.new(0,0,1),Vector3.new(.1,.1,0),"Neon","Bright yellow",false,false,.1)
		Cso("2817399659", Cylinder1, 10, Mrandom(90,110)/100)
		local WWWWWWWWWWOAH = Instance.new("Part",Camera)
		WWWWWWWWWWOAH.Anchored = true
		WWWWWWWWWWOAH.Transparency = 1
		WWWWWWWWWWOAH.CanCollide = false
		WWWWWWWWWWOAH.Size = Vector3.new()
		WWWWWWWWWWOAH.CFrame = CFrame.new(pos)
		MagniDamage(WWWWWWWWWWOAH, 3, 18, 2, 10, "Normal")
		for i = 0, 1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(60)), 0.3)
			neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(20 - 5 * Sin(sine / 20)), Rad(0), Rad(-60)), 0.3)
			rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.3)
			ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.3)
			RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(110), Rad(0), Rad(45)), 0.3)
			LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0 - 5 * Sin(sine / 20)), Rad(-10 - 5 * Sin(sine / 20))), 0.3)
		end
	until Firing == false
	Speed = 35
	attack = false
	movelegs = false
		repeat wait() until attack == true
		repeat
			game:GetService("RunService").Heartbeat:Wait()
			if Firing == true then
				temp.Position = game.Players.LocalPlayer:GetMouse().Hit.p
			end
		until attack == false
end
Sitt = false
function SittyBoi()
	attack = true
	Sitt = true
	Speed = 0
	repeat
		swait()
		for i = 0, 1, 0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -1.6 + 0.1 * Player_Size * Cos(sine / 20)) * angles(Rad(-15), Rad(0), Rad(0)), 0.1)
			neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0.05 + ((1* Player_Size) - 1)) * angles(Rad(25 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.1)
			rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.6* Player_Size, -0.2 - 0.1 * Cos(sine / 20)* Player_Size, -0.5* Player_Size) * angles(Rad(20), Rad(-10), Rad(0)), 0.1)
			ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -1.1 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(75), Rad(5), Rad(-10)), 0.1)
			RW.C0 = clerp(RW.C0, CF(1.2* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, -0.2* Player_Size) * angles(Rad(80), Rad(40), Rad(-30)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.2 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-15), Rad(20), Rad(-15)), 0.1)
		end
	until Sitt == false
	attack = false
	Speed = 35
end
function Maniac()
	attack = true
	movelegs = true
	Speed = 4
	local Laugh = Cso("333446256", hed, 10, 1)
	swait(4)
	repeat
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 2)) * angles(Rad(0), Rad(0), Rad(-15)), 0.1)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(20 - 2.5 * Sin(sine / 2)), Rad(0), Rad(15)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 2)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 2)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.3 + 0.1 * Sin(sine / 2)* Player_Size, 0* Player_Size) * angles(Rad(210), Rad(0), Rad(-10)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Cos(sine / 2)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(20), Rad(-5 + 4.5 * Sin(sine / 2))), 0.1)
	until Laugh.Playing == false
	attack = false
	movelegs = false
	Speed = 35
end
local VALUE1 = false
-------------------------------------------------------
--End Attacks N Stuff--
-------------------------------------------------------
mouse.Button1Down:connect(function()
	Firing = true
	if attack == false then
		ShootEmUp()
		--[[
		repeat wait() until attack == true
		repeat
			game:GetService("RunService").Heartbeat:Wait()
			if Firing == true then
				temp.Position = plr:GetMouse().Hit.p
			end
		until attack == false
		--]]
	end
end)
mouse.Button1Up:connect(function()
	Firing = false
end)
mouse.KeyDown:connect(function(key)
	if (VALUE1 == false and attack == false) or Sitt == true then
		if key == "q" then
			if Sitt == false then
				SittyBoi()
			elseif Sitt == true then
				Sitt = false
			end
		end
	end
	if attack == false then
		if key == "t" then
			Maniac()
		end
	end
	if key == "l" then
		Muted = not Muted
	end
end)

local Hue = 0

coroutine.resume(coroutine.create(function()
	repeat wait()
		Hue = Hue + 1
		if (Hue>360) then Hue = 0 end
	until nil
end))

-------------------------------------------------------
--Fake Name--
-------------------------------------------------------

local fh = Instance.new'Model'
fh.Parent = char
fh.Name = FAKENAME
hm = Instance.new'Humanoid'
hm.Parent = fh
hm.MaxHealth = hum.MaxHealth
hm.Health = hum.Health
local c1 = hed:Clone()
c1.Parent = fh
c1.CanCollide = true
if c1:FindFirstChild'face' then
	c1.face:Destroy()
end
local w = Instance.new'Weld'
w.Parent = hed
w.Part1 = c1
w.Part0 = hed
hed.Transparency = 1

-------------------------------------------------------
--Start Animations--
-------------------------------------------------------
while true do
	swait()
	sine = sine + change
	local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
	local velderp = root.Velocity.y
	hitfloor, posfloor = rayCast(root.Position, CFrame.new(root.Position, root.Position - Vector3.new(0, 1, 0)).lookVector, 4* Player_Size, char)
	if equipped == true or equipped == false then
		if attack == false then
			idle = idle + 1
		else
			idle = 0
		end
		local Landed = false
		if(hitfloor)then
			WasAir = false
		else
			WasAir = true
		end
		if(WasAir == false)then
			if(InAir == true)then
				LandTick = time()
				Landed = true
			end
		end
		if(time()-LandTick < .3)then
			Landed = true
		end
		if(hitfloor)then
			InAir = false
		else
			InAir = true
		end
		local Walking = (math.abs(root.Velocity.x) > 1 or math.abs(root.Velocity.z) > 1)
		local State = (hum.PlatformStand and 'Paralyzed' or hum.Sit and 'Sit' or Landed and 'Land' or not hitfloor and root.Velocity.y < -1 and "Fall" or not hitfloor and root.Velocity.y > 1 and "Jump" or hitfloor and Walking and "Walk" or hitfloor and "Idle")
		local WALKSPEEDVALUE = 6 / (hum.WalkSpeed / 16)
		if hum.Sit == false then
			if(State == 'Jump')then
				hum.JumpPower = 55
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(-16), Rad(0), Rad(0)), 0.1)
					neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
					rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -.2 - 0.1 * Cos(sine / 20), -.3* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.1)
					ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -.9 - 0.1 * Cos(sine / 20), -.5* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.1)
					RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(13 + 4.5 * Sin(sine / 20))), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(-13 - 4.5 * Sin(sine / 20))), 0.1)
				end
			elseif(State == 'Fall')then
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(24), Rad(0), Rad(0)), 0.1)
					neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
					rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(-3.5), Rad(0), Rad(0)), 0.1)
					ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -.8 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(-3.5), Rad(0), Rad(0)), 0.1)
					RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(65), Rad(-.6), Rad(45 + 4.5 * Sin(sine / 20))), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(55), Rad(-.6), Rad(-45 - 4.5 * Sin(sine / 20))), 0.1)
				end
			elseif(State == 'Land')then
				hum.JumpPower = 0
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
					neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(35 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
					rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, 0.1 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(-3.5), Rad(0), Rad(10)), 0.15)
					ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, 0.1 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(-3.5), Rad(0), Rad(-10)), 0.15)
					RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(65), Rad(-.6), Rad(25 + 4.5 * Sin(sine / 20))), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(55), Rad(-.6), Rad(-25 - 4.5 * Sin(sine / 20))), 0.1)
				end
			elseif(State == 'Idle')then
				change = 1
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 24) * Player_Size) * angles(Rad(0 - 4 * Sin(sine / 24)), Rad(0 + 1 * Cos(sine / 24)), Rad(-10)), 0.1)
					neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(7 - 2 * Sin(sine / 20)), Rad(0), Rad(10)), 0.1)
					rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 * Player_Size - 0.1 * Cos(sine / 24) - Rad(0 + 1 * Cos(sine / 24)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 24)), Rad(0 + 1 * Cos(sine / 24)), Rad(0)) * angles(Rad(0 + 1 * Cos(sine / 24)), Rad(0), Rad(5)), 0.1)
					ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 * Player_Size - 0.1 * Cos(sine / 24) + Rad(0 + 1 * Cos(sine / 24)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 24)), Rad(-0 + 1 * Cos(sine / 24)), Rad(0)) * angles(Rad(0 - 1 * Cos(sine / 24)), Rad(0), Rad(-5)), 0.1)
					RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(70), Rad(0 + 5 * Sin(sine / 20)), Rad(-30 + 5 * Sin(sine / 20))), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0 - 5 * Sin(sine / 20)), Rad(10 - 5 * Sin(sine / 20))), 0.1)
				end
			elseif(State == 'Walk')then
				change = 0.76
				hum.JumpPower = 55
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.3 - 0.15 * Cos(sine / (WALKSPEEDVALUE / 2))) * angles(Rad(25), Rad(0), Rad(0 - 10 * Cos(sine / WALKSPEEDVALUE )) + root.RotVelocity.Y / 75), 0.1)
					neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-5 + 5 * Sin(sine / (WALKSPEEDVALUE / 2))), Rad(0), Rad(0 + 10 * Cos(sine / WALKSPEEDVALUE)) + root.RotVelocity.Y / 13), 0.1)
					rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.8 - 0.5 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size, 0.6 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size)  * angles(Rad(-10 - 65 * Cos(sine / WALKSPEEDVALUE)) - root.RotVelocity.Y / 75 + -Sin(sine / WALKSPEEDVALUE) / 2.5, Rad(0 - 10 * Cos(sine / WALKSPEEDVALUE)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / WALKSPEEDVALUE)), Rad(0), Rad(0)), 0.3)
					ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.8 + 0.5 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size, -0.6 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size) * angles(Rad(-10 + 65 * Cos(sine / WALKSPEEDVALUE)) + root.RotVelocity.Y / -75 + Sin(sine / WALKSPEEDVALUE) / 2.5, Rad(0 - 10 * Cos(sine / WALKSPEEDVALUE)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / WALKSPEEDVALUE)), Rad(0), Rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.3 + 0.05 * Cos(sine / WALKSPEEDVALUE)* Player_Size, 0* Player_Size) * angles(Rad(210), Rad(0), Rad(-10)), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Cos(sine / WALKSPEEDVALUE)* Player_Size, 0 + 0.5 * Cos(sine / WALKSPEEDVALUE)* Player_Size) * angles(Rad(-125 * Cos(sine / WALKSPEEDVALUE)) + root.RotVelocity.Y / 75, Rad(10 * Cos(sine / WALKSPEEDVALUE)), Rad(-20) + root.RotVelocity.Y / -75), 0.1)
				elseif attack == true and movelegs == true then
					rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.8 - 0.5 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size, 0.6 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size)  * angles(Rad(-10 - 25 * Cos(sine / WALKSPEEDVALUE)) - root.RotVelocity.Y / 75 + -Sin(sine / WALKSPEEDVALUE) / 2.5, Rad(0 - 10 * Cos(sine / WALKSPEEDVALUE)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / WALKSPEEDVALUE)), Rad(0), Rad(0)), 0.3)
					ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.8 + 0.5 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size, -0.6 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size) * angles(Rad(-10 + 25 * Cos(sine / WALKSPEEDVALUE)) + root.RotVelocity.Y / -75 + Sin(sine / WALKSPEEDVALUE) / 2.5, Rad(0 - 10 * Cos(sine / WALKSPEEDVALUE)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / WALKSPEEDVALUE)), Rad(0), Rad(0)), 0.3)
				end
			end
		else
			Sit.Value = true
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.5 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(5)), 0.1)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-5 - 2.5 * Sin(sine / 30)), Rad(0), Rad(-5)), 0.1)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(1* Player_Size, -0.35 - 0.05 * Cos(sine / 20)* Player_Size, -0.5* Player_Size) * angles(Rad(15), Rad(75), Rad(0)) * angles(Rad(-5), Rad(0), Rad(5)), 0.1)
				ll.Weld.C0 = clerp(ll.Weld.C0, CF(-1* Player_Size, -0.35 - 0.05 * Cos(sine / 20)* Player_Size, -0.5* Player_Size) * angles(Rad(15), Rad(-75), Rad(0)) * angles(Rad(-5), Rad(0), Rad(5)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1.3* Player_Size, 0.4 + 0.1 * Sin(sine / 20)* Player_Size, -0.3* Player_Size) * angles(Rad(35), Rad(-20), Rad(-45 - 4.5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.3* Player_Size, 0.4 + 0.1 * Sin(sine / 20)* Player_Size, -0.3* Player_Size) * angles(Rad(35), Rad(20), Rad(45 + 4.5 * Sin(sine / 20))), 0.1)
			end
		end
	end
	hum.WalkSpeed = Speed
	Music.SoundId = "rbxassetid://"..SONG
	Music.Looped = true
	Music.Pitch = PITCH
	Music.Volume = math.clamp((Muted and Music.Volume-.5 or Music.Volume+.5),0,VOLUME)
	Music.Parent = tors
	Music.Playing = true
	fh.Name = FAKENAME
	if not Muted then
	else
	end
	if 0 < #Effects then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if 1 >= Thing[1].Transparency then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame + Vector3.new(0, 0, 0)
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block3" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) + Vector3.new(0, 0.15, 0)
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							local Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Shatter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
end
-------------------------------------------------------
--End Animations And Script--
-------------------------------------------------------

-------------------------------------------------
