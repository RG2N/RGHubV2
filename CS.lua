local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local ac = false


local Window = OrionLib:MakeWindow({Name = "Clicker Simulator", HidePremium = false, SaveConfig = true, ConfigFolder = "RGHubConfig", IntroText = "RGHub"})

local Tab = Window:MakeTab({
	Name = "Clicking",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Auto Clicker",
	Callback = function()
		ac = true
	end    
})

while true do
	if ac then
		local MyButton = game.Players.LocalPlayer.PlayerGui.mainUI.clickerButton
		for _,button in pairs(getconnections(MyButton.MouseButton1Click)) do
			while true do
				button:Fire()
				wait(0.1)
			end
		end
	end
	wait(0.1)
end
