-- Esperar a que la configuración global sea creada por el Panel UI
repeat task.wait() until _G.AimbotConfig

local Player = game.Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera

-- --- CREACIÓN DE CÍRCULO FOV ---
local FovGui = Instance.new("ScreenGui", PlayerGui)
FovGui.Name = "FovSystem"
FovGui.IgnoreGuiInset = true

local FovCircle = Instance.new("Frame", FovGui)
FovCircle.AnchorPoint = Vector2.new(0.5, 0.5)
FovCircle.Position = UDim2.new(0.5, 0, 0.5, 0)
FovCircle.BackgroundTransparency = 1
-- Tamaño ajustado para que el radio coincida visualmente con el área de acción
FovCircle.Size = UDim2.new(0, _G.AimbotConfig.FovRadius * 2, 0, _G.AimbotConfig.FovRadius * 2)
FovCircle.Visible = false

local FovStroke = Instance.new("UIStroke", FovCircle)
FovStroke.Thickness = 1.5
FovStroke.Color = Color3.fromRGB(150, 80, 255) -- ACCENT_COLOR original
FovStroke.Transparency = 0.5

local FovCorner = Instance.new("UICorner", FovCircle)
FovCorner.CornerRadius = UDim.new(1, 0)

-- --- LÓGICA FUNCIONAL DEL AIMBOT (MEJORADA CON WALL CHECK Y TARGET PART) ---

-- Función para verificar si un punto es visible desde la cámara (Wall Check)
local function IsVisible(targetPart)
    if not _G.AimbotConfig.WallCheck then return true end
    
    local rayParam = RaycastParams.new()
    rayParam.FilterType = Enum.RaycastFilterType.Exclude
    rayParam.FilterDescendantsInstances = {Player.Character, Camera}
    
    local origin = Camera.CFrame.Position
    local direction = (targetPart.Position - origin).Unit * (targetPart.Position - origin).Magnitude
    
    local rayResult = workspace:Raycast(origin, direction, rayParam)
    
    -- Si no hay nada en medio, o lo que hay es parte del mismo personaje del objetivo
    if not rayResult or rayResult.Instance:IsDescendantOf(targetPart.Parent) then
        return true
    end
    return false
end

-- Lógica avanzada para buscar objetivos según el Target Mode
local function GetBestTarget()
    local MousePos = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    local BestTarget = nil
    local MaxCriteria = math.huge 
    
    local ValidTargets = {}

    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= Player and p.Character and p.Character:FindFirstChild("Humanoid") and p.Character.Humanoid.Health > 0 then
            local PartToAim = nil
            
            -- Lógica para la parte del cuerpo (Hitbox)
            if _G.AimbotConfig.TargetPart == "Head" then
                PartToAim = p.Character:FindFirstChild("Head")
            elseif _G.AimbotConfig.TargetPart == "Pies" then
                -- Busca pies para R15 o R6
                PartToAim = p.Character:FindFirstChild("LeftFoot") or p.Character:FindFirstChild("RightFoot") or p.Character:FindFirstChild("Left Leg") or p.Character:FindFirstChild("Right Leg")
            elseif _G.AimbotConfig.TargetPart == "Torso" then
                PartToAim = p.Character:FindFirstChild("UpperTorso") or p.Character:FindFirstChild("Torso")
            end

            if PartToAim then
                local Pos, OnScreen = Camera:WorldToViewportPoint(PartToAim.Position)
                local MagFromMouse = (Vector2.new(Pos.X, Pos.Y) - MousePos).Magnitude
                
                -- Solo considerar si está en pantalla y dentro del FOV y es visible tras paredes
                if OnScreen and MagFromMouse < _G.AimbotConfig.FovRadius and IsVisible(PartToAim) then
                    table.insert(ValidTargets, {Player = p, Part = PartToAim, MouseDist = MagFromMouse})
                end
            end
        end
    end

    if #ValidTargets == 0 then return nil end

    -- Aplicar el filtro según el Target Mode seleccionado
    if _G.AimbotConfig.TargetMode == "Closest" then
        local min = math.huge
        for _, target in pairs(ValidTargets) do
            if target.MouseDist < min then
                min = target.MouseDist
                BestTarget = target.Part
            end
        end
    elseif _G.AimbotConfig.TargetMode == "Lowest HP" then
        local minHP = math.huge
        for _, target in pairs(ValidTargets) do
            local hp = target.Player.Character.Humanoid.Health
            if hp < minHP then
                minHP = hp
                BestTarget = target.Part
            end
        end
    elseif _G.AimbotConfig.TargetMode == "Highest HP" then
        local maxHP = -1
        for _, target in pairs(ValidTargets) do
            local hp = target.Player.Character.Humanoid.Health
            if hp > maxHP then
                maxHP = hp
                BestTarget = target.Part
            end
        end
    elseif _G.AimbotConfig.TargetMode == "Closest to Character" then
        local minDist = math.huge
        for _, target in pairs(ValidTargets) do
            local d = (Player.Character.HumanoidRootPart.Position - target.Part.Position).Magnitude
            if d < minDist then
                minDist = d
                BestTarget = target.Part
            end
        end
    elseif _G.AimbotConfig.TargetMode == "Random" then
        BestTarget = ValidTargets[math.random(1, #ValidTargets)].Part
    end

    return BestTarget
end

RunService.RenderStepped:Connect(function()
    FovCircle.Visible = _G.AimbotConfig.FovVisible
    -- El tamaño se escala por 2 para representar el diámetro a partir del radio
    FovCircle.Size = UDim2.new(0, _G.AimbotConfig.FovRadius * 2, 0, _G.AimbotConfig.FovRadius * 2)
    FovCircle.Position = UDim2.new(0.5, 0, 0.5, 0)

    if _G.AimbotConfig.Enabled then
        local Target = GetBestTarget()
        if Target then
            local LookAt = CFrame.lookAt(Camera.CFrame.Position, Target.Position)
            -- Aplicación del Smoothing: entre mayor sea el valor de Config.Smoothing, más rápido apunta.
            Camera.CFrame = Camera.CFrame:Lerp(LookAt, _G.AimbotConfig.Smoothing)
        end
    end
end)
