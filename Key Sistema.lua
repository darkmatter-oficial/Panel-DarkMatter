local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")

local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera
local ScriptRunning = true 

local IsRivals = (game.PlaceId == 17625359962 or game.PlaceId == 11349125045)
local ManualModeSelected = false 

local CurrentTargetPart = nil
local SilentTarget = nil

local State = {
    SavedCFrame = nil,
    Wallhack = false,
    ESP = false, 
    ESPRelleno = false, 
    ESPCrosshair = false, 
    ESPBox = false,
    ESPBoxType = "2D",
    ESPLine = false, 
    ESPLinePos = "TOP", 
    ESPInfo = false, 
    ESPHealth = false, 
    RGBESP = false,
    ESPVisibilityColor = false,
    XRay = false, 
    XRayTransparency = 0.5, 
    AimbotMobile = false,
    SilentAim = false, 
    NoRecoil = false, 
    AimbotMode = IsRivals and "BLATANT" or "LEGIT", 
    TargetPart = "HEAD", 
    HitChance = 100,
    RapidFire = false, 
    TeamCheck = false,
    WallCheck = true,
    DistanceCheck = true,
    ShowFOV = false,
    FOVSize = 150,
    FieldOfView = 70,
    Fly = false,
    FlySpeed = 50,
    SpeedHack = false,
    Speed = 50,
    JumpHack = false,
    MultiJump = false,
    Jump = 100,
    SpinHack = false,
    SpinSpeed = 10,
    IsMinimized = false,
    PanelVisible = true,
    FlyingUp = false,
    FlyingDown = false,
    Orbiting = false,
    OrbitTarget = nil,
    OrbitSpeed = 5,
    OrbitDistance = 5,
    OrbitAngle = 0,
    BackTP = false,
    BackTPMode = "ABOVE",
    BackTPTarget = nil,
    FloatAimbot = false,
    FloatESP = false,
    FloatFly = false,
    EditingHUD = false,
    FreecamEnabled = false, 
    ESPRenderDistance = 500, 
    AimbotRange = 400,
    CurrentHitStatus = true,
    LastHitEval = 0,
    MissOffset = Vector2.new(0, 0),
    GiroPartida = false
}

local THEME = {
    Background = Color3.fromRGB(10, 10, 12),
    TopBar = Color3.fromRGB(20, 0, 40),
    Accent = Color3.fromRGB(170, 0, 255),
    Text = Color3.fromRGB(255, 255, 255),
    ElementBG = Color3.fromRGB(25, 25, 30),
    Danger = Color3.fromRGB(255, 0, 50),
    Success = Color3.fromRGB(0, 255, 100)
}

local HUDFileName = "DarkMatter_HUD_Save.json"

local function SaveHUDPosition(pos, name)
    if writefile then
        pcall(function()
            local data = {
                XScale = pos.X.Scale,
                XOffset = pos.X.Offset,
                YScale = pos.Y.Scale,
                YOffset = pos.Y.Offset
            }
            writefile("DarkMatter_Pos_" .. name .. ".json", HttpService:JSONEncode(data))
        end)
    end
end

local function LoadHUDPosition(name)
    if isfile and isfile("DarkMatter_Pos_" .. name .. ".json") and readfile then
        local success, result = pcall(function()
            return HttpService:JSONDecode(readfile("DarkMatter_Pos_" .. name .. ".json"))
        end)
        if success and result then
            return UDim2.new(result.XScale, result.XOffset, result.YScale, result.YOffset)
        end
    end
    return nil
end

local function GetRGB()
    return Color3.fromHSV(tick() % 5 / 5, 1, 1)
end

local Tracers = {}
local Labels = {}
local HealthBars = {}
local Crosshairs = {}
local XRayParts = {} 
local OriginalFireRates = {}

-- Tabla para guardar las líneas Drawing del ESP Box 3D por jugador
local Box3DLines = {}

local function CreateDrawing(type, props)
    local obj = Drawing.new(type)
    for i, v in pairs(props) do obj[i] = v end
    return obj
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DarkMatter_V4.1"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true 
if gethui then ScreenGui.Parent = gethui() else ScreenGui.Parent = CoreGui end

local SelectorFrame = Instance.new("Frame")
SelectorFrame.Name = "GameSelector"
SelectorFrame.Size = UDim2.new(0, 350, 0, 320)
SelectorFrame.Position = UDim2.new(0.5, -175, 0.5, -160)
SelectorFrame.BackgroundColor3 = THEME.Background
SelectorFrame.Parent = ScreenGui
Instance.new("UICorner", SelectorFrame).CornerRadius = UDim.new(0, 10)
Instance.new("UIStroke", SelectorFrame).Color = THEME.Accent; SelectorFrame.UIStroke.Thickness = 2

local SelectorTabContainer = Instance.new("Frame")
SelectorTabContainer.Size = UDim2.new(1, 0, 0, 40)
SelectorTabContainer.BackgroundColor3 = THEME.TopBar
SelectorTabContainer.Parent = SelectorFrame
Instance.new("UICorner", SelectorTabContainer).CornerRadius = UDim.new(0, 10)

local GamesTabBtn = Instance.new("TextButton")
GamesTabBtn.Size = UDim2.new(0.5, 0, 1, 0)
GamesTabBtn.BackgroundTransparency = 1
GamesTabBtn.Text = "GAME SELECTION"
GamesTabBtn.TextColor3 = THEME.Accent
GamesTabBtn.Font = Enum.Font.GothamBold
GamesTabBtn.TextSize = 12
GamesTabBtn.Parent = SelectorTabContainer

local SettingsTabBtn = Instance.new("TextButton")
SettingsTabBtn.Size = UDim2.new(0.5, 0, 1, 0)
SettingsTabBtn.Position = UDim2.new(0.5, 0, 0, 0)
SettingsTabBtn.BackgroundTransparency = 1
SettingsTabBtn.Text = "SETTINGS"
SettingsTabBtn.TextColor3 = THEME.Text
SettingsTabBtn.Font = Enum.Font.GothamBold
SettingsTabBtn.TextSize = 12
SettingsTabBtn.Parent = SelectorTabContainer

local GamesPage = Instance.new("Frame")
GamesPage.Size = UDim2.new(1, 0, 1, -40)
GamesPage.Position = UDim2.new(0, 0, 0, 40)
GamesPage.BackgroundTransparency = 1
GamesPage.Parent = SelectorFrame

local SettingsPage = Instance.new("Frame")
SettingsPage.Size = UDim2.new(1, 0, 1, -40)
SettingsPage.Position = UDim2.new(0, 0, 0, 40)
SettingsPage.BackgroundTransparency = 1
SettingsPage.Visible = false
SettingsPage.Parent = SelectorFrame

local UniversalBtn = Instance.new("TextButton")
UniversalBtn.Size = UDim2.new(0.8, 0, 0, 50)
UniversalBtn.Position = UDim2.new(0.1, 0, 0.2, 0)
UniversalBtn.BackgroundColor3 = THEME.ElementBG
UniversalBtn.Text = "UNIVERSAL MODE"
UniversalBtn.TextColor3 = THEME.Text
UniversalBtn.Font = Enum.Font.GothamBold
UniversalBtn.Parent = GamesPage
Instance.new("UICorner", UniversalBtn).CornerRadius = UDim.new(0, 6)

local RivalsBtn = Instance.new("TextButton")
RivalsBtn.Size = UDim2.new(0.8, 0, 0, 50)
RivalsBtn.Position = UDim2.new(0.1, 0, 0.5, 0)
RivalsBtn.BackgroundColor3 = THEME.TopBar
RivalsBtn.Text = "RIVALS MODE"
RivalsBtn.TextColor3 = THEME.Accent
RivalsBtn.Font = Enum.Font.GothamBold
RivalsBtn.Parent = GamesPage
Instance.new("UICorner", RivalsBtn).CornerRadius = UDim.new(0, 6)

local function CreateSelectorSlider(text, min, max, default, stateKey, parent, pos)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0.9, 0, 0, 60)
    Frame.Position = pos
    Frame.BackgroundColor3 = THEME.ElementBG
    Frame.Parent = parent
    Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 6)
    
    local Lbl = Instance.new("TextLabel")
    Lbl.Text = text
    Lbl.Size = UDim2.new(1, -10, 0, 30)
    Lbl.Position = UDim2.new(0, 10, 0, 0)
    Lbl.BackgroundTransparency = 1
    Lbl.TextColor3 = THEME.Text
    Lbl.Font = Enum.Font.GothamBold
    Lbl.TextSize = 12
    Lbl.TextXAlignment = Enum.TextXAlignment.Left
    Lbl.Parent = Frame
    
    local Val = Instance.new("TextLabel")
    Val.Text = tostring(default)
    Val.Size = UDim2.new(0, 50, 0, 30)
    Val.Position = UDim2.new(1, -60, 0, 0)
    Val.BackgroundTransparency = 1
    Val.TextColor3 = THEME.Accent
    Val.Font = Enum.Font.Code
    Val.TextSize = 12
    Val.Parent = Frame

    local BarBG = Instance.new("Frame")
    BarBG.Size = UDim2.new(1, -20, 0, 6)
    BarBG.Position = UDim2.new(0, 10, 0, 40)
    BarBG.BackgroundColor3 = Color3.fromRGB(40,40,40)
    BarBG.Parent = Frame
    Instance.new("UICorner", BarBG).CornerRadius = UDim.new(1, 0)

    local Fill = Instance.new("Frame")
    Fill.Size = UDim2.new((default - min) / (max - min), 0, 1, 0)
    Fill.BackgroundColor3 = THEME.Accent
    Fill.Parent = BarBG
    Instance.new("UICorner", Fill).CornerRadius = UDim.new(1, 0)

    local dragging = false
    local function Update(input)
        local delta = math.clamp((input.Position.X - BarBG.AbsolutePosition.X) / BarBG.AbsoluteSize.X, 0, 1)
        local realVal = math.floor((delta * (max - min)) + min)
        State[stateKey] = realVal
        Val.Text = tostring(realVal)
        Fill.Size = UDim2.new(delta, 0, 1, 0)
    end

    BarBG.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then dragging = true; Update(i) end end)
    UserInputService.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then dragging = false end end)
    UserInputService.InputChanged:Connect(function(i) if dragging and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then Update(i) end end)
end

CreateSelectorSlider("ESP RENDER DISTANCE", 50, 2000, 500, "ESPRenderDistance", SettingsPage, UDim2.new(0.05, 0, 0.1, 0))
CreateSelectorSlider("AIMBOT GRAB DISTANCE", 50, 1500, 400, "AimbotRange", SettingsPage, UDim2.new(0.05, 0, 0.4, 0))

GamesTabBtn.MouseButton1Click:Connect(function()
    GamesPage.Visible = true
    SettingsPage.Visible = false
    GamesTabBtn.TextColor3 = THEME.Accent
    SettingsTabBtn.TextColor3 = THEME.Text
end)

SettingsTabBtn.MouseButton1Click:Connect(function()
    GamesPage.Visible = false
    SettingsPage.Visible = true
    SettingsTabBtn.TextColor3 = THEME.Accent
    GamesTabBtn.TextColor3 = THEME.Text
end)

local BoxFolder = Instance.new("Folder", ScreenGui)
BoxFolder.Name = "ESP_Boxes"

local FlyBtnUp = {Visible = false} 
local FlyBtnDown = {Visible = false} 

local EditHUDFrame = Instance.new("Frame")
EditHUDFrame.Size = UDim2.new(0, 320, 0, 50)
EditHUDFrame.Position = UDim2.new(0.5, -160, 1, -80)
EditHUDFrame.BackgroundTransparency = 1
EditHUDFrame.Visible = false
EditHUDFrame.ZIndex = 500 
EditHUDFrame.Parent = ScreenGui

local SaveHUDBtn = Instance.new("TextButton")
SaveHUDBtn.Size = UDim2.new(0.48, 0, 1, 0)
SaveHUDBtn.Position = UDim2.new(0, 0, 0, 0)
SaveHUDBtn.BackgroundColor3 = THEME.Success
SaveHUDBtn.TextColor3 = THEME.Background
SaveHUDBtn.Font = Enum.Font.GothamBold
SaveHUDBtn.TextSize = 14
SaveHUDBtn.Text = "SAVE HUD"
SaveHUDBtn.ZIndex = 501 
SaveHUDBtn.Parent = EditHUDFrame
Instance.new("UICorner", SaveHUDBtn).CornerRadius = UDim.new(0, 6)

local CancelHUDBtn = Instance.new("TextButton")
CancelHUDBtn.Size = UDim2.new(0.48, 0, 1, 0)
CancelHUDBtn.Position = UDim2.new(0.52, 0, 0, 0)
CancelHUDBtn.BackgroundColor3 = THEME.Danger
CancelHUDBtn.TextColor3 = THEME.Text
CancelHUDBtn.Font = Enum.Font.GothamBold
CancelHUDBtn.TextSize = 14
CancelHUDBtn.Text = "CANCEL EDIT"
CancelHUDBtn.ZIndex = 501 
CancelHUDBtn.Parent = EditHUDFrame
Instance.new("UICorner", CancelHUDBtn).CornerRadius = UDim.new(0, 6)

local MainFrameVisibilityBackup = true

local function MakeDraggableFloat(guiObject)
    local dragging, dragStart, startPos
    guiObject.InputBegan:Connect(function(input) 
        if not State.EditingHUD then return end
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
            dragging = true; dragStart = input.Position; startPos = guiObject.Position 
        end 
    end)
    UserInputService.InputChanged:Connect(function(input) 
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then 
            local delta = input.Position - dragStart; 
            guiObject.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y) 
        end 
    end)
    UserInputService.InputEnded:Connect(function(input) 
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
            dragging = false 
        end 
    end)
end

local function CreateFloatingButton(text, pos)
    local Btn = Instance.new("TextButton")
    Btn.Size = UDim2.new(0, 45, 0, 45)
    Btn.Position = pos
    Btn.BackgroundColor3 = THEME.ElementBG
    Btn.TextColor3 = THEME.Text
    Btn.Text = text
    Btn.Font = Enum.Font.GothamBold
    Btn.TextSize = 12
    Btn.Visible = false
    Btn.ZIndex = 10 
    Btn.Parent = ScreenGui
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(1, 0)
    local Stroke = Instance.new("UIStroke", Btn)
    Stroke.Color = THEME.Accent
    Stroke.Thickness = 2
    MakeDraggableFloat(Btn)
    return Btn, Stroke
end

local ToggleUpdaters = {}
local SliderUpdaters = {}

local FloatAimbotBtn, StrokeAimbot = CreateFloatingButton("AIM", UDim2.new(0, 15, 0.3, 0))
local FloatESPBtn, StrokeESP = CreateFloatingButton("ESP", UDim2.new(0, 15, 0.4, 0))
local FloatFlyBtn, StrokeFly = CreateFloatingButton("FLY", UDim2.new(0, 15, 0.5, 0))

