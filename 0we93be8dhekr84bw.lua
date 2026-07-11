if _G.keyValida == nil then
-- Servicios del jugador --
local version = 2.0
local players = game:GetService("Players")
local player = players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui
local runService = game:GetService("RunService")
local tweenService = game:GetService("TweenService")
local character = player.Character or player.CharacterAdded:Wait()
local starterGui = game:GetService("StarterGui")
screenGui.DisplayOrder = 999999
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
local camera = workspace.CurrentCamera
local grandeDeLaPantalla = camera.ViewportSize
local raycastParams = RaycastParams.new()
raycastParams.FilterType = Enum.RaycastFilterType.Exclude
raycastParams.FilterDescendantsInstances = {character}
local userInputService = game:GetService("UserInputService")
local gameId = tostring(game.PlaceId)
print(gameId)
local plataforma = userInputService:GetPlatform()
local storage = game:GetService("ReplicatedStorage")
local playerScripts = player:WaitForChild("PlayerScripts")
local playerModule
local controls
if plataforma.Name == "Android" or plataforma.Name == "IOS" then
  playerModule = require(playerScripts:WaitForChild("PlayerModule"))
  controls = playerModule:GetControls()
end

-- Id de imagenes --

local iconoId = "rbxassetid://103199839642028"

-- Id De los juegos --

local rivalsId = "17625359962"
local duelistId = "122310270867133"
local killStreakId = "90184287580174"

-- Expulasar si en el juego en el que estas no esta permitido el panel --

if gameId == killStreakId then
  player:Kick("Experiencia PELIGROSA detectada, lo mejor es NO usar el panel DarkMatter en esta experiencia para evitar BANEOS")
end

-- Optener el Item library de rivals --

local items

if gameId == rivalsId then
  items = require(storage.Modules.ItemLibrary).Items
end

-- Variables de Conexiones y mas --

local ejecutarAimbot
local playerAddedEspTracer
local playerRemovingEspTracer
local actualizarPosEspTracer
local espBoxAdded
local espBoxRemoving
local espBoxActualizarPos
local actualizarGrandeFovEnPantalla
local fov
local menuDesplegado = true
local seccionActual = "COMBATE"
local activarSuperJumpConnect
local activarSuperSpeedConnect
local activarGravityCeroConnect
local desactivarLasColisionesDelCuerpoConection
local volarConection
local bodyV
local bodyG
local expandirHitBoxConection
local distanciaMinima = 250
local autoDisparando = false
local zIndex = 999999
local itemsOriginales
local orden = 0

local espTracer = {}
local espBox = {}
local espVida = {}

-- lista de opciones activadas --

local opciones = {
  wallCheckActivado = false,
  radioFov = 90,
  fuerzaDeAimbot = 0.0,
  teamCheck = false,
  superJumpActivado = false,
  superSpeedActivado = false,
  GravityCeroActivado = false,
  grandeDeLaHitBox = 50,
  velocitySpeed = 50,
  jumpPower = 100,
  silentAimActived = false,
  modosSilent = {
    "100%",
    "70%",
    "50%",
    "30%",
    "20%",
    "5%"
  },
  modoSilentActual = "100%",
  modosHitboxExpand = {
    "Head",
    "HumanoidRootPart"
  },
  modoHitboxExpandActual = "HumanoidRootPart",
  modosAimbot = {
    "Head",
    "UpperTorso"
  },
  modoAimbotActual = "Head"
}

if gameId == duelistId or gameId == rivalsId then
  opciones.fuerzaDeAimbot = 1
end

-- Resetear character de jugador si muere--

player.CharacterAdded:Connect(function(char)
  character = char
  raycastParams.FilterDescendantsInstances = {character}
  if bodyV then
    bodyV:Destroy()
    bodyV = nil
  end
  if bodyG then
    bodyG:Destroy()
    bodyG = nil
  end
end)

-- Evitar que se desaparezca el menu al morir --

screenGui.ResetOnSpawn = false

-- Funcion para crear una copia de una tabla --

if gameId == rivalsId then
  local function deepClone(tabla)
    local copia = {}
    for clave, valor in pairs(tabla) do
      if typeof(valor) == "table" then
        copia[clave] = deepClone(valor)
      else
        copia[clave] = valor
      end
    end
    return copia
  end

  itemsOriginales = deepClone(items)
end

-- Funcion para crear linea --

local function crearLinea(globalPosition, posX, posY, grosorX, grosorY, color1, color2, color3)
  local linea = Instance.new("Frame")
  linea.Parent = globalPosition
  
  linea.BackgroundColor3 = Color3.fromRGB(color1, color2, color3)
  linea.Size = UDim2.new(0, grosorX, 0, grosorY)
  linea.Position = UDim2.new(0, posX, 0, posY)
  linea.BorderSizePixel = 0
  linea.ZIndex = zIndex + 1
end

-- Funcion para crear texto --

local function crearTexto(textGlobalPosition, text, posX, posY, size, fuente, color1, color2, color3)
  local textLabel = Instance.new("TextLabel")
  textLabel.Parent = textGlobalPosition
  
  textLabel.TextColor3 = Color3.fromRGB(color1, color2, color3)
  textLabel.TextSize = size
  textLabel.Size = UDim2.new(0, 1, 0, 1)
  textLabel.Text = text
  textLabel.Font = fuente
  textLabel.Position = UDim2.new(0, posX, 0, posY)
  textLabel.BackgroundTransparency = 1
  textLabel.ZIndex = zIndex
end

-- Funcion para redondear todo --

local function redondear(redondearObjeto, px, size)
  local bordeRedondo = Instance.new("UICorner")
  bordeRedondo.Parent = redondearObjeto
  
  bordeRedondo.CornerRadius = UDim.new(px, size)
end

-- Funcion para agregar bordes a todo --

local function borde(bordeDeObjeto, thickness, color1, color2, color3)
  local borde = Instance.new("UIStroke")
  borde.Parent = bordeDeObjeto
  
  borde.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
  borde.Thickness = thickness
  borde.Color = Color3.fromRGB(color1, color2, color3)
end

-- Funcion para crear layout a todo --

local function layout(objetoParaLayout, padding, paddingTop, paddingBottom, paddingLeft, paddingRight, fillDirection, verticalAlignment, horizontalAlignment)
  local layout = Instance.new("UIListLayout")
  layout.Parent = objetoParaLayout

  layout.FillDirection = fillDirection
  layout.VerticalAlignment = verticalAlignment
  layout.HorizontalAlignment = horizontalAlignment
  layout.Padding = UDim.new(0, padding)
  
  layout.SortOrder = Enum.SortOrder.LayoutOrder
  
  local padding = Instance.new("UIPadding")
  padding.Parent = objetoParaLayout
  
  padding.PaddingTop = UDim.new(0, paddingTop)
  padding.PaddingBottom = UDim.new(0, paddingBottom)
  padding.PaddingLeft = UDim.new(0, paddingLeft)
  padding.PaddingRight = UDim.new(0, paddingRight)
 
  if objetoParaLayout:IsA("ScrollingFrame") then
    layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
      objetoParaLayout.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 30)
    end)
  end
end

-- Menu Interfaz UI --

local menuBackground = Instance.new("Frame")
menuBackground.Parent = screenGui

