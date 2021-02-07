--gh 1033722

plr = game.Players.LocalPlayer
dead = false
char = plr.Character




bull = char["RunningBull"]
bhandle = bull.Handle
bhandle.Mesh:Destroy()
bhandle.Transparency = 0.5
sel = Instance.new("SelectionBox", bhandle)
sel.Adornee = bhandle
sel.Color3 = Color3.fromRGB(255,0,0)
wait()
bull.Parent = workspace

mouse = plr:GetMouse()
head = char.Head
camera = workspace.CurrentCamera
lt = true
ltt = false

local function IsFirstPerson()
     return (head.CFrame.p - camera.CFrame.p).Magnitude < 1
end

     bbv = Instance.new("BodyVelocity",bhandle)


     

     
     mouse.Button1Down:Connect(function()
         
         if dead == false then
        lt = false
        ltt = true
        
        

        ltt = false
             bbav = Instance.new("BodyAngularVelocity",bhandle)
     bbav.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
     bbav.P = 1000000000000000
     bbav.AngularVelocity = Vector3.new(1000000000000000,1000000000000000,1000000000000000)
      if game.Players:GetPlayerFromCharacter(mouse.Target.Parent) then
              repeat 
            game:GetService("RunService").RenderStepped:Wait()
            bhandle.Position = mouse.Target.Parent.HumanoidRootPart.CFrame.p
            wait(0.5)
            until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
        elseif game.Players:GetPlayerFromCharacter(mouse.Target.Parent.Parent) then
            repeat 
            game:GetService("RunService").RenderStepped:Wait()
            bhandle.Position = mouse.Target.Parent.Parent.HumanoidRootPart.CFrame.p
            wait(0.5)
            until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
            
            else
        repeat 
        game:GetService("RunService").RenderStepped:Wait()
        bhandle.Position = mouse.Hit.p
        wait(0.5)
        until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
        end
        wait()
        lt = true
         end
         end)
         
     char.Humanoid.Died:Connect(function()
         dead = true
     end)
     repeat 
         game:GetService("RunService").RenderStepped:Wait()
         if dead == false and bhandle.CanCollide == true then
         bhandle.CanCollide = false
         end
         if lt == true and dead == false then
         bhandle.CFrame = char.Head.CFrame + Vector3.new(0,-15,0)
         elseif ltt == true and dead == false then
        bhandle.CFrame = ghandle.CFrame * CFrame.new(-1.7,-2,0)
        bhandle.Rotation = char.HumanoidRootPart.Rotation
         end
     until char.Humanoid.Health == 0
