print("Succesfully injected !")


-- Variables
local CoreGui = game:GetService("StarterGui")
local player = game.Players.LocalPlayer

-- Lib
local esp = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua", true))()

-- Settings
esp.Keybind = 'p'

CoreGui:SetCore("SendNotification", {
		Title = "ESP Injected";
		Text = "Press "..string.upper(_G.Settings['ESP_Keybind']).." to toggle";
		Duration = 5;
		Icon = "rbxthumb://type=Asset&id=8217650146&w=150&h=150";
})

player:GetMouse().KeyDown:connect(function(key)
	if key == esp.Keybind then
		if esp.Enabled == true then
			esp:Toggle(false)
		else
			esp:Toggle(true)
		end
	end
end)

function esp:SetPremade(premade)
	if premade = "arsenal" then
		esp.FaceCamera = true
		esp.Names = false
		esp.TeamMates = false
	end
end

return esp