menuBackground.Size = UDim2.new(0, 450, 0, 300)
menuBackground.AnchorPoint = Vector2.new(1, 0)
menuBackground.Active = true
menuBackground.BackgroundColor3 = Color3.fromRGB(13, 9, 23)
menuBackground.BorderSizePixel = 0
menuBackground.ClipsDescendants = true
menuBackground.ZIndex = zIndex

redondear(menuBackground, 0, 10)
borde(menuBackground, 3, 0, 0, 0)
crearLinea(menuBackground, 0, 35, 450, 3, 0, 0, 0)
crearTexto(menuBackground, string.format("DARKMATTER %.1f Free", version), 225, 16, 35, Enum.Font.GothamBold, 175, 126, 247)
crearTexto(menuBackground, string.format("PLATFORM: %s", plataforma.Name), 86, 284, 15, Enum.Font.GothamBold, 255, 255, 255)
crearLinea(menuBackground, 175, 35, 3, 265, 0, 0, 0)
crearLinea(menuBackground, 0, 265, 175, 3, 0, 0, 0)


-- Contenedor de secciones UI --

local menuContainer = Instance.new("Frame")
menuContainer.Parent = menuBackground

menuContainer.Size = UDim2.new(0, 450, 0, 265)
menuContainer.Position = UDim2.new(0, 0, 0, 35)
menuContainer.BackgroundTransparency = 1
menuContainer.ZIndex = zIndex

-- Secciones UI --

local menuSection1 = Instance.new("ScrollingFrame")
menuSection1.Parent = menuContainer

menuSection1.BackgroundTransparency = 1
menuSection1.Size = UDim2.new(0, 175, 0, 230)
menuSection1.ScrollBarThickness = 0
menuSection1.ZIndex = zIndex

layout(menuSection1, 10, 16, 0, 0, 0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Top, Enum.HorizontalAlignment.Center)

local menuSection2 = Instance.new("ScrollingFrame")
menuSection2.Parent = menuContainer

menuSection2.BackgroundTransparency = 1
menuSection2.Size = UDim2.new(0, 275, 0, 265)
menuSection2.Position = UDim2.new(0, 175, 0, 0)
menuSection2.ScrollBarThickness = 4
menuSection2.ZIndex = zIndex

layout(menuSection2, 10, 10, 0, 0, 0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Top, Enum.HorizontalAlignment.Center)

-- Crear funcion para crear botones --

local function crearSwitch(SwitchGlobalPosition, nombreDeLaOpcion, Section, callback)

-- El switch aparece apagado --
  
  local enable = false

-- Contenedor del Switche y el nombre de la opcion --
  local switchAndTextContainer = Instance.new("Frame")
  switchAndTextContainer.Parent = SwitchGlobalPosition
  
  switchAndTextContainer.Size = UDim2.new(0, 255, 0, 40)
  switchAndTextContainer.BackgroundTransparency = 0
  switchAndTextContainer.BackgroundColor3 = Color3.fromRGB(17, 11, 29)
  switchAndTextContainer.ZIndex = zIndex
  orden += 1
  switchAndTextContainer.LayoutOrder = orden
  redondear(switchAndTextContainer, 0, 10)
  borde(switchAndTextContainer, 2, 45, 28, 70)
  layout(switchAndTextContainer, 10, 0, 0, 10, 10, Enum.FillDirection.Horizontal, Enum.VerticalAlignment.Center, Enum.HorizontalAlignment.Left)
  
-- Detectar el apartado en el que esta la funcion --
  
  runService.RenderStepped:Connect(function()
    if seccionActual == Section then
      switchAndTextContainer.Visible = true
    else
      switchAndTextContainer.Visible = false
    end
  end)

-- Nombre de la opcion (Texto) --

  local textOption = Instance.new("TextLabel")
  textOption.Parent = switchAndTextContainer
  
  textOption.Size = UDim2.new(0, 175, 0, 25)
  textOption.BackgroundTransparency = 1
  textOption.TextSize = 20
  textOption.TextColor3 = Color3.fromRGB(255, 255, 255)
  textOption.Text = string.upper(nombreDeLaOpcion)
  textOption.TextXAlignment = Enum.TextXAlignment.Left
  textOption.Font = Enum.Font.GothamBold
  textOption.ZIndex = zIndex
  
-- Estilo del Switche --
  
  local switchBar = Instance.new("Frame")
  switchBar.Parent = switchAndTextContainer
  
  switchBar.Size = UDim2.new(0, 50, 0, 25)
  switchBar.BackgroundColor3 = Color3.fromRGB(131, 29, 231)
  switchBar.ZIndex = zIndex
  redondear(switchBar, 1, 0)
  
  local switchCircle = Instance.new("Frame")
  switchCircle.Parent = switchBar
  
  switchCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  switchCircle.Size = UDim2.new(0, 25, 0, 25)
  switchCircle.Position = UDim2.new(0, 0, 0, 0)
  switchCircle.ZIndex = zIndex
  redondear(switchCircle, 1, 0)
  
-- Logica para que el switch se active/desactive --
  
  switchBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
      enable = not enable
      callback(enable)
      
      if enable then
        local switchOn = tweenService:Create(
          switchCircle,
          TweenInfo.new(0.2),
          {
            Position = UDim2.new(0, 25, 0, 0)
          }
        )
        
        switchOn:Play()
      else
        local switchOff = tweenService:Create(
          switchCircle,
          TweenInfo.new(0.2),
          {
            Position = UDim2.new(0, 0, 0, 0)
          }
        )
        
        switchOff:Play()
      end 
    end
  end)
end

-- Funcion para crear Sliders --

local function crearSlider(barGlobalPosition, nombreDeLaOpcion, enQueParteComienzaLaBarra, Section, callback)
  
-- Contenedor de el slider y el nombre de la opcion --
  local sliderAndTextContainer = Instance.new("Frame")
  sliderAndTextContainer.Parent = barGlobalPosition

  sliderAndTextContainer.Size = UDim2.new(0, 255, 0, 80)
  sliderAndTextContainer.BackgroundTransparency = 0
  sliderAndTextContainer.BackgroundColor3 = Color3.fromRGB(17, 11, 29)
  sliderAndTextContainer.ZIndex = zIndex
  orden += 1
  sliderAndTextContainer.LayoutOrder = orden
  layout(sliderAndTextContainer, 10, 10, 0, 0, 0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Center, Enum.HorizontalAlignment.Center)
  redondear(sliderAndTextContainer, 0, 10)
  borde(sliderAndTextContainer, 2, 45, 28, 70)

-- Detectar el apartado en el que esta la barra --
  
  runService.RenderStepped:Connect(function()
    if seccionActual == Section then
      sliderAndTextContainer.Visible = true
    else
      sliderAndTextContainer.Visible = false
    end
  end)