task.spawn(function()
    local posAimbot = LoadHUDPosition("FloatAimbot")
    if posAimbot then FloatAimbotBtn.Position = posAimbot end
    local posESP = LoadHUDPosition("FloatESP")
    if posESP then FloatESPBtn.Position = posESP end
    local posFly = LoadHUDPosition("FloatFly")
    if posFly then FloatFlyBtn.Position = posFly end
end)

local function EnableHUDEdit(v)
    State.EditingHUD = v
    EditHUDFrame.Visible = v
    
    if v then
        MainFrameVisibilityBackup = ScreenGui:FindFirstChild("DarkMatter_V4_Main") and ScreenGui.DarkMatter_V4_Main.Visible or true
        if ScreenGui:FindFirstChild("DarkMatter_V4_Main") then ScreenGui.DarkMatter_V4_Main.Visible = false end
        FloatAimbotBtn.Visible = true
        FloatESPBtn.Visible = true
        FloatFlyBtn.Visible = true
    else
        if ScreenGui:FindFirstChild("DarkMatter_V4_Main") then ScreenGui.DarkMatter_V4_Main.Visible = MainFrameVisibilityBackup end
        FloatAimbotBtn.Visible = State.FloatAimbot
        FloatESPBtn.Visible = State.FloatESP
        FloatFlyBtn.Visible = State.FloatFly
    end
end

local FOVFrame = Instance.new("Frame")
FOVFrame.Name = "DarkMatterFOV"
FOVFrame.AnchorPoint = Vector2.new(0.5, 0.5)
FOVFrame.Position = UDim2.new(0.5, 0, 0.5, 0) 
FOVFrame.Size = UDim2.new(0, State.FOVSize * 2, 0, State.FOVSize * 2)
FOVFrame.BackgroundTransparency = 1
FOVFrame.Visible = false
FOVFrame.Parent = ScreenGui
Instance.new("UICorner", FOVFrame).CornerRadius = UDim.new(1, 0)
local FOVStroke = Instance.new("UIStroke", FOVFrame); FOVStroke.Color = THEME.Accent; FOVStroke.Thickness = 1.5; FOVStroke.Transparency = 0.2

local MainFrame = Instance.new("Frame")
MainFrame.Name = "DarkMatter_V4_Main"
MainFrame.Size = UDim2.new(0, 400, 0, 350)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -175)
MainFrame.BackgroundColor3 = THEME.Background
MainFrame.ClipsDescendants = true
MainFrame.Visible = false 
MainFrame.Parent = ScreenGui
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 10)
Instance.new("UIStroke", MainFrame).Color = THEME.Accent; MainFrame.UIStroke.Thickness = 2

local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.BackgroundColor3 = THEME.TopBar
TitleBar.Parent = MainFrame
Instance.new("UICorner", TitleBar).CornerRadius = UDim.new(0, 10)

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -120, 1, 0)
Title.Position = UDim2.new(0, 10, 0, 0)
Title.BackgroundTransparency = 1
Title.TextColor3 = THEME.Text
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16
Title.Text = "DARKMATTER v4.5"
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = TitleBar

local MinBtn = Instance.new("TextButton")
MinBtn.Size = UDim2.new(0, 30, 0, 30)
MinBtn.Position = UDim2.new(1, -115, 0, 5)
MinBtn.BackgroundColor3 = THEME.ElementBG; MinBtn.TextColor3 = THEME.Accent; MinBtn.Font = Enum.Font.GothamBold; MinBtn.TextSize = 18; MinBtn.Text = "▲"; MinBtn.Parent = TitleBar; Instance.new("UICorner", MinBtn).CornerRadius = UDim.new(0, 6)

local HideBtn = Instance.new("TextButton")
HideBtn.Size = UDim2.new(0, 30, 0, 30)
HideBtn.Position = UDim2.new(1, -75, 0, 5)
HideBtn.BackgroundColor3 = THEME.ElementBG; HideBtn.TextColor3 = Color3.fromRGB(255, 255, 0); HideBtn.Font = Enum.Font.GothamBold; HideBtn.TextSize = 18; HideBtn.Text = "O"; HideBtn.Parent = TitleBar; Instance.new("UICorner", HideBtn).CornerRadius = UDim.new(0, 6)

local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 5)
CloseBtn.BackgroundColor3 = THEME.ElementBG; CloseBtn.TextColor3 = THEME.Danger; CloseBtn.Font = Enum.Font.GothamBold; CloseBtn.TextSize = 18; CloseBtn.Text = "X"; CloseBtn.Parent = TitleBar; Instance.new("UICorner", CloseBtn).CornerRadius = UDim.new(0, 6)

local GhostBtn = Instance.new("TextButton")
GhostBtn.Size = UDim2.new(0, 30, 0, 30)
GhostBtn.Position = UDim2.new(0.5, 125, 0.5, -170)
GhostBtn.BackgroundTransparency = 1; GhostBtn.Text = ""; GhostBtn.ZIndex = 999
GhostBtn.Visible = false
GhostBtn.Parent = ScreenGui

local FreecamSystem = {
    isFreecam = false,
    cameraPos = Vector3.new(),
    cameraRot = Vector2.new(),
    speed = 2.0,
    Controls = nil,
    UI = nil,
    internalDisable = false 
}

local function ToggleVisibility(visible)
    State.PanelVisible = visible
    MainFrame.Visible = visible
    GhostBtn.Visible = not visible
    
    if not visible then
        GhostBtn.Position = MainFrame.Position + UDim2.new(0, MainFrame.Size.X.Offset - 75, 0, 5)
    end
    
    if FreecamSystem.UI then
        if not visible then
            FreecamSystem.internalDisable = true
            FreecamSystem.UI.Enabled = false
            if FreecamSystem.isFreecam and _G.ForceDisableFreecamLogic then
                _G.ForceDisableFreecamLogic()
            end
        else
            FreecamSystem.internalDisable = false
            FreecamSystem.UI.Enabled = State.FreecamEnabled
        end
    end
end

HideBtn.MouseButton1Click:Connect(function() ToggleVisibility(false) end)
GhostBtn.MouseButton1Click:Connect(function() ToggleVisibility(true) end)

local Container = Instance.new("ScrollingFrame")
Container.Size = UDim2.new(1, -20, 1, -80)
Container.Position = UDim2.new(0, 10, 0, 75)
Container.BackgroundTransparency = 1
Container.ScrollBarThickness = 3
Container.ScrollBarImageColor3 = THEME.Accent
Container.Parent = MainFrame
local UIList = Instance.new("UIListLayout"); UIList.Parent = Container; UIList.Padding = UDim.new(0, 8); UIList.SortOrder = Enum.SortOrder.LayoutOrder 

UIList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    Container.CanvasSize = UDim2.new(0, 0, 0, UIList.AbsoluteContentSize.Y + 10)
end)

local TabBar = Instance.new("Frame")
TabBar.Size = UDim2.new(1, 0, 0, 30)
TabBar.Position = UDim2.new(0, 0, 0, 40)
TabBar.BackgroundColor3 = THEME.TopBar
TabBar.Parent = MainFrame

local TabList = Instance.new("UIListLayout")
TabList.FillDirection = Enum.FillDirection.Horizontal
TabList.SortOrder = Enum.SortOrder.LayoutOrder
TabList.Parent = TabBar

local currentActiveTab = "COMBAT"
local CategoryFrames = {}

local function CreateTab(name, order)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.20, 0, 1, 0)
    btn.BackgroundColor3 = THEME.TopBar
    btn.Text = name
    btn.TextColor3 = THEME.Text
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 10
    btn.LayoutOrder = order
    btn.Parent = TabBar

    local stroke = Instance.new("UIStroke", btn)
    stroke.Color = THEME.Accent
    stroke.Thickness = 1

    btn.MouseButton1Click:Connect(function()
        currentActiveTab = name
        for tabName, tabBtn in pairs(CategoryFrames) do
            if tabName == name then
                tabBtn.BackgroundColor3 = THEME.Accent
                tabBtn.TextColor3 = THEME.TopBar
            else
                tabBtn.BackgroundColor3 = THEME.TopBar
                tabBtn.TextColor3 = THEME.Text
            end
        end
        if _G.UpdateCategoryVisibility then _G.UpdateCategoryVisibility() end
    end)

    CategoryFrames[name] = btn
    return btn
end

CreateTab("COMBAT", 1)
CreateTab("VISUALS", 2)
CreateTab("MOVEMENT", 3)
CreateTab("MISC", 4)
CreateTab("INFORMATION", 5)

local ConfirmFrame = Instance.new("Frame")
ConfirmFrame.Size = UDim2.new(0, 280, 0, 140)
ConfirmFrame.Position = UDim2.new(0.5, -140, 0.5, -70)
ConfirmFrame.BackgroundColor3 = THEME.Background; ConfirmFrame.Visible = false; ConfirmFrame.ZIndex = 600; ConfirmFrame.Parent = ScreenGui; Instance.new("UICorner", ConfirmFrame).CornerRadius = UDim.new(0, 10)
local ConfirmStroke = Instance.new("UIStroke", ConfirmFrame); ConfirmStroke.Color = THEME.Accent; ConfirmStroke.Thickness = 2

local ConfirmTitle = Instance.new("TextLabel")
ConfirmTitle.Size = UDim2.new(1, 0, 0, 70); ConfirmTitle.BackgroundTransparency = 1; ConfirmTitle.Text = "Close DARKMATTER?\n(All processes will be disabled)"; ConfirmTitle.TextColor3 = THEME.Text; ConfirmTitle.Font = Enum.Font.GothamBold; ConfirmTitle.TextSize = 14; ConfirmTitle.ZIndex = 601; ConfirmTitle.Parent = ConfirmFrame

local YesBtn = Instance.new("TextButton")
YesBtn.Size = UDim2.new(0, 110, 0, 40); YesBtn.Position = UDim2.new(0, 20, 1, -55); YesBtn.BackgroundColor3 = THEME.Accent; YesBtn.Text = "YES, CLOSE"; YesBtn.TextColor3 = THEME.Text; YesBtn.Font = Enum.Font.GothamBold; YesBtn.ZIndex = 601; YesBtn.Parent = ConfirmFrame; Instance.new("UICorner", YesBtn).CornerRadius = UDim.new(0, 6)

local NoBtn = Instance.new("TextButton")
NoBtn.Size = UDim2.new(0, 110, 0, 40); NoBtn.Position = UDim2.new(1, -130, 1, -55); NoBtn.BackgroundColor3 = THEME.ElementBG; NoBtn.Text = "CANCEL"; NoBtn.TextColor3 = THEME.Text; NoBtn.Font = Enum.Font.GothamBold; NoBtn.ZIndex = 601; NoBtn.Parent = ConfirmFrame; Instance.new("UICorner", NoBtn).CornerRadius = UDim.new(0, 6)

local function ClearBox3DLines(p)
    if Box3DLines[p] then
        for _, ln in pairs(Box3DLines[p]) do
            if ln then pcall(function() ln:Remove() end) end
        end
        Box3DLines[p] = nil
    end
end

local function ClearAllVisuals()
    BoxFolder:ClearAllChildren()
    for p, _ in pairs(Tracers) do if Tracers[p] then Tracers[p]:Remove(); Tracers[p] = nil end end
    for p, _ in pairs(Labels) do if Labels[p] then Labels[p]:Remove(); Labels[p] = nil end end
    for p, _ in pairs(HealthBars) do if HealthBars[p] then HealthBars[p]:Remove(); HealthBars[p] = nil end end
    for p, _ in pairs(Crosshairs) do
        if Crosshairs[p] then
            if Crosshairs[p].Circle then Crosshairs[p].Circle:Remove() end
            if Crosshairs[p].LineH then Crosshairs[p].LineH:Remove() end
            if Crosshairs[p].LineV then Crosshairs[p].LineV:Remove() end
            Crosshairs[p] = nil
        end
    end
    for p, _ in pairs(Box3DLines) do
        ClearBox3DLines(p)
    end
    FOVFrame.Visible = false
    for part, _ in pairs(XRayParts) do
        if part then part.LocalTransparencyModifier = 0 end
    end
    XRayParts = {}
end

