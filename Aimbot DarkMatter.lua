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
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local Player = game.Players.LocalPlayer

-- --- CÍRCULO DE FOV (Sistema Robusto) ---
local FOVCircle = nil
local drawingSuccess, err = pcall(function()
    FOVCircle = Drawing.new("Circle")
    FOVCircle.Thickness = 2
    FOVCircle.Filled = false
    FOVCircle.Color = Color3.fromRGB(150, 80, 255)
    FOVCircle.Transparency = 1
    FOVCircle.Visible = false
    return FOVCircle
end)

if not drawingSuccess then
    warn("Tu ejecutor no soporta la librería Drawing. El círculo de FOV no será visible.")
end

-- --- LÓGICA DEL AIMBOT ---
local function GetClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = Settings.Fov
    local ViewportSize = Camera.ViewportSize
    local ScreenCenter = Vector2.new(ViewportSize.X / 2, ViewportSize.Y / 2)

    for _, v in pairs(game.Players:GetPlayers()) do
        if v ~= Player and v.Character and v.Character:FindFirstChild(Settings.HitPart) and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
            
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

-- Bucle Principal (Optimizado)
RunService.RenderStepped:Connect(function()
    Camera = workspace.CurrentCamera
    local ViewportSize = Camera.ViewportSize
    local ScreenCenter = Vector2.new(ViewportSize.X / 2, ViewportSize.Y / 2)

    -- Actualizar Círculo FOV si existe
    if FOVCircle then
        FOVCircle.Visible = Settings.FovVisible
        FOVCircle.Radius = Settings.Fov
        FOVCircle.Position = ScreenCenter
    end

    if Settings.Enabled then
        local Target = GetClosestPlayer()
        if Target and Target.Character and Target.Character:FindFirstChild(Settings.HitPart) then
            local TargetPos, onScreen = Camera:WorldToViewportPoint(Target.Character[Settings.HitPart].Position)
            
            if onScreen then
                -- Calcular dirección del movimiento
                local MoveX = (TargetPos.X - ScreenCenter.X) / Settings.Smoothing
                local MoveY = (TargetPos.Y - ScreenCenter.Y) / Settings.Smoothing
                
                -- Intento de movimiento (mousemoverel es el estándar, si falla usamos alternativas)
                if mousemoverel then
                    mousemoverel(MoveX, MoveY)
                elseif sethiddenproperty then -- Alternativa para algunos ejecutores
                    local currentCFrame = Camera.CFrame
                    Camera.CFrame = CFrame.new(currentCFrame.Position, Target.Character[Settings.HitPart].Position)
                end
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

addLabel(Col2, "Nota: Si el círculo no aparece, tu ejecutor no soporta 'Drawing'.", false)
addLabel(Col2, "Nota 2: Smoothing 1 es el más rápido.", false)
