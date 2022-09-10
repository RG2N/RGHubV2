local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()


local Window = OrionLib:MakeWindow({Name = "Race Clicker", HidePremium = false, SaveConfig = true, ConfigFolder = "RGHubConfig", IntroText = "RGHub"})

local Tab = Window:MakeTab({
	Name = "Basic",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Get Wins",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RG2N/RGHubV2/main/RC-S.lua", true))()
	end    
})

Tab:AddButton({
	Name = "Auto Click",
	Callback = function()
		while true do
			mouse1click()
			wait(0.1)
		end  
	end  
})
