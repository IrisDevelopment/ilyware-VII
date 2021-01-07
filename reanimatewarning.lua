local s = Instance.new("Sound")

s.Name = "Sound"
s.SoundId = "https://web.roblox.com/asset/?id=570433034"
s.Volume = 1
s.Looped = false
s.archivable = false

s.Parent = game.Workspace

wait(1)

s:play()
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "ILY-VII";
	Text = "Always remember to execute the reanim before you execute the script. Thanks for using ILY-VII!";
	Icon = "rbxthumb://type=Asset&id=4360506542&w=150&h=150"})
Duration = 400;