-- Estilo de de el slider --
  
  local sliderBar = Instance.new("Frame")
  sliderBar.Parent = sliderAndTextContainer
  
  sliderBar.Size = UDim2.new(0, 235, 0, 20)
  sliderBar.BackgroundColor3 = Color3.fromRGB(31, 20, 52)
  sliderBar.ZIndex = zIndex
  borde(sliderBar, 2, 0, 0, 0)
  redondear(sliderBar, 1, 0)
  
  local sliderComplete = Instance.new("Frame")
  sliderComplete.Parent = sliderBar
  
  sliderComplete.Position = UDim2.new(0, 0, 0, 0)
  sliderComplete.Size = UDim2.new(0, 20, 0, 20)
  sliderComplete.ZIndex = zIndex
  sliderComplete.BackgroundColor3 = Color3.fromRGB(131, 29, 231)
  redondear(sliderComplete, 1, 0)
  
  local sliderCircle = Instance.new("Frame")
  sliderCircle.Parent = sliderBar
  
  sliderCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  sliderCircle.Size = UDim2.new(0, 20, 0, 20)
  sliderCircle.Position = UDim2.new(enQueParteComienzaLaBarra, 0, 0, 0)
  sliderCircle.ZIndex = zIndex
  redondear(sliderCircle, 1, 0)
  
-- Nombre de la opcion (Texto) --

  local textOption = Instance.new("TextLabel")
  textOption.Parent = sliderAndTextContainer
  
  runService.RenderStepped:Connect(function() -- Se encarga de que el texto se actualise constantemente y muestre los valores correctos de el slider
    textOption.Text = nombreDeLaOpcion()
  end)
  textOption.TextSize = 20
  textOption.Font = Enum.Font.GothamBold
  textOption.Size = UDim2.new(0, 235, 0, 30)
  textOption.BackgroundTransparency = 1
  textOption.TextColor3 = Color3.fromRGB(255, 255, 255)
  textOption.ZIndex = zIndex

-- Hacer que la bolita de la barra se mueva y devuelva un valor --
  
  local arrastrando = false

-- Cuando tocas la barra --
  
  sliderCircle.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
      arrastrando = true
    end
  end)
  
-- Cuando mueves la bolita de la barra --
  
  userInputService.InputChanged:Connect(function(input)
    if arrastrando and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then
      local posicionRelativa = input.Position.X - sliderBar.AbsolutePosition.X
      posicionRelativa = math.clamp(posicionRelativa, 0, sliderBar.AbsoluteSize.X - 20)
      sliderCircle.Position = UDim2.new(0, posicionRelativa, 0, 0)
      local porcentaje = posicionRelativa / (sliderBar.AbsoluteSize.X - sliderCircle.AbsoluteSize.X)
      callback(porcentaje)
      sliderComplete.Size = UDim2.new(0, posicionRelativa + 20, 0, 20)
    end
  end)
  
-- Cuando sueltas la barra --

  userInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
      arrastrando = false
    end
  end)
  
end

-- Funcion para crear los botones para cambiar de modo --

local function botonCambiarModo(globalPosition, modoDeElBoton, Section, callback)
  local buttonModo = Instance.new("TextButton")
  buttonModo.Parent = globalPosition
  
  buttonModo.Size = UDim2.new(0, 255, 0, 35)
  buttonModo.BackgroundColor3 = Color3.fromRGB(17, 11, 29)
  buttonModo.Text = modoDeElBoton
  buttonModo.Font = Enum.Font.GothamBold
  buttonModo.TextSize = 20
  buttonModo.TextColor3 = Color3.fromRGB(255, 255, 255)
  buttonModo.ZIndex = zIndex
  orden += 1
  buttonModo.LayoutOrder = orden
  redondear(buttonModo, 0, 13)
  borde(buttonModo, 2, 45, 28, 70)

-- Detectar el apartado en el que esta el boton De Modo --
  
  runService.RenderStepped:Connect(function()
    if seccionActual == Section then
      buttonModo.Visible = true
    else
      buttonModo.Visible = false
    end
  end)
  
  buttonModo.MouseButton1Click:Connect(function()
    buttonModo.Text = callback()
  end)
end

-- Funcion para crear los botones de apartados de las opciones --

local function crearBotonApartado(sectionButtonGlobalPosition, nombreDeElSectionButton, callback)
  
-- Estilo de el boton de la seccion -- 
  
  local sectionButton = Instance.new("TextButton")
  sectionButton.Parent = sectionButtonGlobalPosition
  
  sectionButton.BackgroundColor3 = Color3.fromRGB(23, 21, 38)
  sectionButton.Size = UDim2.new(0, 160, 0, 33)
  sectionButton.Text = string.upper(nombreDeElSectionButton)
  sectionButton.Font = Enum.Font.GothamBold
  sectionButton.TextSize = 15
  sectionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
  sectionButton.ZIndex = zIndex
  redondear(sectionButton, 0, 5)
  borde(sectionButton, 2, 37, 31, 56)
  
-- Detectar si presionan el boton --
 
  sectionButton.MouseButton1Click:Connect(callback)
  
end

-- Crear Boton de minimizar panel --

local minimizarButton = Instance.new("ImageButton")
minimizarButton.Parent = screenGui

minimizarButton.BackgroundColor3 = Color3.fromRGB(28, 18, 48)
minimizarButton.Size = UDim2.new(0, 55, 0, 55)
minimizarButton.Position = UDim2.new(0, 415, 0, 5)
minimizarButton.Image = iconoId
minimizarButton.ZIndex = zIndex + 2
minimizarButton.Active = true
minimizarButton.Draggable = true
redondear(minimizarButton, 1, 0)
borde(minimizarButton, 1, 131, 29, 231)

minimizarButton.MouseButton1Click:Connect(function()
  
  local actualPosition = menuBackground.Position
  if menuDesplegado then
    local menuOn = tweenService:Create(
      menuBackground,
      TweenInfo.new(0.5),
      {
        Size = UDim2.new(0, 0, 0, 0),
        Visible = false
      }
    )
    menuOn:Play()
  else
    local menuOff = tweenService:Create(
      menuBackground,
      TweenInfo.new(0.5),
      {
        Visible = true,
        Size = UDim2.new(0, 450, 0, 300)
      }
    )
    menuOff:Play()
  end
  menuDesplegado = not menuDesplegado
end)

runService.RenderStepped:Connect(function()
  menuBackground.Position = UDim2.new(0, minimizarButton.AbsolutePosition.X + 25, 0, minimizarButton.AbsolutePosition.Y + 30)
end)

-- Funcion para calcular la distancia tuya al enemigo --

local function distanciaEntreTuYElEnemigo(enemy)
  local posHrp
  local posHrpEnemy
  local distancia
  if player.Character then
    if player.Character:FindFirstChild("HumanoidRootPart") then
      posHrp = player.Character.HumanoidRootPart.Position
    end
  end
  if enemy.Character then
    if enemy.Character:FindFirstChild("HumanoidRootPart") then
      posHrpEnemy = enemy.Character.HumanoidRootPart.Position
    end
  end
  if posHrp and posHrpEnemy then
    distancia = (posHrp - posHrpEnemy).Magnitude
    return distancia
  else
    return 0
  end
end

-- Funcion para detectar si un jugador esta atras de una pared --

local function parteVisible(parte)
  local origen = camera.CFrame.Position
  local direccion = parte.Position - origen
  local resultado = workspace:Raycast(origen, direccion, raycastParams)
  if resultado then
    return resultado.Instance:IsDescendantOf(parte.Parent)
  else
    return true
  end
end

-- Crear una funcion para optener a los jugadores dentro de el fov --

