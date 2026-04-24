-- Logica de Aimbot para DarkMatter Panel
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local camera = game.Workspace.CurrentCamera
local runService = game:GetService("RunService")

-- Variables de entorno (se sincronizan con el menu)
_G.AimbotEnabled = false
_G.AimbotPart = "Head"
_G.AimbotSmoothness = 5
_G.FovVisible = false
_G.FovRadius = 150

-- Crear Circulo de FOV
local FOVCircle = Drawing.new("Circle")
FOVCircle.Thickness = 1
FOVCircle.Color = Color3.fromRGB(150, 80, 255)
FOVCircle.Filled = false
FOVCircle.Transparency = 1

local function getClosestPlayer()
    local target = nil
    local shortestDistance = _G.FovRadius

    for _, v in pairs(game.Players:GetPlayers()) do
        if v ~= player and v.Character and v.Character:FindFirstChild(_G.AimbotPart) and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
            local pos, onScreen = camera:WorldToViewportPoint(v.Character[_G.AimbotPart].Position)
            if onScreen then
                local distance = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                if distance < shortestDistance then
                    target = v
                    shortestDistance = distance
                end
            end
        end
    end
    return target
end

runService.RenderStepped:Connect(function()
    -- Actualizar FOV
    FOVCircle.Visible = _G.FovVisible
    FOVCircle.Radius = _G.FovRadius
    FOVCircle.Position = Vector2.new(mouse.X, mouse.Y + 36)

    -- Logica de Apuntado
    if _G.AimbotEnabled then
        local target = getClosestPlayer()
        if target then
            local targetPos = camera:WorldToViewportPoint(target.Character[_G.AimbotPart].Position)
            local mousePos = Vector2.new(mouse.X, mouse.Y + 36)
            local moveVector = (Vector2.new(targetPos.X, targetPos.Y) - mousePos) / _G.AimbotSmoothness
            
            mousemoverel(moveVector.X, moveVector.Y)
        end
    end
end)
