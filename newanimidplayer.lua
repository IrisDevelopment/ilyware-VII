local LocalPlayer = game:GetService("Players").LocalPlayer

-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.Position = UDim2.new(0.192982465, 0, 0.202643186, 0)
Frame.Size = UDim2.new(0, 339, 0, 197)
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.185840696, 0, -0.0355329961, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.Text = "Animation ID Player"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.185840696, 0, 0.0964467078, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.GothamBlack
TextLabel_2.Text = "Ilyware:"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
TextBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Position = UDim2.new(0.185840711, 0, 0.35025382, 0)
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Font = Enum.Font.Gotham
TextBox.PlaceholderText = "ANIM ID HERE"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(178, 178, 178)
TextBox.TextSize = 14.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.185840696, 0, 0.725888312, 0)
TextButton.Size = UDim2.new(0, 200, 0, 29)
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "EXECUTE"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

function Align(Part1,Part0,Position,Angle)
    local AlignPos = Instance.new('AlignPosition', Part1);
    AlignPos.Parent.CanCollide = false;
    AlignPos.ApplyAtCenterOfMass = true;
    AlignPos.MaxForce = 67752;
    AlignPos.MaxVelocity = math.huge/9e110;
    AlignPos.ReactionForceEnabled = false;
    AlignPos.Responsiveness = 200;
    AlignPos.RigidityEnabled = false;
    local AlignOri = Instance.new('AlignOrientation', Part1);
    AlignOri.MaxAngularVelocity = math.huge/9e110;
    AlignOri.MaxTorque = 67752;
    AlignOri.PrimaryAxisOnly = false;
    AlignOri.ReactionTorqueEnabled = false;
    AlignOri.Responsiveness = 200;
    AlignOri.RigidityEnabled = false;
    local AttachmentA=Instance.new('Attachment',Part1);
    local AttachmentB=Instance.new('Attachment',Part0);
    AttachmentB.Orientation = Angle
    AttachmentB.Position = Position
    AlignPos.Attachment0 = AttachmentA;
    AlignPos.Attachment1 = AttachmentB;
    AlignOri.Attachment0 = AttachmentA;
    AlignOri.Attachment1 = AttachmentB;
end

function LoadLibrary(a)
    return loadstring(game:HttpGet("https://pastebin.com/raw/KstdzZVB", true))() 
end

function swait(n)
    if n > 1 then for i = 1, n do
        game.RunService.Heartbeat:Wait();
    end elseif n == 1 then game.RunService.Heartbeat:Wait() elseif n == 0 then game.RunService.RenderStepped:Wait() end
end


game:GetService("RunService").Heartbeat:Connect(function()
    LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge) * math.huge
    pcall(function() sethiddenproperty(LocalPlayer, "SimulationRadius", math.pow(math.huge, math.huge) * math.huge) end)

    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= LocalPlayer then
            LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge) * math.huge
            pcall(function() settings().Physics.AllowSleep = false ; sethiddenproperty(LocalPlayer, "SimulationRadius", math.pow(math.huge, math.huge) * math.huge) end)
            LocalPlayer.ReplicationFocus = Workspace
        end
    end
end)

TextButton.MouseButton1Down:Connect(function()
    if game:GetService("Workspace"):FindFirstChild("aeaeaehajkgfhsjkdgfafklgryhugbjfdsjihgler Cloned Character") then
        game:GetService("Workspace"):FindFirstChild("aeaeaehajkgfhsjkdgfafklgryhugbjfdsjihgler Cloned Character"):Destroy()
    end

    
    
    
 
    

    wait()

    local kfs = game:GetObjects('rbxassetid://' .. tostring(TextBox.Text))[1];
    local poses = {};
    local frames = {};
    local plr = game.Players.LocalPlayer;
    local chr = plr.Character.Dummy;
    local hum = chr.Humanoid;
    for i, v in pairs(kfs:GetChildren()) do
        table.insert(frames, v.Time)
        poses[v.Time] = {};
        for o, b in pairs(v:GetDescendants()) do
            b.Parent = v;
            table.insert(poses[v.Time], b);
        end
    end
    hum.Animator.Parent = nil;
    for i, v in pairs(hum:GetPlayingAnimationTracks()) do
        v:Stop();
    end
    local timex = 1;
    local run = true;
    spawn(function()
        hum.Died:Connect(function()
            run = false
        end)
    end);
    while run do
        for i, v in pairs(frames) do
            swait(timex);
            for o, b in pairs(poses[v]) do
                if b.Name == 'Left Leg' then
                    chr.Torso['Left Hip'].Transform = b.CFrame;
                end
                if b.Name == 'Right Leg' then
                    chr.Torso['Right Hip'].Transform = b.CFrame;
                end
                if b.Name == 'Left Arm' then
                    chr.Torso['Left Shoulder'].Transform = b.CFrame;
                end
                if b.Name == 'Right Arm' then
                    chr.Torso['Right Shoulder'].Transform = b.CFrame;
                end
                if b.Name == 'Torso' then
                    chr.HumanoidRootPart['RootJoint'].Transform = b.CFrame;
                end
                if b.Name == 'Head' then
                    chr.Torso['Neck'].Transform = b.CFrame;
                end
            end
        end
    end

end)