local function jugadorDentroDelFov(jugador)
  if jugador.Character then
    local jugadorCharacter = jugador.Character
    if jugadorCharacter:FindFirstChild("Head") then
      local jugadorHeadPos, enPantalla = camera:WorldToViewportPoint(jugadorCharacter.Head.Position)
      if enPantalla then
        local jugadorPos2D = Vector2.new(jugadorHeadPos.X, jugadorHeadPos.Y)
        local centroPantalla = Vector2.new(grandeDeLaPantalla.X/2, grandeDeLaPantalla.Y/2)
        local distancia = (jugadorPos2D - centroPantalla).Magnitude
        if distancia < opciones.radioFov then
          return true
        else
          return false
        end
      end
    end
  end
end

-- Funcion que crear el fov en la pantalla --

local function crearFovEnPantalla()
  if not fov then
    fov = Drawing.new("Circle")
    fov.Color = Color3.fromRGB(255, 0, 0)
    fov.Thickness = 2
    fov.Radius = opciones.radioFov
    fov.Filled = false
    fov.Position = Vector2.new(grandeDeLaPantalla.X/2, grandeDeLaPantalla.Y/2)
    fov.Visible = true
  end
end

-- Funcion que destruir el fov en la pantalla --

local function destruirFovEnPantalla()
  if fov then
    fov:Remove()
    fov = nil
  end
end

-- Crear una funcion para detectar en que equipo estan los jugadores --

local function diferentesEquipos(jugador)
  local jugadorTeam = nil
  local playerTeam = nil
  if jugador.Team then
    jugadorTeam = jugador.Team
  elseif jugador.TeamColor then
    jugadorTeam = jugador.TeamColor
  else
    jugadorTeam = "Black"
  end
  if player.Team then
    playerTeam = player.Team
  elseif player.TeamColor then
    playerTeam = player.TeamColor
  else
    playerTeam = "Black"
  end
  return jugadorTeam ~= playerTeam
end

-- Funcion para detectar a los amigos en Duelist --

local teamDataDuelist = _G.teamDataDuelist

local function jugadorDeMiTeamDuelist(jugador)
  if rawget(teamDataDuelist, "inMatch") then
    local teams = rawget(teamDataDuelist, "teams")
    local team1 = rawget(teams, "Team1")
    local team2 = rawget(teams, "Team2")
    local miTeam
    if table.find(team1, player.UserId) then
      miTeam = team1
    elseif table.find(team2, player.UserId) then
      miTeam = team2
    else
      miTeam = nil
    end
    if miTeam then
      if table.find(miTeam, jugador.UserId) then
        return true
      else
        return false
      end
    end
  end
end

-- Funcion para optener al jugador mas cercano a mi --

local function optenerJugadorMasCercano()
  local jugadorMasCercano = nil
  local distanciaMasCercana = math.huge
  
  for _, jugador in pairs(players:GetPlayers()) do
    if jugador.Character and jugador ~= player then
      local jugadorCharacter = jugador.Character
      local vida = 0
      local jugadorEnElFov = jugadorDentroDelFov(jugador)
      if jugadorCharacter:FindFirstChild("Humanoid") then
        vida = jugadorCharacter.Humanoid.Health
      end
      if jugadorCharacter:FindFirstChild(opciones.modoAimbotActual) then
        local jugadorPart = jugadorCharacter:FindFirstChild(opciones.modoAimbotActual)
        if character:FindFirstChild("HumanoidRootPart") then
          local distancia = (character.HumanoidRootPart.Position - jugadorPart.Position).Magnitude
          if opciones.teamCheck then
            if gameId ~= duelistId then
              if opciones.wallCheckActivado then
                if distancia < distanciaMasCercana and parteVisible(jugadorPart) and vida > 0 and jugadorEnElFov and diferentesEquipos(jugador) then
                  distanciaMasCercana = distancia
                  jugadorMasCercano = jugadorPart
                end
              else
                if distancia < distanciaMasCercana and vida > 0 and jugadorEnElFov and diferentesEquipos(jugador) then
                  distanciaMasCercana = distancia
                  jugadorMasCercano = jugadorPart
                end
              end
            else
              if opciones.wallCheckActivado then
                if distancia < distanciaMasCercana and parteVisible(jugadorPart) and vida > 0 and jugadorEnElFov and not jugadorDeMiTeamDuelist(jugador) then
                  distanciaMasCercana = distancia
                  jugadorMasCercano = jugadorPart
                end
              else
                if distancia < distanciaMasCercana and vida > 0 and jugadorEnElFov and not jugadorDeMiTeamDuelist(jugador) then
                  distanciaMasCercana = distancia
                  jugadorMasCercano = jugadorPart
                end
              end
            end
          else
            if opciones.wallCheckActivado then
              if distancia < distanciaMasCercana and parteVisible(jugadorPart) and vida > 0 and jugadorEnElFov then
                distanciaMasCercana = distancia
                jugadorMasCercano = jugadorPart
              end
            else
              if distancia < distanciaMasCercana and vida > 0 and jugadorEnElFov then
                distanciaMasCercana = distancia
                jugadorMasCercano = jugadorPart
              end
            end
          end
        end
      end
    end
  end
  if jugadorMasCercano then
    return jugadorMasCercano
  else
    return false
  end
end

-- Crear una funcion para optener a el jugador a disparar automáticamente --

local function optenerJugadorAutoShoot()
  local jugadorMasCercano = nil
  local distanciaMasCercana = math.huge
  
  for _, jugador in pairs(players:GetPlayers()) do
    if jugador.Character and jugador ~= player then
      local jugadorCharacter = jugador.Character
      local vida = 0
      local jugadorEnElFov = jugadorDentroDelFov(jugador)
      if jugadorCharacter:FindFirstChild("Humanoid") then
        vida = jugadorCharacter.Humanoid.Health
      end
      if jugadorCharacter:FindFirstChild("Head") then
        local jugadorHead = jugadorCharacter.Head
        if character:FindFirstChild("HumanoidRootPart") then
          local distancia = (character.HumanoidRootPart.Position - jugadorHead.Position).Magnitude
          if distancia < distanciaMasCercana and parteVisible(jugadorHead) and vida > 0 and not jugadorDeMiTeamDuelist(jugador) then
            distanciaMasCercana = distancia
            jugadorMasCercano = jugadorHead
          end
        end
      end
    end
  end
  if jugadorMasCercano then
    return jugadorMasCercano.Position
  else
    return false
  end
end

-- Crear una funcion para dibujar la linea de el esp tracer --

local function crearEspTracer(jugador)
  if not espTracer[jugador] and jugador ~= player then
    local linea = Drawing.new("Line")
    linea.Thickness = 2
    linea.Color = Color3.fromRGB(255, 0, 0)
    linea.Visible = false
    
    espTracer[jugador] = linea
  end
end

-- Crear una funcion para borrar la linea de el esp tracer --

local function destruirEspTracer(jugador)
  if espTracer[jugador] then
    espTracer[jugador]:Remove()
    espTracer[jugador] = nil
  end
end

-- Crear una funcion para crear el esp Box --

local function crearEspBox(jugador)
  if not espBox[jugador] and jugador ~= player then
    local box = Instance.new("Frame")
    box.Parent = screenGui
    box.BackgroundTransparency = 1
    box.AnchorPoint = Vector2.new(0.5, 0.5)
    borde(box, 2, 255, 0, 0)
    box.Visible = false
    
    espBox[jugador] = box
  end