local function InitFreecam()
    local playerScripts = LocalPlayer:WaitForChild("PlayerScripts")
    local PlayerModule = require(playerScripts:WaitForChild("PlayerModule"))
    FreecamSystem.Controls = PlayerModule:GetControls()

    local fcGui = Instance.new("ScreenGui")
    fcGui.Name = "DarkMatter_FreecamUI"
    fcGui.ResetOnSpawn = false
    fcGui.Enabled = false
    fcGui.Parent = (gethui and gethui()) or CoreGui
    FreecamSystem.UI = fcGui

    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(0, 180, 0, 210) 
    mainFrame.Position = UDim2.new(0, 20, 0.5, -105)
    mainFrame.BackgroundColor3 = THEME.Background
    mainFrame.BorderSizePixel = 0
    mainFrame.Active = true
    mainFrame.Draggable = true
    mainFrame.ClipsDescendants = true
    mainFrame.Parent = fcGui
    Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 8)
    local stroke = Instance.new("UIStroke", mainFrame); stroke.Color = THEME.Accent; stroke.Thickness = 2

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, 0, 0, 30)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = "FREECAM MENU"
    titleLabel.TextColor3 = THEME.Text
    titleLabel.Font = Enum.Font.Code
    titleLabel.TextSize = 14
    titleLabel.Parent = mainFrame

    local miniBtn = Instance.new("TextButton")
    miniBtn.Size = UDim2.new(0, 25, 0, 25)
    miniBtn.Position = UDim2.new(1, -30, 0, 2.5)
    miniBtn.BackgroundColor3 = THEME.ElementBG
    miniBtn.BorderSizePixel = 0
    miniBtn.Text = "-"
    miniBtn.TextColor3 = THEME.Text
    miniBtn.Font = Enum.Font.SourceSansBold
    miniBtn.TextSize = 20
    miniBtn.Parent = mainFrame
    Instance.new("UICorner", miniBtn).CornerRadius = UDim.new(0, 5)

    local toggleBtn = Instance.new("TextButton")
    toggleBtn.Size = UDim2.new(0, 150, 0, 40)
    toggleBtn.Position = UDim2.new(0.5, -75, 0, 40)
    toggleBtn.BackgroundColor3 = THEME.ElementBG
    toggleBtn.BorderSizePixel = 0
    toggleBtn.Text = "FREECAM: OFF"
    toggleBtn.TextColor3 = THEME.Danger
    toggleBtn.Font = Enum.Font.Code
    toggleBtn.TextSize = 14
    toggleBtn.Parent = mainFrame
    Instance.new("UICorner", toggleBtn).CornerRadius = UDim.new(0, 5)

    local tpBtn = Instance.new("TextButton")
    tpBtn.Size = UDim2.new(0, 150, 0, 40)
    tpBtn.Position = UDim2.new(0.5, -75, 0, 85)
    tpBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    tpBtn.BorderSizePixel = 0
    tpBtn.Text = "TELEPORT"
    tpBtn.TextColor3 = Color3.fromRGB(100, 100, 100)
    tpBtn.Font = Enum.Font.Code
    tpBtn.TextSize = 14
    tpBtn.Parent = mainFrame
    Instance.new("UICorner", tpBtn).CornerRadius = UDim.new(0, 5)

    local sliderFrame = Instance.new("Frame")
    sliderFrame.Size = UDim2.new(0, 150, 0, 60)
    sliderFrame.Position = UDim2.new(0.5, -75, 0, 135)
    sliderFrame.BackgroundTransparency = 1
    sliderFrame.Parent = mainFrame

    local speedLabel = Instance.new("TextLabel")
    speedLabel.Size = UDim2.new(1, 0, 0, 20)
    speedLabel.BackgroundTransparency = 1
    speedLabel.Text = "SPEED: " .. tostring(FreecamSystem.speed)
    speedLabel.TextColor3 = THEME.Text
    speedLabel.Font = Enum.Font.Code
    speedLabel.TextSize = 12
    speedLabel.Parent = sliderFrame

    local barBG = Instance.new("Frame")
    barBG.Size = UDim2.new(1, 0, 0, 6)
    barBG.Position = UDim2.new(0, 0, 0.7, 0)
    barBG.BackgroundColor3 = Color3.fromRGB(40,40,40)
    barBG.Parent = sliderFrame
    Instance.new("UICorner", barBG).CornerRadius = UDim.new(1, 0)

    local fill = Instance.new("Frame")
    fill.Size = UDim2.new(FreecamSystem.speed / 10, 0, 1, 0)
    fill.BackgroundColor3 = THEME.Accent
    fill.Parent = barBG
    Instance.new("UICorner", fill).CornerRadius = UDim.new(1, 0)

    local function updateSlider(input)
        local pos = math.clamp((input.Position.X - barBG.AbsolutePosition.X) / barBG.AbsoluteSize.X, 0, 1)
        fill.Size = UDim2.new(pos, 0, 1, 0)
        local val = math.floor((pos * 10) * 10) / 10 
        if val < 0.1 then val = 0.1 end
        FreecamSystem.speed = val
        speedLabel.Text = "SPEED: " .. tostring(val)
    end

    local sliding = false
    barBG.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then sliding = true; updateSlider(i) end end)
    UserInputService.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then sliding = false end end)
    UserInputService.InputChanged:Connect(function(i) if sliding and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then updateSlider(i) end end)

    local isMinimized = false
    miniBtn.MouseButton1Click:Connect(function()
        isMinimized = not isMinimized
        if isMinimized then
            mainFrame:TweenSize(UDim2.new(0, 180, 0, 30), "Out", "Quad", 0.3, true)
            toggleBtn.Visible = false
            tpBtn.Visible = false
            sliderFrame.Visible = false
            miniBtn.Text = "+"
        else
            toggleBtn.Visible = true
            tpBtn.Visible = true
            sliderFrame.Visible = true
            mainFrame:TweenSize(UDim2.new(0, 180, 0, 210), "Out", "Quad", 0.3, true)
            miniBtn.Text = "-"
        end
    end)

    local function disableFreecam()
        FreecamSystem.isFreecam = false
        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        toggleBtn.Text = "FREECAM: OFF"
        toggleBtn.TextColor3 = THEME.Danger
        stroke.Color = THEME.Accent
        tpBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        tpBtn.TextColor3 = Color3.fromRGB(100, 100, 100)
        Camera.CameraType = Enum.CameraType.Custom
        if hrp then hrp.Anchored = false end
    end
    
    _G.ForceDisableFreecamLogic = disableFreecam

    tpBtn.MouseButton1Click:Connect(function()
        if not FreecamSystem.isFreecam then return end
        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if hrp then
            hrp.CFrame = CFrame.new(FreecamSystem.cameraPos)
            disableFreecam()
        end
    end)

    toggleBtn.MouseButton1Click:Connect(function()
        if FreecamSystem.isFreecam then
            disableFreecam()
        else
            FreecamSystem.isFreecam = true
            local char = LocalPlayer.Character
            local hrp = char and char:FindFirstChild("HumanoidRootPart")
            toggleBtn.Text = "FREECAM: ON"
            toggleBtn.TextColor3 = THEME.Success
            stroke.Color = THEME.Success
            tpBtn.BackgroundColor3 = THEME.ElementBG
            tpBtn.TextColor3 = THEME.Text
            FreecamSystem.cameraPos = Camera.CFrame.Position
            local x, y, z = Camera.CFrame:ToOrientation()
            FreecamSystem.cameraRot = Vector2.new(x, y)
            Camera.CameraType = Enum.CameraType.Scriptable
            if hrp then hrp.Anchored = true end
        end
    end)

    RunService.RenderStepped:Connect(function(dt)
        if not FreecamSystem.isFreecam or not ScriptRunning or FreecamSystem.internalDisable then return end
        local moveVector = FreecamSystem.Controls:GetMoveVector()
        if moveVector.Magnitude > 0 then
            local currentRotation = CFrame.Angles(0, FreecamSystem.cameraRot.Y, 0) * CFrame.Angles(FreecamSystem.cameraRot.X, 0, 0)
            local forward = currentRotation.LookVector * -moveVector.Z
            local right = currentRotation.RightVector * moveVector.X
            local moveDir = (forward + right)
            FreecamSystem.cameraPos = FreecamSystem.cameraPos + (moveDir * FreecamSystem.speed)
        end
        Camera.CFrame = CFrame.new(FreecamSystem.cameraPos) * CFrame.Angles(0, FreecamSystem.cameraRot.Y, 0) * CFrame.Angles(FreecamSystem.cameraRot.X, 0, 0)
    end)

    UserInputService.InputChanged:Connect(function(input, processed)
        if not FreecamSystem.isFreecam or processed or not ScriptRunning or FreecamSystem.internalDisable then return end
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            local delta = input.Delta
            FreecamSystem.cameraRot = FreecamSystem.cameraRot + Vector2.new(-delta.Y * 0.007, -delta.X * 0.007)
        end
    end)
    
    return fcGui
end

local FreecamGuiObject = InitFreecam()

local bv, bg
local function ToggleFly(v)
    local char = LocalPlayer.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then 
        return 
    end
    
    if v then
        bv = Instance.new("BodyVelocity", char.HumanoidRootPart)
        bv.MaxForce = Vector3.new(1e9, 1e9, 1e9)
        bv.Velocity = Vector3.new(0,0,0)
        bg = Instance.new("BodyGyro", char.HumanoidRootPart)
        bg.MaxTorque = Vector3.new(1e9, 1e9, 1e9)
        bg.P = 10000
        bg.CFrame = char.HumanoidRootPart.CFrame
        
        local playerScripts = LocalPlayer:WaitForChild("PlayerScripts")
        local PlayerModule = require(playerScripts:WaitForChild("PlayerModule"))
        local Controls = PlayerModule:GetControls()

        task.spawn(function()
            while State.Fly and ScriptRunning do 
                RunService.RenderStepped:Wait()
                if not bv or not bg or not char.HumanoidRootPart then break end
                
                local lookVector = Camera.CFrame.LookVector
                local rightVector = Camera.CFrame.RightVector
                local moveVector = Controls:GetMoveVector()
                
                local finalVelocity = (lookVector * -moveVector.Z + rightVector * moveVector.X).Unit
                if moveVector.Magnitude > 0 then
                    bv.Velocity = finalVelocity * State.FlySpeed
                else
                    bv.Velocity = Vector3.new(0, 0, 0)
                end
                
                bg.CFrame = Camera.CFrame
                char.Humanoid.PlatformStand = true 
            end
        end)
    else 
        if bv then bv:Destroy(); bv = nil end
        if bg then bg:Destroy(); bg = nil end
        if char and char:FindFirstChild("Humanoid") then char.Humanoid.PlatformStand = false end 
    end
end

UserInputService.JumpRequest:Connect(function()
    if State.MultiJump and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

-- Variable para el angulo de GiroPartida, declarada aqui para que persista entre escenas
local giroAngle = 0
local giroConnection = nil

-- Funcion que lanza el loop de GiroPartida usando Heartbeat independiente
-- Esto garantiza que funcione dentro de la partida en Rivals sin depender de RenderStepped
local function StartGiroLoop()
    if giroConnection then
        giroConnection:Disconnect()
        giroConnection = nil
    end
    giroConnection = RunService.Heartbeat:Connect(function()
        if not ScriptRunning then
            giroConnection:Disconnect()
            giroConnection = nil
            return
        end
        if not State.GiroPartida then return end
        local char = LocalPlayer.Character
        if not char then return end
        local root = char:FindFirstChild("HumanoidRootPart")
        if not root then return end
        if State.EditingHUD then return end
        giroAngle = giroAngle + math.random(50, 150)
        root.CFrame = root.CFrame * CFrame.Angles(
            math.rad(giroAngle * math.random(1, 3)),
            math.rad(giroAngle * math.random(2, 5)),
            math.rad(giroAngle * math.random(1, 4))
        )
        for _, p in pairs(char:GetChildren()) do
            if p:IsA("BasePart") then p.CanCollide = false end
        end
    end)
end

-- Arrancamos el loop desde el inicio para que este siempre activo
StartGiroLoop()

-- Al cambiar de escena en Rivals, reenganchamos el loop y esperamos al personaje
LocalPlayer.CharacterAdded:Connect(function(char)
    char:WaitForChild("HumanoidRootPart")
    -- Reiniciar angulo para evitar salto brusco al entrar a partida
    giroAngle = 0
    -- Rearrancar el loop de Heartbeat para la nueva escena/personaje
    StartGiroLoop()
    if State.Fly then
        task.wait(0.5)
        ToggleFly(true)
    end
end)

local function ResetAllStates()
    for k, v in pairs(State) do
        if type(v) == "boolean" then
            State[k] = false
        end
    end
    
    local ItemsModule = game:GetService("ReplicatedStorage"):FindFirstChild("Modules") and game:GetService("ReplicatedStorage").Modules:FindFirstChild("ItemLibrary")
    if ItemsModule then
        local Items = require(ItemsModule).Items
        for id, data in pairs(Items) do
            if typeof(data) == "table" and OriginalFireRates[id] then
                data.ShootCooldown = OriginalFireRates[id].sc
                data.ShootBurstCooldown = OriginalFireRates[id].sbc
            end
        end
    end
    
    ClearAllVisuals()
    ToggleFly(false)
    Camera.FieldOfView = 70
    
    if FreecamGuiObject then FreecamGuiObject.Enabled = false end
    FreecamSystem.isFreecam = false
    Camera.CameraType = Enum.CameraType.Custom
    
    for _, p in pairs(Players:GetPlayers()) do
        if p.Character and p.Character:FindFirstChild("DarkESP") then
            p.Character.DarkESP:Destroy()
        end
    end
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") then
        char.Humanoid.WalkSpeed = 16
        char.Humanoid.JumpPower = 50
        char.Humanoid.PlatformStand = false
        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = true end
        end
    end
end

local function ShutdownPanel()
    ScriptRunning = false 
    if giroConnection then giroConnection:Disconnect(); giroConnection = nil end
    ResetAllStates()
    ScreenGui:Destroy()
    if FreecamGuiObject then FreecamGuiObject:Destroy() end
end

CloseBtn.MouseButton1Click:Connect(function() ConfirmFrame.Visible = true end)
NoBtn.MouseButton1Click:Connect(function() ConfirmFrame.Visible = false end)
YesBtn.MouseButton1Click:Connect(function() ShutdownPanel() end)

MinBtn.MouseButton1Click:Connect(function()
    State.IsMinimized = not State.IsMinimized
    if State.IsMinimized then
        TweenService:Create(MainFrame, TweenInfo.new(0.4), {Size = UDim2.new(0, 280, 0, 40)}):Play()
        MinBtn.Text = "▼"; Container.Visible = false
    else
        TweenService:Create(MainFrame, TweenInfo.new(0.4), {Size = UDim2.new(0, 400, 0, 350)}):Play()
        MinBtn.Text = "▲"; task.delay(0.1, function() Container.Visible = true end)
    end
end)

local function MakeDraggable(guiObject, target)
    local dragging, dragStart, startPos
    guiObject.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then dragging = true; dragStart = input.Position; startPos = target.Position end end)
    UserInputService.InputChanged:Connect(function(input) if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then local delta = input.Position - dragStart; target.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y); GhostBtn.Position = target.Position + UDim2.new(0, target.Size.X.Offset - 75, 0, 5) end end)
    UserInputService.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then dragging = false end end)
end
MakeDraggable(TitleBar, MainFrame)

FloatAimbotBtn.MouseButton1Click:Connect(function()
    if State.EditingHUD then return end
    
    local allActive = State.AimbotMobile and State.ShowFOV
    local newState = not allActive
    
    if ToggleUpdaters["AimbotMobile"] then ToggleUpdaters["AimbotMobile"](newState) end
    if ToggleUpdaters["ShowFOV"] then ToggleUpdaters["ShowFOV"](newState) end
    
    StrokeAimbot.Color = (State.AimbotMobile and State.ShowFOV) and THEME.Success or THEME.Accent
end)

FloatESPBtn.MouseButton1Click:Connect(function()
    if State.EditingHUD then return end
    
    local allActive = State.ESP and State.ESPLine and State.ESPBox and State.ESPInfo and State.ESPHealth
    local newState = not allActive
    
    if ToggleUpdaters["ESP"] then ToggleUpdaters["ESP"](newState) end
    if ToggleUpdaters["ESPLine"] then ToggleUpdaters["ESPLine"](newState) end
    if ToggleUpdaters["ESPBox"] then ToggleUpdaters["ESPBox"](newState) end
    if ToggleUpdaters["ESPInfo"] then ToggleUpdaters["ESPInfo"](newState) end
    if ToggleUpdaters["ESPHealth"] then ToggleUpdaters["ESPHealth"](newState) end
    
    if not newState then BoxFolder:ClearAllChildren() end
    StrokeESP.Color = (State.ESP and State.ESPLine and State.ESPBox and State.ESPInfo and State.ESPHealth) and THEME.Success or THEME.Accent
end)

FloatFlyBtn.MouseButton1Click:Connect(function()
    if State.EditingHUD then return end
    local newState = not State.Fly
    if ToggleUpdaters["Fly"] then ToggleUpdaters["Fly"](newState) end
    StrokeFly.Color = State.Fly and THEME.Success or THEME.Accent
end)

local layoutIdx = 0
local function getNextOrder() layoutIdx = layoutIdx + 1; return layoutIdx end

