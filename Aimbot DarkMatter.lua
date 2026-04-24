-- Archivo: Combat.lua
local createTab, createColumn, addLabel, addButton, addToggle, addKeybind, addDropdown, addSlider = ...

-- --- VARIABLES DE CONFIGURACIÓN ---
local Settings = {
    Enabled = false,
    TeamCheck = true,
    HitPart = "Head",
    Fov = 150,
    Smoothing = 5, -- 1 = Instantáneo, valores altos = más lento/disimulado
    FovVisible = false
}

-- --- OBJETOS DEL JUEGO ---
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()

-- --- CÍRCULO DE FOV ---
local FOVCircle = Drawing.new("Circle")
FOVCircle.Thickness = 1.5
FOVCircle.Filled = false
FOVCircle.Color = Color3.fromRGB(150, 80, 255) -- Mismo púrpura que la UI
FOVCircle.Transparency = 0.7
FOVCircle.Visible = false

-- --- LÓGICA DEL AIMBOT ---
local function GetClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = Settings.Fov
    local ScreenCenter = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

    for _, v in pairs(game.Players:GetPlayers()) do
        if v ~= Player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
            
            -- Team Check
            if Settings.TeamCheck and v.Team == Player.Team then continue end

            local pos, onScreen = Camera:WorldToViewportPoint(v.Character[Settings.HitPart].Position)
            if onScreen then
                local distance = (Vector2.new(pos.X, pos.Y) - ScreenCenter).Magnitude
                if distance < shortestDistance then
                    closestPlayer = v
                    shortestDistance = distance
                end
            end
        end
    end
    return closestPlayer
end

-- Bucle Principal
RunService.RenderStepped:Connect(function()
    -- Actualizar referencias constantes
    Camera = workspace.CurrentCamera
    local ScreenCenter = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

    -- Actualizar Círculo FOV
    FOVCircle.Visible = Settings.FovVisible
    FOVCircle.Radius = Settings.Fov
    FOVCircle.Position = ScreenCenter

    if Settings.Enabled then
        local Target = GetClosestPlayer()
        if Target and Target.Character and Target.Character:FindFirstChild(Settings.HitPart) then
            local TargetPos, onScreen = Camera:WorldToViewportPoint(Target.Character[Settings.HitPart].Position)
            
            if onScreen then
                -- Calcular movimiento con suavizado (Smoothing)
                local MoveX = (TargetPos.X - ScreenCenter.X) / Settings.Smoothing
                local MoveY = (TargetPos.Y - ScreenCenter.Y) / Settings.Smoothing
                
                mousemoverel(MoveX, MoveY) -- Requiere un executor que soporte mousemoverel
            end
        end
    end
end)

-- --- CONSTRUCCIÓN DE LA INTERFAZ ---
local PageCombat = createTab("Combat & Aim", "🎯")
local Col1 = createColumn(PageCombat, "Main Aimbot")

addToggle(Col1, "Enable Aimbot", function(state)
    Settings.Enabled = state
end)

addToggle(Col1, "Team Check", function(state)
    Settings.TeamCheck = state
end)

addDropdown(Col1, "Target Part", {"Head", "UpperTorso", "HumanoidRootPart"}, function(selected)
    Settings.HitPart = selected
end)

local Col2 = createColumn(PageCombat, "FOV & Speed")

addSlider(Col2, "Aimbot FOV", 30, 800, 150, function(val)
    Settings.Fov = val
end)

addSlider(Col2, "Smoothing (Speed)", 1, 20, 5, function(val)
    Settings.Smoothing = val
end)

addToggle(Col2, "Show FOV Circle", function(state)
    Settings.FovVisible = state
end)

addLabel(Col2, "Note: Lower Smoothing = Faster Aim", false)