end

-- Crear una funcion para destruir el esp Box --

local function destruirEspBox(jugador)
  if espBox[jugador] then
    espBox[jugador]:Destroy()
    espBox[jugador] = nil
  end
end

-- Crear una funcion para crear el esp Vida --

local function crearEspVida(jugador)
  if not espVida[jugador] and jugador ~= player then
    local vidaBar = Instance.new("Frame")
    vidaBar.Parent = screenGui
    
    vidaBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    vidaBar.AnchorPoint = Vector2.new(0.5, 0.5)
    borde(vidaBar, 1, 0, 0, 0)
    
    espVida[jugador] = vidaBar
  end
end

-- Crear una funcion para destruir el esp Box --

local function destruirEspVida(jugador)
  if espVida[jugador] then
    espVida[jugador]:Destroy()
    espVida[jugador] = nil
  end
end

-- Crear una funcion para volar --

local function volar(jugador)
  if jugador.Character then
    local jugadorCharacter = jugador.Character
    if jugadorCharacter:FindFirstChild("HumanoidRootPart") then
      local jugadorHrp = jugadorCharacter.HumanoidRootPart
      if not bodyV then
        bodyV = Instance.new("BodyVelocity")
        bodyV.Parent = jugadorHrp
      end
      if not bodyG then
        bodyG = Instance.new("BodyGyro")
        bodyG.Parent = jugadorHrp
      end
      
      bodyV.MaxForce = Vector3.new(1e9, 1e9, 1e9)  -- MaxForce: fuerza máxima que puede aplicar el BodyVelocity. --
      bodyG.MaxTorque = Vector3.new(1e9, 1e9, 1e9)  -- MaxTorque: fuerza máxima de rotación que puede aplicar el BodyGyro. --
      bodyG.P = 10000  -- P: controla qué tan rápido y fuerte gira el BodyGyro hacia su objetivo.
      bodyG.CFrame = camera.CFrame
      
      local mover = controls:GetMoveVector()
      local frente = camera.CFrame.LookVector -- LookVector: devuelve la dirección hacia donde mira la cámara. --
      local derecha = camera.CFrame.RightVector  -- RightVector: devuelve la dirección derecha de la cámara. --
      local direccion = (frente * -mover.Z) + (derecha * mover.X)

--[[
Calcula la dirección final de movimiento usando la orientación de la cámara.

mover.Z controla avanzar y retroceder:
- W = -1
- S = 1

mover.X controla izquierda y derecha:
- A = -1
- D = 1

LookVector representa el frente de la cámara y RightVector su lado derecho.

Al combinar ambos vectores se obtiene la dirección exacta hacia la que el jugador debe volar según las teclas presionadas y la orientación actual de la cámara.
]]--
      
      if direccion.Magnitude > 0 then -- Magnitude: devuelve la longitud del vector. --
        bodyV.Velocity = direccion.Unit * 100 -- Unit: normaliza el vector para que tenga longitud 1, manteniendo la dirección. --
      else
        bodyV.Velocity = Vector3.zero -- Vector3.zero: representa un vector (0, 0, 0), es decir, sin movimiento. --
      end
    end
  end
end

-- Crear una funcion para Guardar los jugadores con Hitbox expandidas --

local function expandirHitBox(character)
  if character ~= player.Character and character then
    local jugadorChar = character
    if jugadorChar:FindFirstChild(opciones.modoHitboxExpandActual) then
      local jugadorPart = jugadorChar:FindFirstChild(opciones.modoHitboxExpandActual)
      jugadorPart.Size = Vector3.new(opciones.grandeDeLaHitBox, opciones.grandeDeLaHitBox, opciones.grandeDeLaHitBox)
      jugadorPart.Transparency = 0
      jugadorPart.Color = Color3.fromRGB(255, 0, 0)
      jugadorPart.Material = Enum.Material.Neon
      jugadorPart.CanCollide = false
    end
  end
end

-- Crear Funcion para volver la Hit Box a la normalidad --

local function restaurarHitBox(character)
  if character ~= player.Character and character then
    local jugadorChar = character
    if jugadorChar:FindFirstChild(opciones.modoHitboxExpandActual) then
      local jugadorPart = jugadorChar:FindFirstChild(opciones.modoHitboxExpandActual)
      if opciones.modoHitboxExpandActual == "HumanoidRootPart" then
        jugadorPart.Size = Vector3.new(2, 2, 1)
        jugadorPart.Transparency = 1
        jugadorPart.CanCollide = true
      else
        jugadorPart.Size = Vector3.new(1.1961, 1.2029, 1.2002)
        jugadorPart.Transparency = 0
      end
    end
  end
end

runService.RenderStepped:Connect(function()
  if opciones.modoHitboxExpandActual == "HumanoidRootPart" then
    for _, jugador in pairs(players:GetPlayers()) do
      if jugador.Character and jugador ~= player then
        local jugadorChar = jugador.Character
        if jugadorChar:FindFirstChild("Head") then
          local jugadorHead = jugadorChar.Head
          jugadorHead.Size = Vector3.new(1.1961, 1.2029, 1.2002)
          jugadorHead.Transparency = 0
        end
      end
    end
  elseif opciones.modoHitboxExpandActual == "Head" then
    for _, jugador in pairs(players:GetPlayers()) do
      if jugador.Character and jugador ~= player then
        local jugadorChar = jugador.Character
        if jugadorChar:FindFirstChild("HumanoidRootPart") then
          local jugadorHrp = jugadorChar.HumanoidRootPart
          jugadorHrp.Size = Vector3.new(2, 2, 1)
          jugadorHrp.Transparency = 1
        end
      end
    end
  end
end)

-- Crear Funcion para el Aimbot exp de Duelist --

local function apuntarATarget()
  local targetShoot = workspace:FindFirstChild("TargetShoot", true)
  if targetShoot then
    local visible = parteVisible(targetShoot)
    local posicionTarget = targetShoot.Position
    local distanciaAlTarget = 0
    if player.Character:FindFirstChild("HumanoidRootPart") then
      distanciaAlTarget = (player.Character.HumanoidRootPart.Position - posicionTarget).Magnitude
    end
    if distanciaAlTarget < 1000 and visible then 
      camera.CFrame = CFrame.new(camera.CFrame.Position, posicionTarget)
    end
  end
end

-- Crear Funcion para auto disparara al anemigo --

local function dispararaAEnemigo()
  if autoDisparando then
    return
  end
  autoDisparando = true
  local FireBind
  for _, v in pairs(getgc(true)) do
    if typeof(v) == "function" then
      local info = debug.getinfo(v)
      if info.name == "FireBind" and info.source:find("ClientScripts.Client.Binds") then
        FireBind = v
        break
      end
    end
  end
  FireBind(_G, "Shoot", true, false)
  task.wait(0.3)
  FireBind(_G, "Shoot", false, false)
  autoDisparando = false
end

-- Hook para el Silent Aim --

local target
local posSilent
local enPantallaSilent