local function CreateToggle(text, stateKey, callback)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, -10, 0, 40); Frame.BackgroundColor3 = THEME.ElementBG; Frame.Parent = Container; Frame.LayoutOrder = getNextOrder()
    Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 6)
    local Lbl = Instance.new("TextLabel"); Lbl.Text = "  " .. text; Lbl.Size = UDim2.new(0.7, 0, 1, 0); Lbl.BackgroundTransparency = 1; Lbl.TextColor3 = THEME.Text; Lbl.Font = Enum.Font.GothamSemibold; Lbl.TextXAlignment = Enum.TextXAlignment.Left; Lbl.Parent = Frame
    local Switch = Instance.new("TextButton"); Switch.Text = ""; Switch.Size = UDim2.new(0, 40, 0, 20); Switch.Position = UDim2.new(1, -50, 0.5, -10); Switch.BackgroundColor3 = State[stateKey] and THEME.Accent or Color3.fromRGB(50,50,50); Switch.Parent = Frame; Instance.new("UICorner", Switch).CornerRadius = UDim.new(1, 0)
    local Dot = Instance.new("Frame"); Dot.Size = UDim2.new(0, 16, 0, 16); Dot.Position = State[stateKey] and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8); Dot.BackgroundColor3 = THEME.Text; Dot.Parent = Switch; Instance.new("UICorner", Dot).CornerRadius = UDim.new(1, 0)
    
    local function UpdateVisuals()
        TweenService:Create(Switch, TweenInfo.new(0.2), {BackgroundColor3 = State[stateKey] and THEME.Accent or Color3.fromRGB(50,50,50)}):Play()
        TweenService:Create(Dot, TweenInfo.new(0.2), {Position = State[stateKey] and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8)}):Play()
        
        if stateKey == "AimbotMobile" or stateKey == "ShowFOV" then
            StrokeAimbot.Color = (State.AimbotMobile and State.ShowFOV) and THEME.Success or THEME.Accent
        elseif stateKey == "ESP" or stateKey == "ESPLine" or stateKey == "ESPBox" or stateKey == "ESPInfo" or stateKey == "ESPHealth" then
            StrokeESP.Color = (State.ESP and State.ESPLine and State.ESPBox and State.ESPInfo and State.ESPHealth) and THEME.Success or THEME.Accent
        elseif stateKey == "Fly" then
            StrokeFly.Color = State.Fly and THEME.Success or THEME.Accent
        end
    end

    ToggleUpdaters[stateKey] = function(forceState)
        if forceState ~= nil then
            State[stateKey] = forceState
        else
            State[stateKey] = not State[stateKey]
        end
        UpdateVisuals()
        if callback then callback(State[stateKey]) end
    end

    Switch.MouseButton1Click:Connect(function()
        ToggleUpdaters[stateKey]()
    end)
    return Frame
end

local function CreateButton(text, callback, parent)
    local Btn = Instance.new("TextButton")
    Btn.Text = text; Btn.Size = UDim2.new(1, -10, 0, 35); Btn.BackgroundColor3 = THEME.ElementBG; Btn.TextColor3 = THEME.Text; Btn.Font = Enum.Font.GothamBold; Btn.Parent = parent or Container; Btn.LayoutOrder = getNextOrder()
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 6)
    Btn.MouseButton1Click:Connect(function() callback() end)
    return Btn
end

local function CreateSlider(text, min, max, default, callback, parent, stateKey)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, -10, 0, 55); Frame.BackgroundColor3 = THEME.ElementBG; Frame.Parent = parent or Container; Frame.LayoutOrder = getNextOrder()
    Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 6)
    local Lbl = Instance.new("TextLabel"); Lbl.Text = "  " .. text; Lbl.Size = UDim2.new(0.5, 0, 0, 25); Lbl.BackgroundTransparency = 1; Lbl.TextColor3 = THEME.Text; Lbl.Font = Enum.Font.GothamSemibold; Lbl.TextXAlignment = Enum.TextXAlignment.Left; Lbl.Parent = Frame
    local Val = Instance.new("TextLabel"); Val.Text = tostring(default); Val.Size = UDim2.new(0.5, -10, 0, 25); Val.Position = UDim2.new(0.5, 0, 0, 0); Val.BackgroundTransparency = 1; Val.TextColor3 = THEME.Accent; Val.Font = Enum.Font.Code; Val.TextXAlignment = Enum.TextXAlignment.Right; Val.Parent = Frame
    local BarBG = Instance.new("Frame"); BarBG.Size = UDim2.new(1, -20, 0, 6); BarBG.Position = UDim2.new(0, 10, 0, 35); BarBG.BackgroundColor3 = Color3.fromRGB(40,40,40); BarBG.Parent = Frame; Instance.new("UICorner", BarBG).CornerRadius = UDim.new(1, 0)
    local Fill = Instance.new("Frame"); Fill.Size = UDim2.new((default - min) / (max - min), 0, 1, 0); Fill.BackgroundColor3 = THEME.Accent; Fill.Parent = BarBG; Instance.new("UICorner", Fill).CornerRadius = UDim.new(1, 0)
    
    local function UpdateVisuals(v)
        local pos = (v - min) / (max - min)
        Fill.Size = UDim2.new(pos, 0, 1, 0)
        Val.Text = tostring(v)
    end

    if stateKey then
        SliderUpdaters[stateKey] = function(newVal)
            UpdateVisuals(newVal)
            callback(newVal)
        end
    end

    local dragging = false
    local function Update(input)
        local pos = math.clamp((input.Position.X - BarBG.AbsolutePosition.X) / BarBG.AbsoluteSize.X, 0, 1)
        local realValue = math.floor((pos * (max - min)) + min)
        UpdateVisuals(realValue)
        callback(realValue)
    end
    BarBG.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then dragging = true; Update(i) end end)
    UserInputService.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then dragging = false end end)
    UserInputService.InputChanged:Connect(function(i) if dragging and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then Update(i) end end)
    return Frame
end

local Section1 = Instance.new("TextLabel"); Section1.Text = "  COMBAT & VISUALS"; Section1.Size = UDim2.new(1,0,0,20); Section1.TextColor3 = THEME.Accent; Section1.BackgroundTransparency = 1; Section1.Font = Enum.Font.GothamBlack; Section1.Parent = Container; Section1.LayoutOrder = getNextOrder()

CreateToggle("📦 ESP BOX (DARK)", "ESPBox", function(v)
    if not v then
        BoxFolder:ClearAllChildren()
        for p, _ in pairs(Box3DLines) do
            ClearBox3DLines(p)
        end
    end
end)

-- ESP BOX TYPE fijo en 2D
State.ESPBoxType = "2D"

CreateToggle("📏 ESP DISTANCE & NAME", "ESPInfo", nil)
CreateToggle("❤️ ESP LIFE BAR", "ESPHealth", nil)
CreateToggle("🚩 ESP LINE (MOD)", "ESPLine", nil)

