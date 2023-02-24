local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/JeffThaChad/temp_fix/main/hydra.solutions_ui.lua"))({cheatname = "hydra.solutions v1", gamename = "universal"});library:init()

--local window = library.NewWindow({title = library.cheatname.. " || "..library.gamename, size = UDim2.new(0, 625, 0, 808)});library:CreateSettingsTab(window)
local window = library.NewWindow({title = "L + BOZO", size = UDim2.new(0, 625, 0, 808)});library:CreateSettingsTab(window)

local init_tick = tick()
local local_player_name = game["Players"].LocalPlayer.Name

local combat_tab = window:AddTab("combat", 1)
local esp_tab = window:AddTab("esp", 2)
local visuals_tab = window:AddTab("visuals", 3)
local misc_tab = window:AddTab("misc", 4)

local function get_service(a)
    return game:GetService(a)
end

local options = {}

local local_player_misc = misc_tab:AddSection("local_player", 1)

local_player_misc:AddToggle({text = "keybind indicator", flag = "keybind_indicator", callback = function(bool)
    library.keyIndicator:SetEnabled(bool);
end})

library:SendNotification("welcome "..local_player_name.."! "..string.format("hydra loaded! %dms", math.round((tick() - init_tick) * 1000)))