runService.RenderStepped:Connect(function()
  if opciones.silentAimActived then
    target = optenerJugadorMasCercano()
    if target then
      posSilent, enPantallaSilent = camera:WorldToViewportPoint(target.Position)
    else
      posSilent = nil
      enPantallaSilent = false
    end
  else
    target = nil
    posSilent = nil
    enPantallaSilent = false
  end
end)


local function usarSilentAim()
  local porcentaje = tonumber(opciones.modoSilentActual:match("%d+"))

  if porcentaje >= 100 then
    return true
  end

  return math.random(1,100) <= porcentaje
end

local old

old = hookmetamethod(game, "__index", newcclosure(function(self, key)
  if self == camera and key == "ViewportSize" and opciones.silentAimActived and posSilent and enPantallaSilent and usarSilentAim() then
    return Vector2.new(posSilent.X*2, posSilent.Y*2)
  else
    return old(self, key)
  end
end))

-- Crear Opciones de menu --

if gameId ~= rivalsId then
  crearSwitch(menuSection2, "Aimbot", "COMBATE", function(valor)
    if valor then
      ejecutarAimbot = runService.RenderStepped:Connect(function()
        local objetivo = optenerJugadorMasCercano()
        if objetivo then
          local distancia = (player.Character.HumanoidRootPart.Position - objetivo.Position).Magnitude
          if gameId ~= duelistId then
            if distancia < distanciaMinima then
              local objetivoCFrame = CFrame.new(camera.CFrame.Position, objetivo.Position)
              camera.CFrame = camera.CFrame:Lerp(objetivoCFrame, opciones.fuerzaDeAimbot)
            end
          else
            if distancia < distanciaMinima and rawget(_G.teamDataDuelist, "inMatch") then
              local objetivoCFrame = CFrame.new(camera.CFrame.Position, objetivo.Position)
              camera.CFrame = camera.CFrame:Lerp(objetivoCFrame, opciones.fuerzaDeAimbot)
            end
          end
        end
      end)
    else
      if ejecutarAimbot then
        ejecutarAimbot:Disconnect()
        ejecutarAimbot = nil
      end
    end
  end)
  botonCambiarModo(menuSection2, opciones.modoAimbotActual, "COMBATE", function()
    if opciones.modoAimbotActual == opciones.modosAimbot[#opciones.modosAimbot] then
      opciones.modoAimbotActual = opciones.modosAimbot[1]
    else
      opciones.modoAimbotActual = opciones.modosAimbot[table.find(opciones.modosAimbot, opciones.modoAimbotActual) + 1]
    end
    return opciones.modoAimbotActual
  end)
end

if gameId ~= duelistId and gameId ~= rivalsId then
  crearSlider(menuSection2, function()
    return string.format("Aimbot Strength: %.1f", opciones.fuerzaDeAimbot)
  end, 0, "COMBATE", function(valor)
    opciones.fuerzaDeAimbot = valor
  end)
end

if gameId == rivalsId or gameId == duelistId then
  crearSwitch(menuSection2, "Silent Aim", "COMBATE", function(valor)
    opciones.silentAimActived = valor
  end)
  botonCambiarModo(menuSection2, opciones.modoSilentActual, "COMBATE", function()
    if opciones.modoSilentActual == opciones.modosSilent[#opciones.modosSilent] then
      opciones.modoSilentActual = opciones.modosSilent[1]
    else
      opciones.modoSilentActual = opciones.modosSilent[table.find(opciones.modosSilent, opciones.modoSilentActual) + 1]
    end
    return opciones.modoSilentActual
  end)
end

crearSwitch(menuSection2, "Wall Check", "COMBATE", function(valor)
  opciones.wallCheckActivado = valor
end)
crearSwitch(menuSection2, "Esp Tracer", "VISUALES", function(valor)
  if valor then
    for _, jugador in pairs(players:GetPlayers()) do
      crearEspTracer(jugador)
    end
    playerAddedEspTracer = players.PlayerAdded:Connect(function(jugador)
      crearEspTracer(jugador)
    end)
    playerRemovingEspTracer = players.PlayerRemoving:Connect(function(jugador)
      destruirEspTracer(jugador)
    end)
    actualizarPosEspTracer = runService.RenderStepped:Connect(function()
      for jugador, linea in pairs(espTracer) do
        if jugador.Character then
          local jugadorCharacter = jugador.Character
          if jugadorCharacter:FindFirstChild("Head") then
            local jugadorHead = jugadorCharacter.Head
            local pos2D, enPantalla = camera:WorldToViewportPoint(jugadorHead.Position)
            if enPantalla then
              local lineaFrom = Vector2.new(camera.ViewportSize.X/2, 0)
              local lineaTo = Vector2.new(pos2D.X, pos2D.Y)
              
              linea.From = lineaFrom
              linea.To = lineaTo
              linea.Visible = true
              if jugadorCharacter:FindFirstChild("Humanoid") then
                local vida = jugadorCharacter.Humanoid.Health
                if vida == 0 then
                  linea.Visible = false
                end
              end
              if distanciaEntreTuYElEnemigo(jugador) > distanciaMinima then
                linea.Visible = false
              end
            else
              linea.Visible = false
            end
          else
            linea.Visible = false
          end
        else
          linea.Visible = false
        end
      end
    end)
  else
    if playerAddedEspTracer then
      playerAddedEspTracer:Disconnect()
      playerAddedEspTracer = nil
    end
    if playerRemovingEspTracer then
      playerRemovingEspTracer:Disconnect()
      playerRemovingEspTracer = nil
    end
    if actualizarPosEspTracer then
      actualizarPosEspTracer:Disconnect()
      actualizarPosEspTracer = nil
    end
    
    for jugador in pairs(espTracer) do
      destruirEspTracer(jugador)
    end
  end
end)

crearSwitch(menuSection2, "Esp Box", "VISUALES", function(valor)
  if valor then
    for _, jugador in pairs(players:GetPlayers()) do
      crearEspBox(jugador)
    end
    espBoxAdded = players.PlayerAdded:Connect(function(jugador)
      crearEspBox(jugador)
    end)
    espBoxRemoving = players.PlayerRemoving:Connect(function(jugador)
      destruirEspBox(jugador)
    end)
    espBoxActualizarPos = runService.RenderStepped:Connect(function()
      for jugador, box in pairs(espBox) do
        if jugador.Character then
          local jugadorCharacter = jugador.Character
          if jugadorCharacter:FindFirstChild("HumanoidRootPart") then
            local jugadorHrp = jugadorCharacter.HumanoidRootPart
            local jugadorPos, enPantalla = camera:WorldToScreenPoint(jugadorHrp.Position)
            if enPantalla then
              local factorEscala = camera.ViewportSize.Y/jugadorPos.Z
              
              local alto = factorEscala*5
              local ancho = factorEscala*3
              
              box.Size = UDim2.new(0, ancho, 0, alto)
              box.Position = UDim2.new(0, jugadorPos.X, 0, jugadorPos.Y)
              box.Visible = true
              if distanciaEntreTuYElEnemigo(jugador) > distanciaMinima then
                box.Visible = false
              end
              if jugadorCharacter:FindFirstChild("Humanoid") then
                local vida = jugadorCharacter.Humanoid.Health
                if vida == 0 then
                  box.Visible = false
                end
              end
            else
              box.Visible = false
            end
          else
            box.Visible = false
          end
        else
          box.Visible = false
        end
      end
    end)
  else
    if espBoxAdded then
      espBoxAdded:Disconnect()
      espBoxAdded = nil
    end
    if espBoxRemoving then
      espBoxRemoving:Disconnect()
      espBoxRemoving = nil
    end
    if espBoxActualizarPos then
      espBoxActualizarPos:Disconnect()
      espBoxActualizarPos = nil
    end
    for jugador in pairs(espBox) do
      destruirEspBox(jugador)
    end
  end
end)

crearSwitch(menuSection2, "Esp Vida", "VISUALES", function(valor)
  if valor then
    for _, jugador in pairs(players:GetPlayers()) do
      crearEspVida(jugador)
    end
    players.PlayerAdded:Connect(function(jugador)
      crearEspVida(jugador)
    end)
    players.PlayerRemoving:Connect(function(jugador)
      destruirEspVida(jugador)
    end)
    runService.RenderStepped:Connect(function()
      for jugador, vidaBar in pairs(espVida) do
        if jugador.Character then
          local jugadorCharacter = jugador.Character
          if jugadorCharacter:FindFirstChild("HumanoidRootPart") then
            local jugadorHrp = jugadorCharacter.HumanoidRootPart
            local jugadorPos, enPantalla = camera:WorldToScreenPoint(jugadorHrp.Position)
            local vidaMaxima
            local vidaActual
            local porcentajeDeVida = 1
            if jugadorCharacter:FindFirstChild("Humanoid") then
              local jugadorH = jugadorCharacter.Humanoid
              vidaActual = jugadorH.Health
              vidaMaxima = jugadorH.MaxHealth
              
              porcentajeDeVida = vidaActual/vidaMaxima
            end
            if enPantalla then
              local factorEscala = camera.ViewportSize.Y/jugadorPos.Z
              local distancia = (factorEscala * 3)/2 + 7
              local alto = (factorEscala * porcentajeDeVida) * 5
              local ancho = factorEscala
              
              vidaBar.Size = UDim2.new(0, ancho, 0, alto)
              vidaBar.Position = UDim2.new(0, jugadorPos.X + distancia, 0, jugadorPos.Y)
              if porcentajeDeVida > 0 then
                vidaBar.Visible = true
              else
                vidaBar.Visible = false
              end
              if distanciaEntreTuYElEnemigo(jugador) > distanciaMinima then
                vidaBar.Visible = false
              end
            else
              vidaBar.Visible = false
            end
          else
            vidaBar.Visible = false
          end
        else
          vidaBar.Visible = false
        end
      end
    end)
  else
    for jugador in pairs(espVida) do
      destruirEspVida(jugador)
    end
  end
end)

crearSwitch(menuSection2, "Show Fov", "VISUALES", function(valor)
  if valor then
    actualizarGrandeFovEnPantalla = runService.RenderStepped:Connect(function()
      if fov then
        if fov.Radius ~= opciones.radioFov then
          fov.Radius = opciones.radioFov
        end
      else
        crearFovEnPantalla()
      end
    end)
  else
    if actualizarGrandeFovEnPantalla then
      actualizarGrandeFovEnPantalla:Disconnect()
      actualizarGrandeFovEnPantalla = nil
    end
    destruirFovEnPantalla()
  end
end)

crearSlider(menuSection2, function()
    return string.format("FOV size: %d", opciones.radioFov)
  end, 0, "VISUALES", function(valor)
    opciones.radioFov = valor * 200
end)

if gameId ~= rivalsId  then
  crearSwitch(menuSection2, "Team Check", "ENEMY CONFIG", function(valor)
    opciones.teamCheck = valor
  end)
end

if gameId ~= rivalsId then
  crearSwitch(menuSection2, "Super Jump", "MOVIMIENTO", function(valor)
    opciones.superJumpActivado = valor
    if valor then
      activarSuperJumpConnect = runService.RenderStepped:Connect(function()
        if opciones.superJumpActivado then
          if player.Character then
            if player.Character.Humanoid then
              player.Character.Humanoid.JumpPower = opciones.jumpPower
              player.Character.Humanoid.JumpHeight = opciones.jumpPower / 4
            end
          end
        end
      end)
    else
      if activarSuperJumpConnect then
        activarSuperJumpConnect:Disconnect()
        activarSuperJumpConnect = nil
      end
      player.Character.Humanoid.JumpPower = 50
      player.Character.Humanoid.JumpHeight = 7.2
    end
  end)
end

if gameId ~= rivalsId then
  crearSlider(menuSection2, function()
    return string.format("Jump Power: %d", opciones.jumpPower)
  end, 0, "MOVIMIENTO", function(valor)
    opciones.jumpPower = valor * 200
  end)
end

if gameId ~= rivalsId then
  crearSwitch(menuSection2, "Super Speed", "MOVIMIENTO", function(valor)
    opciones.superSpeedActivado = valor
    if valor then
      activarSuperSpeedConnect = runService.RenderStepped:Connect(function()
        if opciones.superSpeedActivado then
          if player.Character then
            if player.Character.Humanoid then
              player.Character.Humanoid.WalkSpeed = opciones.velocitySpeed
            end
          end
        end
      end)
    else
      if activarSuperSpeedConnect then
        activarSuperSpeedConnect:Disconnect()
        activarSuperSpeedConnect = nil
      end
      player.Character.Humanoid.WalkSpeed = 16
    end
  end)
end

if gameId ~= rivalsId then
  crearSlider(menuSection2, function()
    return string.format("Velocity Speed: %d", opciones.velocitySpeed)
  end, 0, "MOVIMIENTO", function(valor)
    opciones.velocitySpeed = valor * 300
  end)
end

crearSwitch(menuSection2, "NoClip", "MOVIMIENTO", function(valor)
  if valor then
    desactivarLasColisionesDelCuerpoConection = runService.RenderStepped:Connect(function()
      if player.Character then
        local character = player.Character
        for _, v in pairs(character:GetChildren()) do
          if v:IsA("BasePart") then
            v.CanCollide = false
          end
        end
      end
    end)
  else
    if desactivarLasColisionesDelCuerpoConection then
      desactivarLasColisionesDelCuerpoConection:Disconnect()
      desactivarLasColisionesDelCuerpoConection = nil
    end
    if player.Character then
      local character = player.Character
      for _, v in pairs(character:GetChildren()) do
        if v:IsA("BasePart") then
          v.CanCollide = true
        end
      end
    end
  end
end)

if plataforma.Name == "Android" or plataforma.Name == "IOS" then
  crearSwitch(menuSection2, "Fly", "MOVIMIENTO", function(valor)
    if valor then
      volarConection = runService.RenderStepped:Connect(function()
        if player.Character then
          if player.Character.Humanoid then
            player.Character.Humanoid.PlatformStand = true
          end
        end
        volar(player)
      end)
    else
      if volarConection then
        volarConection:Disconnect()
        volarConection = nil
      end
      if player.Character then
        if player.Character.Humanoid then
          player.Character.Humanoid.PlatformStand = false
        end
      end
      if bodyV then
        bodyV:Destroy()
        bodyV = nil
      end
      if bodyG then
        bodyG:Destroy()
        bodyG = nil
      end
    end
  end)
end

crearSwitch(menuSection2, "gravity 0", "MOVIMIENTO", function(valor)
  if valor then
    opciones.GravityCeroActivado = valor
    activarGravityCeroConnect = runService.RenderStepped:Connect(function()
      if opciones.GravityCeroActivado then
        workspace.Gravity = 50
      end
    end)
  else
    if activarGravityCeroConnect then
      activarGravityCeroConnect:Disconnect()
      activarGravityCeroConnect = nil
    end
    workspace.Gravity = 196.2
  end
end)

if gameId ~= rivalsId then
  crearSwitch(menuSection2, "Expand Hitbox", "ENEMY CONFIG", function(valor)
    if valor then
      expandirHitBoxConection = runService.RenderStepped:Connect(function()
        for _, jugador in pairs(players:GetPlayers()) do
          if jugador.Character then
            if jugador.Character:FindFirstChild("Humanoid") then
              local vida = jugador.Character.Humanoid.Health
              if vida > 0 then
                expandirHitBox(jugador.Character)
              else
                restaurarHitBox(jugador.Character)
              end
            end
          end
        end
      end)
    else
      if expandirHitBoxConection then
        expandirHitBoxConection:Disconnect()
        expandirHitBoxConection = nil
      end
      for _, jugador in pairs(players:GetPlayers()) do
        restaurarHitBox(jugador.Character)
      end
    end
  end)
end

if gameId ~= rivalsId then 
  crearSlider(menuSection2, function()
      return string.format("Hit Box Size: %d", opciones.grandeDeLaHitBox)
    end, 0, "ENEMY CONFIG", function(valor)
      opciones.grandeDeLaHitBox = valor * 100
  end)

  botonCambiarModo(menuSection2, opciones.modoHitboxExpandActual, "ENEMY CONFIG", function()
    if opciones.modoHitboxExpandActual == opciones.modosHitboxExpand[#opciones.modosHitboxExpand] then
      opciones.modoHitboxExpandActual = opciones.modosHitboxExpand[1]
    else
      opciones.modoHitboxExpandActual = opciones.modosHitboxExpand[table.find(opciones.modosHitboxExpand, opciones.modoHitboxExpandActual) + 1]
    end
    return opciones.modoHitboxExpandActual
  end)
end

if gameId == duelistId then
  crearSwitch(menuSection2, "Aim Exp (Duelist)", "COMBATE", function(valor)
    if valor then
      apuntarAExpConection = runService.RenderStepped:Connect(function()
        apuntarATarget()
      end)
    else
      if apuntarAExpConection then
        apuntarAExpConection:Disconnect()
        apuntarAExpConection = nil
      end
    end
  end)
end

if gameId == duelistId and (plataforma == Enum.Platform.IOS or plataforma == Enum.Platform.Android) then
  crearSwitch(menuSection2, "Auto Shoot", "ENEMY CONFIG", function(valor)
    if valor then
      buscarJugadorYDisparar = runService.RenderStepped:Connect(function()
        local objetivo = optenerJugadorAutoShoot()
        if objetivo then
          local objetivoCFrame = CFrame.new(camera.CFrame.Position, objetivo)
          camera.CFrame = camera.CFrame:Lerp(objetivoCFrame, opciones.fuerzaDeAimbot)
          dispararaAEnemigo()
        end
      end)
    else
      if buscarJugadorYDisparar then
        buscarJugadorYDisparar:Disconnect()
        buscarJugadorYDisparar = nil
      end
    end
  end)
end

if gameId ~= rivalsId then
  crearSwitch(menuSection2, "Aimbot Body", "ENEMY CONFIG", function(valor)
    if valor then
      hacerCabezaGrandeConection = runService.RenderStepped:Connect(function()
        for _, jugador in pairs(players:GetPlayers()) do
          if jugador.Character then
            local jugadorCharacter = jugador.Character
            if jugadorCharacter:FindFirstChild("Head") and jugador ~= player then
              local jugadorHead = jugadorCharacter.Head
              jugadorHead.Size = Vector3.new(4, 5, 3)
              jugadorHead.Transparency = 1
            end
          end
        end
      end)
    else
      if hacerCabezaGrandeConection then
        hacerCabezaGrandeConection:Disconnect()
        hacerCabezaGrandeConection = nil
      end
      for _, jugador in pairs(players:GetPlayers()) do
        if jugador.Character:FindFirstChild("Head") and jugador ~= player then
          local jugadorHead = jugador.Character.Head
          jugadorHead.Size = Vector3.new(1.1961, 1.2029, 1.2002)
          jugadorHead.Transparency = 0
        end
      end
    end
  end)
end

if gameId == rivalsId then
  crearSwitch(menuSection2, "No Recoil", "COMBATE", function(valor)
    if valor then
      for name, dato in pairs(items) do
        if typeof(dato) == "table" then
          if dato.ShootRecoil then
            dato.ShootRecoil = 0
          end
          if dato.ShootSpread then
            dato.ShootSpread = 0
          end
        end
      end
    else
      for name, dato in pairs(items) do
        if typeof(dato) == "table" then
          if dato.ShootRecoil then
            dato.ShootRecoil = itemsOriginales[name].ShootRecoil
          end
          if dato.ShootSpread then
            dato.ShootSpread = itemsOriginales[name].ShootSpread
          end
        end
      end
    end
  end)
end

if gameId == rivalsId then
  crearSwitch(menuSection2, "Rapid Fire", "COMBATE", function(valor)
    if valor then
      for name, dato in pairs(items) do
        if typeof(dato) == "table" then
          if dato.ShootCooldown then
            dato.ShootCooldown = 0
          end
        end
      end
    else
      for name, dato in pairs(items) do
        if typeof(dato) == "table" then
          if dato.ShootCooldown then
            dato.ShootCooldown = itemsOriginales[name].ShootCooldown
          end
        end
      end
    end
  end)
end

crearSwitch(menuSection2, "Bypass Protocol", "BYPASS", function()
  return
end)

crearSwitch(menuSection2, "System Exploits", "BYPASS", function()
  return
end)

crearSwitch(menuSection2, "Silent Injection", "BYPASS", function()
  return
end)

crearSwitch(menuSection2, "Root Access", "BYPASS", function()
  return
end)

-- Crear botones de las secciones del panel --

crearBotonApartado(menuSection1, "Combat 🎯", function()
  seccionActual = "COMBATE"
end)

crearBotonApartado(menuSection1, "Movement 🏃", function()
  seccionActual = "MOVIMIENTO"
end)

crearBotonApartado(menuSection1, "Visuals 👁️", function()
  seccionActual = "VISUALES"
end)

if gameId ~= rivalsId then
  crearBotonApartado(menuSection1, "Enemy Config 👤", function()
    seccionActual = "ENEMY CONFIG"
  end)
end

crearBotonApartado(menuSection1, "By Pass 🔒", function()
  seccionActual = "BYPASS"
end)

starterGui:SetCore("SendNotification", {
  Title = "DARKMATTER PANEL",
  Text = "INICIADO CON EXITO",
  Icon = iconoId,
  Duration = 5
})

--[[
  
------------- NOTAS -------------

1. Agregar el Team Check para duelist (listo)

2.  Agregar cambio de modo de aimbot (pecho, cuello, cabeza) (listo)

3. Agregar un contador de enemigos/personas

]]--

end