local LinePosFrame = Instance.new("Frame"); LinePosFrame.Size = UDim2.new(1, -10, 0, 40); LinePosFrame.BackgroundColor3 = THEME.ElementBG; LinePosFrame.Parent = Container; LinePosFrame.LayoutOrder = getNextOrder()
Instance.new("UICorner", LinePosFrame).CornerRadius = UDim.new(0, 6)
local LPLbl = Instance.new("TextLabel"); LPLbl.Text = "  LINE POSITION:"; LPLbl.Size = UDim2.new(0.4, 0, 1, 0); LPLbl.BackgroundTransparency = 1; LPLbl.TextColor3 = THEME.Text; LPLbl.Font = Enum.Font.GothamSemibold; LPLbl.TextXAlignment = Enum.TextXAlignment.Left; LPLbl.Parent = LinePosFrame
local LPBtn = Instance.new("TextButton"); LPBtn.Size = UDim2.new(0.55, 0, 0.7, 0); LPBtn.Position = UDim2.new(0.42, 0, 0.15, 0); LPBtn.BackgroundColor3 = THEME.TopBar; LPBtn.Text = State.ESPLinePos; LPBtn.TextColor3 = THEME.Accent; LPBtn.Font = Enum.Font.GothamBold; LPBtn.TextSize = 12; LPBtn.Parent = LinePosFrame; Instance.new("UICorner", LPBtn).CornerRadius = UDim.new(0, 4)
local LineModes = {"TOP", "CENTER", "BOTTOM"}
local currentLPIdx = 1
LPBtn.MouseButton1Click:Connect(function() currentLPIdx = currentLPIdx + 1; if currentLPIdx > #LineModes then currentLPIdx = 1 end; State.ESPLinePos = LineModes[currentLPIdx]; LPBtn.Text = State.ESPLinePos end)

CreateToggle("👁️ ESP BORDERS (HIGHLIGHT)", "ESP", nil)
CreateToggle("✨ ESP FILLING (NO BORDERS)", "ESPRelleno", nil)
CreateToggle("🎯 ESP CROSSHAIR", "ESPCrosshair", nil)
CreateToggle("👁️‍🗨️ X-RAY (SEEING THROUGH WALLS)", "XRay", function(v) 
    if not v then ClearAllVisuals() end 
end)

local SectionVisualConfig = Instance.new("TextLabel"); SectionVisualConfig.Text = "  VISUAL SETTINGS"; SectionVisualConfig.Size = UDim2.new(1,0,0,20); SectionVisualConfig.TextColor3 = THEME.Accent; SectionVisualConfig.BackgroundTransparency = 1; SectionVisualConfig.Font = Enum.Font.GothamBlack; SectionVisualConfig.Parent = Container; SectionVisualConfig.LayoutOrder = getNextOrder()
CreateToggle("🌈 RGB ESP (RAINBOW MODE)", "RGBESP", nil)
CreateToggle("🟢/🔴 VISIBILITY (GREEN/RED)", "ESPVisibilityColor", nil)

CreateSlider("X-RAY TRANSPARENCY", 10, 100, State.XRayTransparency * 100, function(v) 
    State.XRayTransparency = v/100 
    if State.XRay then
        for part, _ in pairs(XRayParts) do
            if part then part.LocalTransparencyModifier = State.XRayTransparency end
        end
    end
end, nil, "XRayTransparency")

CreateSlider("FIELD OF VIEW (FOV)", 10, 120, State.FieldOfView, function(v) 
    State.FieldOfView = v
    if Camera then Camera.FieldOfView = v end
end, nil, "FieldOfView")

CreateToggle("📱 AIMBOT (MOBILE - Auto Lock)", "AimbotMobile", nil)

local BodyPartFrame = Instance.new("Frame"); BodyPartFrame.Size = UDim2.new(1, -10, 0, 40); BodyPartFrame.BackgroundColor3 = THEME.ElementBG; BodyPartFrame.Parent = Container; BodyPartFrame.LayoutOrder = getNextOrder()
Instance.new("UICorner", BodyPartFrame).CornerRadius = UDim.new(0, 6)
local BPLbl = Instance.new("TextLabel"); BPLbl.Text = " TARGET:"; BPLbl.Size = UDim2.new(0.4, 0, 1, 0); BPLbl.BackgroundTransparency = 1; BPLbl.TextColor3 = THEME.Text; BPLbl.Font = Enum.Font.GothamSemibold; BPLbl.TextXAlignment = Enum.TextXAlignment.Left; BPLbl.Parent = BodyPartFrame
local BPBtn = Instance.new("TextButton"); BPBtn.Size = UDim2.new(0.55, 0, 0.7, 0); BPBtn.Position = UDim2.new(0.42, 0, 0.15, 0); BPBtn.BackgroundColor3 = THEME.TopBar; BPBtn.Text = State.TargetPart; BPBtn.TextColor3 = THEME.Accent; BPBtn.Font = Enum.Font.GothamBold; BPBtn.TextSize = 12; BPBtn.Parent = BodyPartFrame; Instance.new("UICorner", BPBtn).CornerRadius = UDim.new(0, 4)
local BPModes = {"HEAD", "CHEST", "RANDOM"}
local currentBPIdx = 1

local function SetTargetPart(mode)
    State.TargetPart = mode
    BPBtn.Text = mode
    for i, v in ipairs(BPModes) do if v == mode then currentBPIdx = i break end end
end

BPBtn.MouseButton1Click:Connect(function() currentBPIdx = currentBPIdx + 1; if currentBPIdx > #BPModes then currentBPIdx = 1 end; SetTargetPart(BPModes[currentBPIdx]) end)

local HitChanceFrame = Instance.new("Frame"); HitChanceFrame.Size = UDim2.new(1, -10, 0, 40); HitChanceFrame.BackgroundColor3 = THEME.ElementBG; HitChanceFrame.Parent = Container; HitChanceFrame.LayoutOrder = getNextOrder()
Instance.new("UICorner", HitChanceFrame).CornerRadius = UDim.new(0, 6)
local HCLbl = Instance.new("TextLabel"); HCLbl.Text = " HIT CHANCE:"; HCLbl.Size = UDim2.new(0.4, 0, 1, 0); HCLbl.BackgroundTransparency = 1; HCLbl.TextColor3 = THEME.Text; HCLbl.Font = Enum.Font.GothamSemibold; HCLbl.TextXAlignment = Enum.TextXAlignment.Left; HCLbl.Parent = HitChanceFrame
local HCBtn = Instance.new("TextButton"); HCBtn.Size = UDim2.new(0.55, 0, 0.7, 0); HCBtn.Position = UDim2.new(0.42, 0, 0.15, 0); HCBtn.BackgroundColor3 = THEME.TopBar; HCBtn.Text = tostring(State.HitChance) .. "%"; HCBtn.TextColor3 = THEME.Accent; HCBtn.Font = Enum.Font.GothamBold; HCBtn.TextSize = 12; HCBtn.Parent = HitChanceFrame; Instance.new("UICorner", HCBtn).CornerRadius = UDim.new(0, 4)
local HCModes = {100, 70, 50, 20, 1}
local currentHCIdx = 1
HCBtn.MouseButton1Click:Connect(function() currentHCIdx = currentHCIdx + 1; if currentHCIdx > #HCModes then currentHCIdx = 1 end; State.HitChance = HCModes[currentHCIdx]; HCBtn.Text = tostring(State.HitChance) .. "%" end)

local RapidFireToggle = CreateToggle("🔥 RAPID FIRE", "RapidFire", nil)
local NoRecoilToggle = CreateToggle("🚫 NO RECOIL", "NoRecoil", nil)
local SilentAimToggle = CreateToggle("🎯 SILENT AIM", "SilentAim", nil)

local AimModeFrame = Instance.new("Frame"); AimModeFrame.Size = UDim2.new(1, -10, 0, 40); AimModeFrame.BackgroundColor3 = THEME.ElementBG; AimModeFrame.Parent = Container; AimModeFrame.LayoutOrder = getNextOrder()
Instance.new("UICorner", AimModeFrame).CornerRadius = UDim.new(0, 6)
local ModeLabel = Instance.new("TextLabel"); ModeLabel.Text = " AIMBOT TYPE:"; ModeLabel.Size = UDim2.new(0.4, 0, 1, 0); ModeLabel.BackgroundTransparency = 1; ModeLabel.TextColor3 = THEME.Text; ModeLabel.Font = Enum.Font.GothamSemibold; ModeLabel.TextXAlignment = Enum.TextXAlignment.Left; ModeLabel.Parent = AimModeFrame
local ModeBtn = Instance.new("TextButton"); ModeBtn.Size = UDim2.new(0.55, 0, 0.7, 0); ModeBtn.Position = UDim2.new(0.42, 0, 0.15, 0); ModeBtn.BackgroundColor3 = THEME.TopBar; ModeBtn.Text = State.AimbotMode; ModeBtn.TextColor3 = THEME.Accent; ModeBtn.Font = Enum.Font.GothamBold; ModeBtn.TextSize = 12; ModeBtn.Parent = AimModeFrame; Instance.new("UICorner", ModeBtn).CornerRadius = UDim.new(0, 4)
local AimModes = {"LEGIT", "BLATANT", "SMOOTH"}
local currentModeIdx = 1
ModeBtn.MouseButton1Click:Connect(function() currentModeIdx = currentModeIdx + 1; if currentModeIdx > #AimModes then currentModeIdx = 1 end; State.AimbotMode = AimModes[currentModeIdx]; ModeBtn.Text = State.AimbotMode end)

CreateToggle("🔍 WALL CHECK", "WallCheck", nil)
CreateToggle("📏 DISTANCE CHECK", "DistanceCheck", nil)
CreateToggle("🛡️ TEAM CHECK", "TeamCheck", nil)
CreateToggle("⭕ SHOW FOV", "ShowFOV", function(v) FOVFrame.Visible = v end)
CreateSlider("FOV Size", 10, 400, State.FOVSize, function(val) State.FOVSize = val; FOVFrame.Size = UDim2.new(0, val*2, 0, val*2) end, nil, "FOVSize")

local SectionOrbit = Instance.new("TextLabel"); SectionOrbit.Text = "  ORBIT SYSTEM"; SectionOrbit.Size = UDim2.new(1,0,0,20); SectionOrbit.TextColor3 = THEME.Accent; SectionOrbit.BackgroundTransparency = 1; SectionOrbit.Font = Enum.Font.GothamBlack; SectionOrbit.Parent = Container; SectionOrbit.LayoutOrder = getNextOrder()
local MainOrbitToggle = CreateToggle("🌀 ACTIVATE ORBIT", "Orbiting", function(v) if _G.OrbitContainer then _G.OrbitContainer.Visible = v end; if not v then State.OrbitTarget = nil end end)
local OrbitGroup = Instance.new("Frame"); OrbitGroup.Name = "OrbitGroup"; OrbitGroup.Size = UDim2.new(1, 0, 0, 210); OrbitGroup.BackgroundTransparency = 1; OrbitGroup.Visible = false; OrbitGroup.Parent = Container; OrbitGroup.LayoutOrder = MainOrbitToggle.LayoutOrder + 1; _G.OrbitContainer = OrbitGroup
local OrbitGroupLayout = Instance.new("UIListLayout"); OrbitGroupLayout.Parent = OrbitGroup; OrbitGroupLayout.Padding = UDim.new(0, 8)
local OrbitListFrame = Instance.new("Frame"); OrbitListFrame.Size = UDim2.new(1, -10, 0, 100); OrbitListFrame.BackgroundColor3 = THEME.ElementBG; OrbitListFrame.Parent = OrbitGroup; Instance.new("UICorner", OrbitListFrame).CornerRadius = UDim.new(0, 6)
local OrbitScroll = Instance.new("ScrollingFrame"); OrbitScroll.Size = UDim2.new(1, -10, 1, -10); OrbitScroll.Position = UDim2.new(0, 5, 0, 5); OrbitScroll.BackgroundTransparency = 1; OrbitScroll.ScrollBarThickness = 2; OrbitScroll.Parent = OrbitListFrame
local OrbitListLayout = Instance.new("UIListLayout"); OrbitListLayout.Parent = OrbitScroll; OrbitListLayout.Padding = UDim.new(0, 2)
OrbitListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function() OrbitScroll.CanvasSize = UDim2.new(0, 0, 0, OrbitListLayout.AbsoluteContentSize.Y + 5) end)

local function UpdateOrbitList()
    for _, child in pairs(OrbitScroll:GetChildren()) do if child:IsA("TextButton") then child:Destroy() end end
    for _, p in pairs(Players:GetPlayers()) do if p ~= LocalPlayer then local pBtn = Instance.new("TextButton"); pBtn.Size = UDim2.new(1, 0, 0, 20); pBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 25); pBtn.Text = p.Name; pBtn.TextColor3 = THEME.Text; pBtn.Font = Enum.Font.Gotham; pBtn.TextSize = 12; pBtn.Parent = OrbitScroll; Instance.new("UICorner", pBtn).CornerRadius = UDim.new(0, 4); pBtn.MouseButton1Click:Connect(function() State.OrbitTarget = p; State.Orbiting = true; if _G.OrbitContainer then _G.OrbitContainer.Visible = true end end) end end
end
UpdateOrbitList(); Players.PlayerAdded:Connect(UpdateOrbitList); Players.PlayerRemoving:Connect(UpdateOrbitList)
CreateSlider("Distance", 2, 50, State.OrbitDistance, function(v) State.OrbitDistance = v end, OrbitGroup, "OrbitDistance")
CreateSlider("Spin Speed", 1, 50, State.OrbitSpeed, function(v) State.OrbitSpeed = v end, OrbitGroup, "OrbitSpeed")

local Section2 = Instance.new("TextLabel"); Section2.Text = "  MOVEMENT & TP"; Section2.Size = UDim2.new(1,0,0,20); Section2.TextColor3 = THEME.Accent; Section2.BackgroundTransparency = 1; Section2.Font = Enum.Font.GothamBlack; Section2.Parent = Container; Section2.LayoutOrder = getNextOrder()

CreateToggle("🎥 FREE CAM MENU", "FreecamEnabled", function(v)
    if FreecamGuiObject then
        FreecamGuiObject.Enabled = v and State.PanelVisible
    end
end)

CreateToggle("🧱 WALLHACK", "Wallhack", function(v)
    if not v and LocalPlayer.Character then
        for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = true end
        end
    end
end)
CreateToggle("🕊️ FLY HACK (FREECAM MODE)", "Fly", function(v) ToggleFly(v) end)
CreateSlider("Fly Speed", 10, 300, State.FlySpeed, function(val) State.FlySpeed = val end, nil, "FlySpeed")
CreateToggle("⚡ SPEED HACK", "SpeedHack", nil)
CreateSlider("Speed", 16, 250, State.Speed, function(val) State.Speed = val end, nil, "Speed")
CreateToggle("🐰 JUMP HACK", "JumpHack", function(v)
    if not v and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)
CreateToggle("⏫ MULTI-JUMP", "MultiJump", nil)
CreateSlider("Jump", 50, 500, State.Jump, function(val) State.Jump = val end, nil, "Jump")
CreateToggle("🌀 SPIN HACK", "SpinHack", nil)
CreateSlider("Spin Speed", 1, 50, State.SpinSpeed, function(val) State.SpinSpeed = val end, nil, "SpinSpeed")
CreateToggle("🔙 TELEPORT ENEMY", "BackTP", function(v) 
    if not v then 
        State.BackTPTarget = nil 
        if LocalPlayer.Character then
            if LocalPlayer.Character:FindFirstChild("Humanoid") then
                LocalPlayer.Character.Humanoid.PlatformStand = false
            end
            for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") then part.CanCollide = true end
            end
        end
    end 
end)

local TPModeFrame = Instance.new("Frame"); TPModeFrame.Size = UDim2.new(1, -10, 0, 40); TPModeFrame.BackgroundColor3 = THEME.ElementBG; TPModeFrame.Parent = Container; TPModeFrame.LayoutOrder = getNextOrder()
Instance.new("UICorner", TPModeFrame).CornerRadius = UDim.new(0, 6)
local TPLbl = Instance.new("TextLabel"); TPLbl.Text = "  TP POSITION:"; TPLbl.Size = UDim2.new(0.4, 0, 1, 0); TPLbl.BackgroundTransparency = 1; TPLbl.TextColor3 = THEME.Text; TPLbl.Font = Enum.Font.GothamSemibold; TPLbl.TextXAlignment = Enum.TextXAlignment.Left; TPLbl.Parent = TPModeFrame
local TPBtn = Instance.new("TextButton"); TPBtn.Size = UDim2.new(0.55, 0, 0.7, 0); TPBtn.Position = UDim2.new(0.42, 0, 0.15, 0); TPBtn.BackgroundColor3 = THEME.TopBar; TPBtn.Text = State.BackTPMode; TPBtn.TextColor3 = THEME.Accent; TPBtn.Font = Enum.Font.GothamBold; TPBtn.TextSize = 12; TPBtn.Parent = TPModeFrame; Instance.new("UICorner", TPBtn).CornerRadius = UDim.new(0, 4)
local TPModes = {"ABOVE", "BELOW", "BEHIND", "FRONT", "RIGHT", "LEFT"}
local currentTPIdx = 1
TPBtn.MouseButton1Click:Connect(function() currentTPIdx = currentTPIdx + 1; if currentTPIdx > #TPModes then currentTPIdx = 1 end; State.BackTPMode = TPModes[currentTPIdx]; TPBtn.Text = State.BackTPMode end)

CreateButton("📍 SAVE POSITION", function() if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then State.SavedCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame end end)
CreateButton("🚀 TELEPORT SAVE", function() if State.SavedCFrame and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then LocalPlayer.Character.HumanoidRootPart.CFrame = State.SavedCFrame end end)

local SectionBotones = Instance.new("TextLabel"); SectionBotones.Text = "  FLOATING BUTTONS"; SectionBotones.Size = UDim2.new(1,0,0,20); SectionBotones.TextColor3 = THEME.Accent; SectionBotones.BackgroundTransparency = 1; SectionBotones.Font = Enum.Font.GothamBlack; SectionBotones.Parent = Container; SectionBotones.LayoutOrder = getNextOrder()
CreateToggle("🔘 FLOATING: AIMBOT", "FloatAimbot", function(v) FloatAimbotBtn.Visible = v end)
CreateToggle("🔘 FLOATING: ESP", "FloatESP", function(v) FloatESPBtn.Visible = v end)
CreateToggle("🔘 FLOATING: FLY", "FloatFly", function(v) FloatFlyBtn.Visible = v end)

local HUDSection = Instance.new("Frame"); HUDSection.Size = UDim2.new(1, -10, 0, 40); HUDSection.BackgroundColor3 = THEME.ElementBG; HUDSection.Parent = Container; HUDSection.LayoutOrder = getNextOrder()
Instance.new("UICorner", HUDSection).CornerRadius = UDim.new(0, 6)
local HUDLbl = Instance.new("TextLabel"); HUDLbl.Text = "  HUD EDIT MODE"; HUDLbl.Size = UDim2.new(0.5, 0, 1, 0); HUDLbl.BackgroundTransparency = 1; HUDLbl.TextColor3 = THEME.Text; HUDLbl.Font = Enum.Font.GothamSemibold; HUDLbl.TextXAlignment = Enum.TextXAlignment.Left; HUDLbl.Parent = HUDSection
local EditBtn = Instance.new("TextButton"); EditBtn.Text = "EDIT"; EditBtn.Size = UDim2.new(0.4, 0, 0.7, 0); EditBtn.Position = UDim2.new(0.55, 0, 0.15, 0); EditBtn.BackgroundColor3 = THEME.Accent; EditBtn.TextColor3 = THEME.Text; EditBtn.Font = Enum.Font.GothamBold; EditBtn.Parent = HUDSection; Instance.new("UICorner", EditBtn).CornerRadius = UDim.new(0, 6)
EditBtn.MouseButton1Click:Connect(function() EnableHUDEdit(true) end)

SaveHUDBtn.MouseButton1Click:Connect(function()
    SaveHUDPosition(FloatAimbotBtn.Position, "FloatAimbot")
    SaveHUDPosition(FloatESPBtn.Position, "FloatESP")
    SaveHUDPosition(FloatFlyBtn.Position, "FloatFly")
    EnableHUDEdit(false)
end)

CancelHUDBtn.MouseButton1Click:Connect(function()
    local posAimbot = LoadHUDPosition("FloatAimbot")
    if posAimbot then FloatAimbotBtn.Position = posAimbot else FloatAimbotBtn.Position = UDim2.new(0, 15, 0.3, 0) end
    
    local posESP = LoadHUDPosition("FloatESP")
    if posESP then FloatESPBtn.Position = posESP else FloatESPBtn.Position = UDim2.new(0, 15, 0.4, 0) end
    
    local posFly = LoadHUDPosition("FloatFly")
    if posFly then FloatFlyBtn.Position = posFly else FloatFlyBtn.Position = UDim2.new(0, 15, 0.5, 0) end
    
    EnableHUDEdit(false)
end)

-- GIRO PARTIDA TOGGLE en panel (tab MISC)
-- Al activar, reiniciamos el angulo para evitar salto brusco
CreateToggle("🌪️ GIRO PARTIDA", "GiroPartida", function(v)
    if v then
        giroAngle = 0
    else
        if LocalPlayer.Character then
            for _, p in pairs(LocalPlayer.Character:GetChildren()) do
                if p:IsA("BasePart") then p.CanCollide = true end
            end
        end
    end
end)

local SectionInfo = Instance.new("TextLabel"); SectionInfo.Text = "  PANEL STATISTICS"; SectionInfo.Size = UDim2.new(1,0,0,20); SectionInfo.TextColor3 = THEME.Accent; SectionInfo.BackgroundTransparency = 1; SectionInfo.Font = Enum.Font.GothamBlack; SectionInfo.Parent = Container; SectionInfo.LayoutOrder = getNextOrder()

local InfoFrame = Instance.new("Frame")
InfoFrame.Size = UDim2.new(1, -10, 0, 40); InfoFrame.BackgroundColor3 = THEME.ElementBG; InfoFrame.Parent = Container; InfoFrame.LayoutOrder = getNextOrder()
Instance.new("UICorner", InfoFrame).CornerRadius = UDim.new(0, 6)

local KeysLabel = Instance.new("TextLabel"); KeysLabel.Text = "ACTIVE KEYS: Loading..."; KeysLabel.Size = UDim2.new(1, -20, 1, 0); KeysLabel.Position = UDim2.new(0, 10, 0, 0); KeysLabel.BackgroundTransparency = 1; KeysLabel.TextColor3 = THEME.Success; KeysLabel.Font = Enum.Font.GothamBold; KeysLabel.TextXAlignment = Enum.TextXAlignment.Left; KeysLabel.Parent = InfoFrame

local ConfigSectionLabel = Instance.new("TextLabel"); ConfigSectionLabel.Text = "  SETTINGS (JSON)"; ConfigSectionLabel.Size = UDim2.new(1,0,0,20); ConfigSectionLabel.TextColor3 = THEME.Accent; ConfigSectionLabel.BackgroundTransparency = 1; ConfigSectionLabel.Font = Enum.Font.GothamBlack; ConfigSectionLabel.Parent = Container; ConfigSectionLabel.LayoutOrder = getNextOrder()

local ConfigManagerFrame = Instance.new("Frame")
ConfigManagerFrame.Size = UDim2.new(1, -10, 0, 120); ConfigManagerFrame.BackgroundColor3 = THEME.ElementBG; ConfigManagerFrame.Parent = Container; ConfigManagerFrame.LayoutOrder = getNextOrder()
Instance.new("UICorner", ConfigManagerFrame).CornerRadius = UDim.new(0, 6)

local ConfigNameInput = Instance.new("TextBox")
ConfigNameInput.Size = UDim2.new(0.9, 0, 0, 30); ConfigNameInput.Position = UDim2.new(0.05, 0, 0.1, 0); ConfigNameInput.BackgroundColor3 = THEME.TopBar; ConfigNameInput.TextColor3 = THEME.Text; ConfigNameInput.Font = Enum.Font.GothamBold; ConfigNameInput.PlaceholderText = "Name (4-15 characters)"; ConfigNameInput.Text = ""; ConfigNameInput.Parent = ConfigManagerFrame; Instance.new("UICorner", ConfigNameInput).CornerRadius = UDim.new(0, 4)

ConfigNameInput:GetPropertyChangedSignal("Text"):Connect(function()
    if #ConfigNameInput.Text > 15 then
        ConfigNameInput.Text = string.sub(ConfigNameInput.Text, 1, 15)
    end
end)

local SaveConfigBtn = Instance.new("TextButton")
SaveConfigBtn.Size = UDim2.new(0.9, 0, 0, 35); SaveConfigBtn.Position = UDim2.new(0.05, 0, 0.5, 0); SaveConfigBtn.BackgroundColor3 = THEME.Accent; SaveConfigBtn.TextColor3 = THEME.Text; SaveConfigBtn.Font = Enum.Font.GothamBold; SaveConfigBtn.Text = "💾 SAVE SETTINGS"; SaveConfigBtn.Parent = ConfigManagerFrame; Instance.new("UICorner", SaveConfigBtn).CornerRadius = UDim.new(0, 6)

local ConfigListFrame = Instance.new("ScrollingFrame")
ConfigListFrame.Size = UDim2.new(1, -10, 0, 100); ConfigListFrame.BackgroundColor3 = THEME.ElementBG; ConfigListFrame.ScrollBarThickness = 2; ConfigListFrame.Parent = Container; ConfigListFrame.LayoutOrder = getNextOrder()
Instance.new("UICorner", ConfigListFrame).CornerRadius = UDim.new(0, 6)
local ConfigListLayout = Instance.new("UIListLayout"); ConfigListLayout.Parent = ConfigListFrame; ConfigListLayout.Padding = UDim.new(0, 4)

local function GetConfigList()
    if isfolder and not isfolder("DarkMatter_Configs") then
        makefolder("DarkMatter_Configs")
    end
    return listfiles("DarkMatter_Configs")
end

local function LoadConfig(name)
    local path = "DarkMatter_Configs/" .. name .. ".json"
    if isfile(path) then
        local data = HttpService:JSONDecode(readfile(path))
        for key, value in pairs(data) do
            if key ~= "Orbiting" and key ~= "OrbitTarget" and key ~= "OrbitSpeed" and key ~= "OrbitDistance" and key ~= "OrbitAngle" then
                if State[key] ~= nil then
                    if type(value) == "boolean" and ToggleUpdaters[key] then
                        ToggleUpdaters[key](value)
                    elseif type(value) == "number" and SliderUpdaters[key] then
                        SliderUpdaters[key](value)
                    elseif key == "TargetPart" then
                        SetTargetPart(value)
                    else
                        State[key] = value
                    end
                end
            end
        end
        State.Orbiting = false
        State.OrbitTarget = nil
        if ToggleUpdaters["Orbiting"] then
            ToggleUpdaters["Orbiting"](false)
        end
    end
end

local isConfirmingAction = false

local function UpdateConfigUIList()
    for _, child in pairs(ConfigListFrame:GetChildren()) do if child:IsA("Frame") then child:Destroy() end end
    local files = GetConfigList()
    for _, file in pairs(files) do
        local fileName = file:match("([^/]+)%.json$")
        if fileName then
            local ItemFrame = Instance.new("Frame")
            ItemFrame.Size = UDim2.new(1, -10, 0, 40); ItemFrame.BackgroundTransparency = 1; ItemFrame.Parent = ConfigListFrame
            
            local btn = Instance.new("TextButton")
            btn.Size = UDim2.new(0.72, 0, 0, 30); btn.Position = UDim2.new(0.02, 0, 0, 5); btn.BackgroundColor3 = Color3.fromRGB(30, 30, 35); btn.TextColor3 = THEME.Text; btn.Font = Enum.Font.Gotham; btn.Text = " 📂 " .. fileName; btn.TextXAlignment = Enum.TextXAlignment.Left; btn.Parent = ItemFrame
            Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 4)
            
            local delBtn = Instance.new("TextButton")
            delBtn.Size = UDim2.new(0.2, 0, 0, 30); delBtn.Position = UDim2.new(0.76, 0, 0, 5); delBtn.BackgroundColor3 = THEME.Danger; delBtn.TextColor3 = THEME.Text; delBtn.Font = Enum.Font.GothamBold; delBtn.Text = "X"; delBtn.Parent = ItemFrame
            Instance.new("UICorner", delBtn).CornerRadius = UDim.new(0, 4)

            btn.MouseButton1Click:Connect(function()
                if isConfirmingAction then return end
                isConfirmingAction = true
                
                local confirm = Instance.new("Frame")
                confirm.Size = UDim2.new(0, 200, 0, 100); confirm.Position = UDim2.new(0.5, -100, 0.5, -50); confirm.BackgroundColor3 = THEME.Background; confirm.ZIndex = 700; confirm.Parent = ScreenGui; Instance.new("UICorner", confirm).CornerRadius = UDim.new(0, 8); Instance.new("UIStroke", confirm).Color = THEME.Accent
                local txt = Instance.new("TextLabel"); txt.Size = UDim2.new(1, 0, 0, 60); txt.Text = "Load " .. fileName .. "?"; txt.TextColor3 = THEME.Text; txt.ZIndex = 701; txt.BackgroundTransparency = 1; txt.Parent = confirm
                local y = Instance.new("TextButton")
                y.Size = UDim2.new(0.4, 0, 0, 30); y.Position = UDim2.new(0.05, 0, 0.6, 0); y.BackgroundColor3 = THEME.Success; y.Text = "YES"; y.ZIndex = 701; y.Parent = confirm
                local n = Instance.new("TextButton")
                n.Size = UDim2.new(0.4, 0, 0, 30); n.Position = UDim2.new(0.55, 0, 0.6, 0); n.BackgroundColor3 = THEME.Danger; n.Text = "NO"; n.ZIndex = 701; n.Parent = confirm
                y.MouseButton1Click:Connect(function() LoadConfig(fileName); confirm:Destroy(); isConfirmingAction = false end)
                n.MouseButton1Click:Connect(function() confirm:Destroy(); isConfirmingAction = false end)
            end)
            
            delBtn.MouseButton1Click:Connect(function()
                if isConfirmingAction then return end
                isConfirmingAction = true
                
                local confirm1 = Instance.new("Frame")
                confirm1.Size = UDim2.new(0, 200, 0, 100); confirm1.Position = UDim2.new(0.5, -100, 0.5, -50); confirm1.BackgroundColor3 = THEME.Background; confirm1.ZIndex = 700; confirm1.Parent = ScreenGui; Instance.new("UICorner", confirm1).CornerRadius = UDim.new(0, 8); Instance.new("UIStroke", confirm1).Color = THEME.Accent
                local txt1 = Instance.new("TextLabel"); txt1.Size = UDim2.new(1, 0, 0, 60); txt1.Text = "Delete " .. fileName .. "?"; txt1.TextColor3 = THEME.Text; txt1.ZIndex = 701; txt1.BackgroundTransparency = 1; txt1.Parent = confirm1
                local y1 = Instance.new("TextButton"); y1.Size = UDim2.new(0.4, 0, 0, 30); y1.Position = UDim2.new(0.05, 0, 0.6, 0); y1.BackgroundColor3 = THEME.Success; y1.Text = "YES"; y1.ZIndex = 701; y1.Parent = confirm1
                local n1 = Instance.new("TextButton"); n1.Size = UDim2.new(0.4, 0, 0, 30); n1.Position = UDim2.new(0.55, 0, 0.6, 0); n1.BackgroundColor3 = THEME.Danger; n1.Text = "NO"; n1.ZIndex = 701; n1.Parent = confirm1

                y1.MouseButton1Click:Connect(function()
                    confirm1:Destroy()
                    
                    local confirm2 = Instance.new("Frame")
                    confirm2.Size = UDim2.new(0, 200, 0, 100); confirm2.Position = UDim2.new(0.5, -100, 0.5, -50); confirm2.BackgroundColor3 = THEME.Background; confirm2.ZIndex = 700; confirm2.Parent = ScreenGui; Instance.new("UICorner", confirm2).CornerRadius = UDim.new(0, 8); Instance.new("UIStroke", confirm2).Color = THEME.Accent
                    local txt2 = Instance.new("TextLabel"); txt2.Size = UDim2.new(1, 0, 0, 60); txt2.Text = "Are you REALLY sure?"; txt2.TextColor3 = THEME.Danger; txt2.ZIndex = 701; txt2.BackgroundTransparency = 1; txt2.Parent = confirm2
                    local y2 = Instance.new("TextButton"); y2.Size = UDim2.new(0.4, 0, 0, 30); y2.Position = UDim2.new(0.05, 0, 0.6, 0); y2.BackgroundColor3 = THEME.Danger; y2.Text = "YES, DELETE"; y2.ZIndex = 701; y2.Parent = confirm2
                    local n2 = Instance.new("TextButton"); n2.Size = UDim2.new(0.4, 0, 0, 30); n2.Position = UDim2.new(0.55, 0, 0.6, 0); n2.BackgroundColor3 = THEME.ElementBG; n2.Text = "CANCEL"; n2.ZIndex = 701; n2.Parent = confirm2

                    y2.MouseButton1Click:Connect(function()
                        if delfile then
                            delfile(file)
                            UpdateConfigUIList()
                        end
                        confirm2:Destroy()
                        isConfirmingAction = false
                    end)
                    n2.MouseButton1Click:Connect(function()
                        confirm2:Destroy()
                        isConfirmingAction = false
                    end)
                end)
                
                n1.MouseButton1Click:Connect(function()
                    confirm1:Destroy()
                    isConfirmingAction = false
                end)
            end)
        end
    end
    ConfigListFrame.CanvasSize = UDim2.new(0, 0, 0, ConfigListLayout.AbsoluteContentSize.Y + 5)
end

SaveConfigBtn.MouseButton1Click:Connect(function()
    local name = ConfigNameInput.Text
    if #name >= 4 and #name <= 15 then
        local data = {}
        for k, v in pairs(State) do 
            if type(v) ~= "userdata" and k ~= "SavedCFrame" and k ~= "Orbiting" and k ~= "OrbitTarget" and k ~= "OrbitSpeed" and k ~= "OrbitDistance" and k ~= "OrbitAngle" then 
                data[k] = v 
            end 
        end
        if writefile then
            if not isfolder("DarkMatter_Configs") then makefolder("DarkMatter_Configs") end
            writefile("DarkMatter_Configs/" .. name .. ".json", HttpService:JSONEncode(data))
            UpdateConfigUIList()
            ConfigNameInput.Text = ""
        end
    else
        SaveConfigBtn.Text = "INVALID NAME LENGTH!"
        task.wait(1)
        SaveConfigBtn.Text = "💾 SAVE SETTINGS"
    end
end)

UpdateConfigUIList()

local function parseDate(str)
    local Y, M, D, h, m, s = str:match("(%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)")
    if Y then return os.time({year=Y, month=M, day=D, hour=h, min=m, sec=s}) end
    return 0
end

task.spawn(function()
    while ScriptRunning do
        local success, result = pcall(function()
            local url = "https://key-sistem-roblox-dm-default-rtdb.firebaseio.com/keys.json"
            local HttpServiceReq = game:GetService("HttpService")
            local req = game:HttpGet(url)
            local data = HttpServiceReq:JSONDecode(req)
            local activeCount = 0
            local currentTime = os.time()
            for k, v in pairs(data) do
                if type(v) == "table" and v.expira then
                    local expTime = parseDate(v.expira)
                    if expTime > currentTime then
                        activeCount = activeCount + 1
                    end
                end
            end
            return activeCount
        end)
        
        if success then
            KeysLabel.Text = "ACTIVE KEYS: " .. tostring(result)
        else
            KeysLabel.Text = "ACTIVE KEYS: Error..."
        end
        task.wait(5)
    end
end)

local ElementCategoryMap = {}

local function AssignCat(matchText, category)
    for _, child in pairs(Container:GetChildren()) do
        if child:IsA("Frame") or child:IsA("TextButton") then
            local itemText = ""
            if child:IsA("TextButton") then
                itemText = child.Text
            else
                local lbl = child:FindFirstChildOfClass("TextLabel")
                if lbl then itemText = lbl.Text end
            end

            if itemText ~= "" and string.find(itemText, matchText, 1, true) then
                ElementCategoryMap[child] = category
            end
        end
    end
end

AssignCat("ESP BOX", "VISUALS")
AssignCat("BOX TYPE", "VISUALS")
AssignCat("ESP DISTANCE", "VISUALS")
AssignCat("ESP LIFE BAR", "VISUALS")
AssignCat("ESP LINE", "VISUALS")
AssignCat("LINE POSITION", "VISUALS")
AssignCat("ESP BORDERS", "VISUALS")
AssignCat("ESP FILLING", "VISUALS")
AssignCat("ESP CROSSHAIR", "VISUALS")
AssignCat("X-RAY", "VISUALS")
AssignCat("RGB ESP", "VISUALS")
AssignCat("VISIBILITY", "VISUALS")
AssignCat("X-RAY TRANSPARENCY", "VISUALS")
AssignCat("FIELD OF VIEW", "VISUALS")

AssignCat("AIMBOT (MOBILE", "COMBAT")
AssignCat("TARGET:", "COMBAT")
AssignCat("HIT CHANCE", "COMBAT")
AssignCat("RAPID FIRE", "COMBAT")
AssignCat("NO RECOIL", "COMBAT")
AssignCat("SILENT AIM", "COMBAT")
AssignCat("AIMBOT TYPE", "COMBAT")
AssignCat("SHOW FOV", "COMBAT")
AssignCat("FOV Size", "COMBAT")

AssignCat("FREE CAM MENU", "MOVEMENT")
AssignCat("WALLHACK", "MOVEMENT")
AssignCat("FLY HACK", "MOVEMENT")
AssignCat("Fly Speed", "MOVEMENT")
AssignCat("SPEED HACK", "MOVEMENT")
AssignCat("Speed", "MOVEMENT")
AssignCat("JUMP HACK", "MOVEMENT")
AssignCat("MULTI-JUMP", "MOVEMENT")
AssignCat("Jump", "MOVEMENT")
AssignCat("SPIN HACK", "MOVEMENT")
AssignCat("Spin Speed", "MOVEMENT")

AssignCat("TELEPORT ENEMY", "MISC")
AssignCat("TP POSITION", "MISC")
AssignCat("SAVE POSITION", "MISC")
AssignCat("TELEPORT SAVE", "MISC")
AssignCat("WALL CHECK", "MISC")
AssignCat("DISTANCE CHECK", "MISC")
AssignCat("TEAM CHECK", "MISC")
AssignCat("ACTIVATE ORBIT", "MISC")
AssignCat("HUD EDIT MODE", "MISC")
AssignCat("GIRO PARTIDA", "MISC")

AssignCat("FLOATING BUTTONS", "MISC")
AssignCat("FLOATING: AIMBOT", "MISC")
AssignCat("FLOATING: ESP", "MISC")
AssignCat("FLOATING: FLY", "MISC")

AssignCat("ACTIVE KEYS", "INFORMATION")

if Container:FindFirstChild("OrbitGroup") then 
    ElementCategoryMap[Container.OrbitGroup] = "MISC" 
end

if ConfigManagerFrame then ElementCategoryMap[ConfigManagerFrame] = "INFORMATION" end
if ConfigListFrame then ElementCategoryMap[ConfigListFrame] = "INFORMATION" end

for _, child in pairs(Container:GetChildren()) do
    if child:IsA("TextLabel") and (string.find(child.Text, "COMBAT & VISUALS") or string.find(child.Text, "VISUAL SETTINGS") or string.find(child.Text, "ORBIT SYSTEM") or string.find(child.Text, "MOVEMENT & TP") or string.find(child.Text, "PANEL STATISTICS") or string.find(child.Text, "FLOATING BUTTONS")) then
        child.Visible = false
    end
end

UniversalBtn.MouseButton1Click:Connect(function()
    IsRivals = false
    ManualModeSelected = true
    SelectorFrame.Visible = false
    MainFrame.Visible = true
    
    RapidFireToggle.Visible = false
    NoRecoilToggle.Visible = false
    SilentAimToggle.Visible = false
    if HitChanceFrame then HitChanceFrame.Visible = false end
    
    if _G.UpdateCategoryVisibility then _G.UpdateCategoryVisibility() end
end)

RivalsBtn.MouseButton1Click:Connect(function()
    IsRivals = true
    ManualModeSelected = true
    SelectorFrame.Visible = false
    MainFrame.Visible = true
    
    State.AimbotMode = "BLATANT"
    ModeBtn.Text = State.AimbotMode
    
    if AimModeFrame then AimModeFrame.Visible = false end
    
    if _G.UpdateCategoryVisibility then _G.UpdateCategoryVisibility() end
end)

_G.UpdateCategoryVisibility = function()
    if not ManualModeSelected then return end
    for element, category in pairs(ElementCategoryMap) do
        local isMatch = (category == currentActiveTab)
        
        if isMatch then
            local isRivalsFeature = (element == RapidFireToggle or element == NoRecoilToggle or element == SilentAimToggle or element == HitChanceFrame)
            local isUniversalFeature = (element == AimModeFrame)
            
            if not IsRivals and isRivalsFeature then
                element.Visible = false
            elseif IsRivals and isUniversalFeature then
                element.Visible = false
            elseif element == _G.OrbitContainer then
                element.Visible = State.Orbiting
            else
                element.Visible = true
            end
        else
            element.Visible = false
        end
    end
    
    ConfigSectionLabel.Visible = (currentActiveTab == "INFORMATION")
end

if CategoryFrames["COMBAT"] then
    CategoryFrames["COMBAT"].BackgroundColor3 = THEME.Accent
    CategoryFrames["COMBAT"].TextColor3 = THEME.TopBar
end
_G.UpdateCategoryVisibility()

local function IsVisible(part)
    local params = RaycastParams.new(); params.FilterType = Enum.RaycastFilterType.Exclude; params.FilterDescendantsInstances = {LocalPlayer.Character, part.Parent}
    local result = Workspace:Raycast(Camera.CFrame.Position, part.Position - Camera.CFrame.Position, params)
    return not result
end

local function GetTargetPart(char)
    if not char then return nil end
    if State.TargetPart == "HEAD" then return char:FindFirstChild("Head")
    elseif State.TargetPart == "CHEST" then return char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso")
    else 
        local parts = {char:FindFirstChild("Head"), char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso")}
        return parts[math.random(1, 2)]
    end
end

local function GetClosestPlayer()
    local closest, shortestMetric = nil, math.huge
    local centerPos = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    for _, v in pairs(Players:GetPlayers()) do
        if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and v.Character.Humanoid.Health > 0 then
            if State.TeamCheck and v.Team == LocalPlayer.Team then continue end
            if State.WallCheck and not IsVisible(v.Character.Head) then continue end
            local part = GetTargetPart(v.Character) or v.Character.Head
            local headPos, onScreen = Camera:WorldToViewportPoint(part.Position)
            if onScreen then
                local screenDist = (Vector2.new(headPos.X, headPos.Y) - centerPos).Magnitude
                if screenDist < State.FOVSize then
                    if State.DistanceCheck then
                        local worldDist = (part.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if worldDist < State.AimbotRange and worldDist < shortestMetric then shortestMetric = worldDist; closest = part end
                    else
                        if screenDist < shortestMetric then shortestMetric = screenDist; closest = part end
                    end
                end
            end
        end
    end
    return closest
end

-- Funcion para dibujar una caja 3D real usando Drawing Lines proyectando los 8 vertices del bounding box del personaje
-- Los 8 vertices se calculan desde el HumanoidRootPart con un half-size estimado del personaje
-- Las 12 aristas del cubo se proyectan a pantalla y se dibujan como lineas
local function DrawBox3D(p, hrp, espColor)
    -- Limpiar cajas 2D del BoxFolder para este jugador al usar 3D
    local oldBox = BoxFolder:FindFirstChild(p.Name .. "_DarkBox")
    if oldBox then oldBox.Visible = false end

    -- Half-sizes del bounding box del personaje (ancho, alto, profundidad)
    local sx = 1.5
    local sy = 3.0
    local sz = 1.0

    -- Los 8 vertices en espacio local del HRP
    local corners = {
        Vector3.new(-sx,  sy, -sz),
        Vector3.new( sx,  sy, -sz),
        Vector3.new( sx, -sy, -sz),
        Vector3.new(-sx, -sy, -sz),
        Vector3.new(-sx,  sy,  sz),
        Vector3.new( sx,  sy,  sz),
        Vector3.new( sx, -sy,  sz),
        Vector3.new(-sx, -sy,  sz),
    }

    -- Las 12 aristas como pares de indices (1-based)
    local edges = {
        {1,2},{2,3},{3,4},{4,1},
        {5,6},{6,7},{7,8},{8,5},
        {1,5},{2,6},{3,7},{4,8},
    }

    -- Proyectar vertices a pantalla
    local screenPts = {}
    local allOnScreen = true
    for i, localOffset in ipairs(corners) do
        local worldPos = hrp.CFrame:PointToWorldSpace(localOffset)
        local screenPos, onScreen = Camera:WorldToViewportPoint(worldPos)
        screenPts[i] = Vector2.new(screenPos.X, screenPos.Y)
        if not onScreen then allOnScreen = false end
    end

    -- Crear o reutilizar las 12 lineas Drawing
    if not Box3DLines[p] then
        Box3DLines[p] = {}
        for i = 1, 12 do
            Box3DLines[p][i] = CreateDrawing("Line", {Thickness = 1.5, Transparency = 0})
        end
    end

    -- Actualizar cada linea con los puntos proyectados
    for i, edge in ipairs(edges) do
        local ln = Box3DLines[p][i]
        if ln then
            ln.Color = espColor
            ln.From = screenPts[edge[1]]
            ln.To = screenPts[edge[2]]
            ln.Visible = true
        end
    end
end

local function HideBox3D(p)
    if Box3DLines[p] then
        for _, ln in pairs(Box3DLines[p]) do
            if ln then ln.Visible = false end
        end
    end
end

RunService.RenderStepped:Connect(function(dt)
    if not ScriptRunning then return end 
    
    if not State.LastHitEval then State.LastHitEval = tick() end
    if State.CurrentHitStatus == nil then State.CurrentHitStatus = true end
    
    if tick() - State.LastHitEval > 0.3 then
        State.LastHitEval = tick()
        local wasHitting = State.CurrentHitStatus
        State.CurrentHitStatus = (math.random(1, 100) <= (State.HitChance or 100))
        if wasHitting and not State.CurrentHitStatus then
            State.MissOffset = Vector2.new(math.random(-300, 300), math.random(-300, 300))
            if math.abs(State.MissOffset.X) < 100 then State.MissOffset = Vector2.new(State.MissOffset.X > 0 and 150 or -150, State.MissOffset.Y) end
            if math.abs(State.MissOffset.Y) < 100 then State.MissOffset = Vector2.new(State.MissOffset.X, State.MissOffset.Y > 0 and 150 or -150) end
        end
    end
    
    local target = GetClosestPlayer()
    local anyVisiblePlayer = false
    
    SilentTarget = State.SilentAim and target or nil
    
    if State.ESPVisibilityColor then
        local center = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
        for _, v in pairs(Players:GetPlayers()) do
            if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and v.Character.Humanoid.Health > 0 then
                if State.TeamCheck and v.Team == LocalPlayer.Team then continue end
                
                local headPos, onScreen = Camera:WorldToViewportPoint(v.Character.Head.Position)
                if onScreen then
                    local screenDist = (Vector2.new(headPos.X, headPos.Y) - center).Magnitude
                    if screenDist < State.FOVSize then
                        if IsVisible(v.Character.Head) then
                            anyVisiblePlayer = true
                        end
                    end
                end
            end
        end
    end
    
    local function GetESPColor(targetPart)
        if State.RGBESP then return GetRGB() end
        if State.ESPVisibilityColor then
            return IsVisible(targetPart) and THEME.Success or THEME.Danger
        end
        return THEME.Accent
    end
    
    FOVFrame.Visible = State.ShowFOV and State.PanelVisible and not State.EditingHUD
    FOVFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    
    local currentFOVColor = THEME.Accent
    if State.RGBESP then 
        currentFOVColor = GetRGB() 
    elseif State.ESPVisibilityColor then
        currentFOVColor = anyVisiblePlayer and THEME.Success or THEME.Danger
    end
    FOVStroke.Color = currentFOVColor
    
    if State.XRay then
        local descendants = Workspace:GetDescendants()
        for i = 1, #descendants do
            local obj = descendants[i]
            if obj:IsA("BasePart") and not obj:IsDescendantOf(Camera) then
                local isCharacter = obj.Parent and obj.Parent:FindFirstChild("Humanoid")
                if not isCharacter and not XRayParts[obj] then
                    XRayParts[obj] = obj.LocalTransparencyModifier
                    obj.LocalTransparencyModifier = State.XRayTransparency
                end
            end
        end
    else
        for part, original in pairs(XRayParts) do
            if part then part.LocalTransparencyModifier = 0 end
        end
        XRayParts = {}
    end
    
    for p, _ in pairs(Tracers) do
        if not p or not p.Parent then
            if Tracers[p] then Tracers[p]:Remove(); Tracers[p] = nil end
            if Labels[p] then Labels[p]:Remove(); Labels[p] = nil end
            if HealthBars[p] then HealthBars[p]:Remove(); HealthBars[p] = nil end
        end
    end

    for p, v in pairs(Crosshairs) do
        if not p or not p.Parent then
            if v.Circle then v.Circle:Remove() end
            if v.LineH then v.LineH:Remove() end
            if v.LineV then v.LineV:Remove() end
            Crosshairs[p] = nil
        end
    end
    
    for _, box in pairs(BoxFolder:GetChildren()) do
        local playerName = box.Name:gsub("_DarkBox", "")
        if not Players:FindFirstChild(playerName) then box:Destroy() end
    end

    -- Limpiar lineas 3D de jugadores que ya no existen
    for p, _ in pairs(Box3DLines) do
        if not p or not p.Parent then
            ClearBox3DLines(p)
        end
    end

    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") and p.Character:FindFirstChild("Humanoid") then
            local char = p.Character
            local hrp = char.HumanoidRootPart
            local hum = char.Humanoid
            local vector, onScreen = Camera:WorldToViewportPoint(hrp.Position)
            local espColor = GetESPColor(hrp)
            
            local currentDist = (Camera.CFrame.Position - hrp.Position).Magnitude
            local withinRange = currentDist <= State.ESPRenderDistance

            if onScreen and hum.Health > 0 and State.PanelVisible and withinRange and not State.EditingHUD then
                if State.TeamCheck and p.Team == LocalPlayer.Team then 
                    if Tracers[p] then Tracers[p].Visible = false end
                    if Crosshairs[p] then
                        Crosshairs[p].Circle.Visible = false
                        Crosshairs[p].LineH.Visible = false
                        Crosshairs[p].LineV.Visible = false
                    end
                    HideBox3D(p)
                    continue 
                end

                local topWorld = (hrp.CFrame * CFrame.new(0, 3, 0)).Position
                local bottomWorld = (hrp.CFrame * CFrame.new(0, -3.5, 0)).Position
                local topPtr = Camera:WorldToViewportPoint(topWorld)
                local bottomPtr = Camera:WorldToViewportPoint(bottomWorld)
                local h = math.abs(topPtr.Y - bottomPtr.Y)
                local w = h / 2

                local boxName = p.Name .. "_DarkBox"
                local box = BoxFolder:FindFirstChild(boxName)
                if State.ESPBox then
                    if State.ESPBoxType == "2D" then
                        -- Ocultar lineas 3D si estaban activas
                        HideBox3D(p)
                        -- Tipo 2D: caja plana con borde (comportamiento original)
                        if not box then
                            box = Instance.new("Frame", BoxFolder)
                            box.Name = boxName
                            box.BackgroundTransparency = 1
                            box.BorderSizePixel = 0
                            local stroke = Instance.new("UIStroke", box)
                            stroke.Thickness = 1.0
                        end
                        -- Eliminar hijos de tipo ImageLabel si veniamos de 3D
                        for _, ch in pairs(box:GetChildren()) do
                            if ch:IsA("ImageLabel") or ch:IsA("Frame") then ch:Destroy() end
                        end
                        if not box:FindFirstChildOfClass("UIStroke") then
                            local stroke = Instance.new("UIStroke", box)
                            stroke.Thickness = 1.0
                        end
                        box.UIStroke.Color = espColor
                        box.BackgroundTransparency = 1
                        box.Position = UDim2.new(0, vector.X - (w/2), 0, vector.Y - (h/2))
                        box.Size = UDim2.new(0, w, 0, h)
                        box.Visible = true

                    elseif State.ESPBoxType == "3D" then
                        -- Ocultar caja 2D del BoxFolder si existia
                        if box then box.Visible = false end
                        -- Tipo 3D REAL: proyeccion de los 8 vertices del bounding box del personaje
                        DrawBox3D(p, hrp, espColor)

                    elseif State.ESPBoxType == "ESQUINAS" then
                        -- Ocultar lineas 3D si estaban activas
                        HideBox3D(p)
                        -- Tipo ESQUINAS: solo las 4 esquinas de la caja como lineas cortas
                        if not box then
                            box = Instance.new("Frame", BoxFolder)
                            box.Name = boxName
                            box.BackgroundTransparency = 1
                            box.BorderSizePixel = 0
                        end
                        -- Limpiar hijos anteriores de otros tipos
                        for _, ch in pairs(box:GetChildren()) do
                            if ch:IsA("UIStroke") or ch:IsA("Frame") or ch:IsA("ViewportFrame") then ch:Destroy() end
                        end
                        box.BackgroundTransparency = 1
                        box.Position = UDim2.new(0, vector.X - (w/2), 0, vector.Y - (h/2))
                        box.Size = UDim2.new(0, w, 0, h)
                        box.Visible = true

                        local cornerLen = math.floor(math.min(w, h) * 0.25)
                        local thick = 2
                        local colorVal = espColor

                        -- Funcion auxiliar para crear o reutilizar un Frame de esquina
                        local function GetCorner(name)
                            local c = box:FindFirstChild(name)
                            if not c then
                                c = Instance.new("Frame", box)
                                c.Name = name
                                c.BorderSizePixel = 0
                            end
                            c.BackgroundColor3 = colorVal
                            c.BackgroundTransparency = 0
                            return c
                        end

                        -- Esquina superior izquierda - horizontal
                        local c1h = GetCorner("TL_H"); c1h.Size = UDim2.new(0, cornerLen, 0, thick); c1h.Position = UDim2.new(0, 0, 0, 0)
                        -- Esquina superior izquierda - vertical
                        local c1v = GetCorner("TL_V"); c1v.Size = UDim2.new(0, thick, 0, cornerLen); c1v.Position = UDim2.new(0, 0, 0, 0)
                        -- Esquina superior derecha - horizontal
                        local c2h = GetCorner("TR_H"); c2h.Size = UDim2.new(0, cornerLen, 0, thick); c2h.Position = UDim2.new(1, -cornerLen, 0, 0)
                        -- Esquina superior derecha - vertical
                        local c2v = GetCorner("TR_V"); c2v.Size = UDim2.new(0, thick, 0, cornerLen); c2v.Position = UDim2.new(1, -thick, 0, 0)
                        -- Esquina inferior izquierda - horizontal
                        local c3h = GetCorner("BL_H"); c3h.Size = UDim2.new(0, cornerLen, 0, thick); c3h.Position = UDim2.new(0, 0, 1, -thick)
                        -- Esquina inferior izquierda - vertical
                        local c3v = GetCorner("BL_V"); c3v.Size = UDim2.new(0, thick, 0, cornerLen); c3v.Position = UDim2.new(0, 0, 1, -cornerLen)
                        -- Esquina inferior derecha - horizontal
                        local c4h = GetCorner("BR_H"); c4h.Size = UDim2.new(0, cornerLen, 0, thick); c4h.Position = UDim2.new(1, -cornerLen, 1, -thick)
                        -- Esquina inferior derecha - vertical
                        local c4v = GetCorner("BR_V"); c4v.Size = UDim2.new(0, thick, 0, cornerLen); c4v.Position = UDim2.new(1, -thick, 1, -cornerLen)
                    end
                elseif box then
                    box.Visible = false
                    HideBox3D(p)
                end

                if State.ESPLine then
                    local line = Tracers[p] or CreateDrawing("Line", {Thickness = 1})
                    line.Color = espColor
                    Tracers[p] = line
                    
                    local lineStartPoint = Vector2.new(Camera.ViewportSize.X / 2, 0) 
                    local lineTargetPoint = Vector2.new(vector.X, topPtr.Y) 

                    if State.ESPLinePos == "CENTER" then
                        lineStartPoint = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
                        lineTargetPoint = Vector2.new(vector.X, vector.Y) 
                    elseif State.ESPLinePos == "BOTTOM" then
                        lineStartPoint = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
                        lineTargetPoint = Vector2.new(bottomPtr.X, bottomPtr.Y) 
                    else 
                        local head = char:FindFirstChild("Head")
                        if head then
                            local hPos = Camera:WorldToViewportPoint(head.Position)
                            lineTargetPoint = Vector2.new(hPos.X, hPos.Y)
                        end
                    end
                    
                    line.From = lineStartPoint; line.To = lineTargetPoint; line.Visible = true
                elseif Tracers[p] then Tracers[p].Visible = false end

                if State.ESPInfo then
                    local label = Labels[p] or CreateDrawing("Text", {Size = 14, Center = true, Outline = true})
                    label.Color = espColor
                    Labels[p] = label
                    label.Text = string.format("%s\n[%d m]", p.Name, math.floor(currentDist))
                    label.Position = Vector2.new(vector.X, vector.Y - (h/2) - 30); label.Visible = true
                elseif Labels[p] then Labels[p].Visible = false end

                if State.ESPHealth then
                    local bar = HealthBars[p] or CreateDrawing("Line", {Thickness = 2})
                    HealthBars[p] = bar
                    local hpPct = math.clamp(hum.Health / hum.MaxHealth, 0, 1)
                    bar.From = Vector2.new(vector.X - (w/2) - 5, vector.Y + (h/2))
                    bar.To = Vector2.new(vector.X - (w/2) - 5, bar.From.Y - (h * hpPct))
                    bar.Color = Color3.fromRGB(255, 0, 0):Lerp(Color3.fromRGB(0, 255, 0), hpPct); bar.Visible = true
                elseif HealthBars[p] then HealthBars[p].Visible = false end

                if State.ESPCrosshair then
                    if not Crosshairs[p] then
                        Crosshairs[p] = {
                            Circle = CreateDrawing("Circle", {Radius = 8, Thickness = 2, NumSides = 18, Filled = false}),
                            LineH = CreateDrawing("Line", {Thickness = 2.5}),
                            LineV = CreateDrawing("Line", {Thickness = 2.5})
                        }
                    end
                    local elements = Crosshairs[p]
                    local radius = math.clamp(15 - (currentDist / 10), 6, 15)
                    elements.Circle.Color = espColor
                    elements.Circle.Radius = radius
                    elements.Circle.Position = Vector2.new(vector.X, vector.Y)
                    elements.Circle.Visible = true

                    local crossSize = radius * 0.7
                    elements.LineH.Color = espColor
                    elements.LineH.From = Vector2.new(vector.X - crossSize, vector.Y)
                    elements.LineH.To = Vector2.new(vector.X + crossSize, vector.Y)
                    elements.LineH.Visible = true

                    elements.LineV.Color = espColor
                    elements.LineV.From = Vector2.new(vector.X, vector.Y - crossSize)
                    elements.LineV.To = Vector2.new(vector.X, vector.Y + crossSize)
                    elements.LineV.Visible = true
                elseif Crosshairs[p] then
                    Crosshairs[p].Circle.Visible = false
                    Crosshairs[p].LineH.Visible = false
                    Crosshairs[p].LineV.Visible = false
                end
            else
                if Tracers[p] then Tracers[p].Visible = false end
                if Labels[p] then Labels[p].Visible = false end
                if HealthBars[p] then HealthBars[p].Visible = false end
                if Crosshairs[p] then
                    Crosshairs[p].Circle.Visible = false
                    Crosshairs[p].LineH.Visible = false
                    Crosshairs[p].LineV.Visible = false
                end
                local box = BoxFolder:FindFirstChild(p.Name .. "_DarkBox")
                if box then box.Visible = false end
                HideBox3D(p)
            end
        end
    end

    if State.Orbiting and State.OrbitTarget and State.OrbitTarget.Character and State.OrbitTarget.Character:FindFirstChild("HumanoidRootPart") and State.OrbitTarget.Character.Humanoid.Health > 0 and not State.EditingHUD then
        local targetPart = State.OrbitTarget.Character.HumanoidRootPart
        State.OrbitAngle = State.OrbitAngle + (dt * State.OrbitSpeed)
        local offset = Vector3.new(math.cos(State.OrbitAngle) * State.OrbitDistance, 1, math.sin(State.OrbitAngle) * State.OrbitDistance)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(targetPart.Position + offset, targetPart.Position)
        Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetPart.Position)
    elseif State.BackTP and not State.EditingHUD then
        if not State.BackTPTarget or not State.BackTPTarget.Character or State.BackTPTarget.Character.Humanoid.Health <= 0 then
            local closest, dist = nil, math.huge
            for _, p in pairs(Players:GetPlayers()) do
                if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") and p.Character.Humanoid.Health > 0 then
                    local d = (LocalPlayer.Character.HumanoidRootPart.Position - p.Character.HumanoidRootPart.Position).Magnitude
                    if d < dist then dist = d; closest = p end
                end
            end
            State.BackTPTarget = closest
        elseif State.BackTPTarget and State.BackTPTarget.Character and State.BackTPTarget.Character:FindFirstChild("HumanoidRootPart") then
            local targetPart = State.BackTPTarget.Character.HumanoidRootPart
            local offset = CFrame.new(0, 10, 0)
            if State.BackTPMode == "ABOVE" then offset = CFrame.new(0, 10, 0)
            elseif State.BackTPMode == "BELOW" then offset = CFrame.new(0, -5.8, 0)
            elseif State.BackTPMode == "BEHIND" then offset = CFrame.new(0, 0, 5)
            elseif State.BackTPMode == "FRONT" then offset = CFrame.new(0, 0, -5)
            elseif State.BackTPMode == "RIGHT" then offset = CFrame.new(5, 0, 0)
            elseif State.BackTPMode == "LEFT" then offset = CFrame.new(-5, 0, 0)
            end
            LocalPlayer.Character.HumanoidRootPart.CFrame = targetPart.CFrame * offset
            LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
            LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(0, 0, 0)
        end
    end

    if State.AimbotMobile and not State.Orbiting and not State.EditingHUD then
        if target then
            CurrentTargetPart = target
            local lerpSpeed = (State.AimbotMode == "LEGIT" and 0.05) or (State.AimbotMode == "BLATANT" and 1.0) or 0.25
            Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(Camera.CFrame.Position, target.Position), lerpSpeed)
        else
            CurrentTargetPart = nil
        end
    else
        CurrentTargetPart = nil
    end
    
    if State.SpinHack and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and not State.EditingHUD then
        local root = LocalPlayer.Character.HumanoidRootPart
        root.CFrame = root.CFrame * CFrame.fromEulerAnglesXYZ(0, math.rad(State.SpinSpeed), 0)
    end
end)

RunService.Stepped:Connect(function()
    if not ScriptRunning or State.EditingHUD then return end 
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") then
        char.Humanoid.WalkSpeed = State.SpeedHack and State.Speed or 16
        if State.JumpHack then char.Humanoid.JumpPower = State.Jump; char.Humanoid.UseJumpPower = true end
        if State.Wallhack or State.BackTP then for _, part in pairs(char:GetDescendants()) do if part:IsA("BasePart") then part.CanCollide = false end end end
        if State.BackTP then char.Humanoid.PlatformStand = true end
    end
    
    local ItemsModule = game:GetService("ReplicatedStorage"):FindFirstChild("Modules") and game:GetService("ReplicatedStorage").Modules:FindFirstChild("ItemLibrary")
    if ItemsModule then
        local Items = require(ItemsModule).Items
        if IsRivals then
            for id, data in pairs(Items) do
                if typeof(data) == "table" then
                    if not OriginalFireRates[id] then
                        OriginalFireRates[id] = {
                            sc = data.ShootCooldown or 0.6,
                            sbc = data.ShootBurstCooldown or 0.8,
                            spread = data.ShootSpread or 0,
                            acc = data.ShootAccuracy or 0
                        }
                    end
                    
                    if State.RapidFire then
                        data.ShootCooldown = 0.05
                        data.ShootBurstCooldown = 0.05
                    else
                        data.ShootCooldown = OriginalFireRates[id].sc
                        data.ShootBurstCooldown = OriginalFireRates[id].sbc
                    end
                    
                    if State.NoRecoil then
                        data.ShootSpread = 0
                        data.ShootAccuracy = 0
                    else
                        data.ShootSpread = OriginalFireRates[id].spread
                        data.ShootAccuracy = OriginalFireRates[id].acc
                    end
                end
            end
        end
    end

    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character then
            local root = p.Character:FindFirstChild("HumanoidRootPart") or p.Character.PrimaryPart
            local distance = root and (Camera.CFrame.Position - root.Position).Magnitude or 1000
            
            local showHighlight = (State.ESP or State.ESPRelleno) and State.PanelVisible and (distance <= State.ESPRenderDistance)
            
            if showHighlight then
                local espColor = (State.RGBESP and GetRGB()) or (State.ESPVisibilityColor and (IsVisible(p.Character:FindFirstChild("HumanoidRootPart") or p.Character.PrimaryPart) and THEME.Success or THEME.Danger)) or THEME.Accent
                local h = p.Character:FindFirstChild("DarkESP")
                if not h then h = Instance.new("Highlight", p.Character); h.Name = "DarkESP" end
                h.OutlineColor = espColor
                h.FillColor = espColor
                h.OutlineTransparency = State.ESP and 0 or 1
                h.FillTransparency = State.ESPRelleno and 0.5 or 1
            elseif p.Character:FindFirstChild("DarkESP") then 
                p.Character:FindFirstChild("DarkESP"):Destroy() 
            end
        end
    end
end)

local _idx
_idx = hookmetamethod(game, "__index", newcclosure(function(self, idx, ...)
    local isHitting = true
    if IsRivals and (State.HitChance or 100) < 100 then
        isHitting = State.CurrentHitStatus
    end

    if not checkcaller() and idx == "ViewportSize" and self == Camera then
        if State.AimbotMobile and CurrentTargetPart then
            local pos, on = Camera:WorldToViewportPoint(CurrentTargetPart.Position)
            if on then
                if isHitting then
                    return Vector2.new(pos.X * 2, pos.Y * 2)
                else
                    local offset = State.MissOffset or Vector2.new(200, 200)
                    return Vector2.new((pos.X + offset.X) * 2, (pos.Y + offset.Y) * 2)
                end
            end
        end
        
        if State.SilentAim and SilentTarget then
            local pos, on = Camera:WorldToViewportPoint(SilentTarget.Position)
            if on then
                if isHitting then
                    return Vector2.new(pos.X * 2, pos.Y * 2)
                else
                    local offset = State.MissOffset or Vector2.new(200, 200)
                    return Vector2.new((pos.X + offset.X) * 2, (pos.Y + offset.Y) * 2)
                end
            end
        end
    end
    
    return _idx(self, idx, ...)
end))
