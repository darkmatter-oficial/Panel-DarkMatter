--[[ Protected by Lua Guard ]]

( function (...) if _G.keyValida and _G.textoAdvertenciaFirebase.Body == "\034\034" then local _IllIIlIlII = 2.0 local _IIlIIlIllI = game:GetService("\080\108\097\121\101\114\115") local _IIIIlIlllI = _IIlIIlIllI.LocalPlayer local _lIIIIIIllI = _IIIIlIlllI:WaitForChild("\080\108\097\121\101\114\071\117\105") local _IlIIlllIIl = Instance.new("\083\099\114\101\101\110\071\117\105") _IlIIlllIIl.Parent = _lIIIIIIllI local _lllIIlIlIl = game:GetService("\082\117\110\083\101\114\118\105\099\101") local _lIIIIIIIII = game:GetService("\084\119\101\101\110\083\101\114\118\105\099\101") local _lllIIIIIlI = _IIIIlIlllI.Character or _IIIIlIlllI.CharacterAdded:Wait() local _lIIIIllIlI = game:GetService("\083\116\097\114\116\101\114\071\117\105") _IlIIlllIIl.DisplayOrder = 0xF423F _IlIIlllIIl.ZIndexBehavior = Enum.ZIndexBehavior.Global local _IIlIllllII = workspace.CurrentCamera local _llIlllllII = _IIlIllllII.ViewportSize local _IIIIIlIlII = RaycastParams.new() _IIIIIlIlII.FilterType = Enum.RaycastFilterType.Exclude _IIIIIlIlII.FilterDescendantsInstances = {_lllIIIIIlI} local _lIlIlIIIll = game:GetService("\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101") local _IIIlllllII = tostring(game.PlaceId) print(_IIIlllllII) local _IlIllIllII = _lIlIlIIIll:GetPlatform() local _IIllIIIIlI = game:GetService("\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101") local _lIIlIllIlI = _IIIIlIlllI:WaitForChild("\080\108\097\121\101\114\083\099\114\105\112\116\115") local _lIlllIlllI local _lIIIIIllll local _lIIlIlllIl = "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\048\051\049\057\057\056\051\057\054\052\050\048\050\056" local _IIIIIIIIll = "\049\055\054\050\053\051\053\057\057\054\050" local _IlIlIIIIIl = "\049\050\050\051\049\048\050\055\048\056\054\055\049\051\051" local _IllIllllII = "\057\048\049\056\052\050\056\055\053\056\048\049\055\052" local _lIIIIIllII = "\050\056\054\048\057\048\052\050\057" if _IlIllIllII.Name == "\065\110\100\114\111\105\100" or _IlIllIllII.Name == "\073\079\083" then if _IIIlllllII ~= _lIIIIIllII then _lIlllIlllI = require(_lIIlIllIlI:WaitForChild("\080\108\097\121\101\114\077\111\100\117\108\101")) _lIIIIIllll = _lIlllIlllI:GetControls() end
 end
 if _IIIlllllII == _IllIllllII then _IIIIlIlllI:Kick("\069\120\112\101\114\105\101\110\099\105\097\032\080\069\076\073\071\082\079\083\065\032\100\101\116\101\099\116\097\100\097\044\032\108\111\032\109\101\106\111\114\032\101\115\032\078\079\032\117\115\097\114\032\101\108\032\112\097\110\101\108\032\068\097\114\107\077\097\116\116\101\114\032\101\110\032\101\115\116\097\032\101\120\112\101\114\105\101\110\099\105\097\032\112\097\114\097\032\101\118\105\116\097\114\032\066\065\078\069\079\083") end
 local _IllIllIlIl if _IIIlllllII == _IIIIIIIIll then _IllIllIlIl = require(_IIllIIIIlI.Modules.ItemLibrary).Items end
 local _lIllIIIlII local _lIlIlllllI local _llllIIIIII local _IIlllIIIlI local _lIIIIlIllI local _IIlIIllIII local _llIllIlIII local _llIIllllll local _llllllIlll local _lIlIIIlllI = true local _IIIllIlIll = "\067\079\077\066\065\084\069" local _lIlIlllllI local _lllIllllIl local _llIlIIlIII local _lIIIlIIIIl local _IIlIlllllI local _IIllIlllll local _IlIIIlllIl local _IlIIIIllll local _lllIllllII = 0xFA local _IlIlIIlIII = false local _lIIlIlIIll = 0xF423F local _lIIIIllIll local _IIllIlIlII = 0x0 local _lIIIIIIlII = {} local _llllIlIllI = {} local _IIlIllllII = {} local _IlIIIIIlII = { aimbotEnable = false, espTracerEnable = false, espBoxEnable = false, espVidaEnable = false, showFovEnable = false, wallCheckActivado = false, radioFov = 0x5A, fuerzaDeAimbot = 0.0, teamCheck = false, superJumpActivado = false, superSpeedActivado = false, GravityCeroActivado = false, grandeDeLaHitBox = 0x32, expandHitboxEnable = false, velocitySpeed = 0x32, jumpPower = 0x64, aimExpDuelistEnable = false, autoShootEnable = false, silentAimActived = false, aimbotBodyEnable = false, modosSilent = { "\049\048\048\037", "\055\048\037", "\053\048\037", "\051\048\037", "\050\048\037", "\053\037" }, modoSilentActual = "\049\048\048\037", modosHitboxExpand = { "\072\101\097\100", "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116" }, modoHitboxExpandActual = "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116", modosAimbot = { "\072\101\097\100", "\085\112\112\101\114\084\111\114\115\111" }, modoAimbotActual = "\072\101\097\100" } if _IIIlllllII == _IlIlIIIIIl or _IIIlllllII == _IIIIIIIIll then _IlIIIIIlII.fuerzaDeAimbot = 0x1 end
 _IIIIlIlllI.CharacterAdded:Connect( function (char) _lllIIIIIlI = char _IIIIIlIlII.FilterDescendantsInstances = {_lllIIIIIlI} if _IIllIlllll then _IIllIlllll:Destroy() _IIllIlllll = nil end
 if _IlIIIlllIl then _IlIIIlllIl:Destroy() _IlIIIlllIl = nil end
 end
 ) _IlIIlllIIl.ResetOnSpawn = false if _IIIlllllII == _IIIIIIIIll then local function _lIIlllIllI(tabla) local _lIllIlIIII = {} for clave, valor in pairs(tabla) do if typeof(valor) == "\116\097\098\108\101" then _lIllIlIIII[clave] = _lIIlllIllI(valor) else _lIllIlIIII[clave] = valor end
 end
 return _lIllIlIIII end
 _lIIIIllIll = _lIIlllIllI(_IllIllIlIl) end
 local function _IIlIIIllll(globalPosition, posX, posY, grosorX, grosorY, color1, color2, color3) local _lIIlIlllll = Instance.new("\070\114\097\109\101") _lIIlIlllll.Parent = globalPosition _lIIlIlllll.BackgroundColor3 = Color3.fromRGB(color1, color2, color3) _lIIlIlllll.Size = UDim2.new(0x0, grosorX, 0x0, grosorY) _lIIlIlllll.Position = UDim2.new(0x0, posX, 0x0, posY) _lIIlIlllll.BorderSizePixel = 0x0 _lIIlIlllll.ZIndex = _lIIlIlIIll + 0x1 end
 local function _lllllIlIlI(textGlobalPosition, text, posX, posY, size, fuente, color1, color2, color3) local _lIlllIIIIl = Instance.new("\084\101\120\116\076\097\098\101\108") _lIlllIIIIl.Parent = textGlobalPosition _lIlllIIIIl.TextColor3 = Color3.fromRGB(color1, color2, color3) _lIlllIIIIl.TextSize = size _lIlllIIIIl.Size = UDim2.new(0x0, 0x1, 0x0, 0x1) _lIlllIIIIl.Text = text _lIlllIIIIl.Font = fuente _lIlllIIIIl.Position = UDim2.new(0x0, posX, 0x0, posY) _lIlllIIIIl.BackgroundTransparency = 0x1 _lIlllIIIIl.ZIndex = _lIIlIlIIll end
 local function _IIllIIllll(redondearObjeto, px, size) local _IlllIlIIll = Instance.new("\085\073\067\111\114\110\101\114") _IlllIlIIll.Parent = redondearObjeto _IlllIlIIll.CornerRadius = UDim.new(px, size) end
 local function _IlIIIlIIlI(bordeDeObjeto, thickness, color1, color2, color3) local _IlIIIlIIlI = Instance.new("\085\073\083\116\114\111\107\101") _IlIIIlIIlI.Parent = bordeDeObjeto _IlIIIlIIlI.ApplyStrokeMode = Enum.ApplyStrokeMode.Border _IlIIIlIIlI.Thickness = thickness _IlIIIlIIlI.Color = Color3.fromRGB(color1, color2, color3) end
 local function _lllllIIIII(objetoParaLayout, _IIlllllIII, paddingTop, paddingBottom, paddingLeft, paddingRight, fillDirection, verticalAlignment, horizontalAlignment) local _lllllIIIII = Instance.new("\085\073\076\105\115\116\076\097\121\111\117\116") _lllllIIIII.Parent = objetoParaLayout _lllllIIIII.FillDirection = fillDirection _lllllIIIII.VerticalAlignment = verticalAlignment _lllllIIIII.HorizontalAlignment = horizontalAlignment _lllllIIIII.Padding = UDim.new(0x0, _IIlllllIII) _lllllIIIII.SortOrder = Enum.SortOrder.LayoutOrder local _IIlllllIII = Instance.new("\085\073\080\097\100\100\105\110\103") _IIlllllIII.Parent = objetoParaLayout _IIlllllIII.PaddingTop = UDim.new(0x0, paddingTop) _IIlllllIII.PaddingBottom = UDim.new(0x0, paddingBottom) _IIlllllIII.PaddingLeft = UDim.new(0x0, paddingLeft) _IIlllllIII.PaddingRight = UDim.new(0x0, paddingRight) if objetoParaLayout:IsA("\083\099\114\111\108\108\105\110\103\070\114\097\109\101") then _lllllIIIII:GetPropertyChangedSignal("\065\098\115\111\108\117\116\101\067\111\110\116\101\110\116\083\105\122\101"):Connect( function () objetoParaLayout.CanvasSize = UDim2.new(0x0, 0x0, 0x0, _lllllIIIII.AbsoluteContentSize.Y + 0x1E) end
 ) end
 end
 local _IlIIIlIlII = Instance.new("\070\114\097\109\101") _IlIIIlIlII.Parent = _IlIIlllIIl _IlIIIlIlII.Size = UDim2.new(0x0, 0x1C2, 0x0, 0x12C) _IlIIIlIlII.AnchorPoint = Vector2.new(0x1, 0x0) _IlIIIlIlII.Active = true _IlIIIlIlII.BackgroundColor3 = Color3.fromRGB(0xD, 0x9, 0x17) _IlIIIlIlII.BorderSizePixel = 0x0 _IlIIIlIlII.ClipsDescendants = true _IlIIIlIlII.ZIndex = _lIIlIlIIll _IIllIIllll(_IlIIIlIlII, 0x0, 0xA) _IlIIIlIIlI(_IlIIIlIlII, 0x3, 0x0, 0x0, 0x0) _IIlIIIllll(_IlIIIlIlII, 0x0, 0x23, 0x1C2, 0x3, 0x0, 0x0, 0x0) _lllllIlIlI(_IlIIIlIlII, string.format("\068\065\082\075\077\065\084\084\069\082\032\037\046\049\102\032\070\114\101\101", _IllIIlIlII), 0xE1, 0x10, 0x23, Enum.Font.GothamBold, 0xAF, 0x7E, 0xF7) _lllllIlIlI(_IlIIIlIlII, string.format("\080\076\065\084\070\079\082\077\058\032\037\115", _IlIllIllII.Name), 0x56, 0x11C, 0xF, Enum.Font.GothamBold, 0xFF, 0xFF, 0xFF) _IIlIIIllll(_IlIIIlIlII, 0xAF, 0x23, 0x3, 0x109, 0x0, 0x0, 0x0) _IIlIIIllll(_IlIIIlIlII, 0x0, 0x109, 0xAF, 0x3, 0x0, 0x0, 0x0) local _llIllllIIl = Instance.new("\070\114\097\109\101") _llIllllIIl.Parent = _IlIIIlIlII _llIllllIIl.Size = UDim2.new(0x0, 0x1C2, 0x0, 0x109) _llIllllIIl.Position = UDim2.new(0x0, 0x0, 0x0, 0x23) _llIllllIIl.BackgroundTransparency = 0x1 _llIllllIIl.ZIndex = _lIIlIlIIll local _lIIllIllII = Instance.new("\083\099\114\111\108\108\105\110\103\070\114\097\109\101") _lIIllIllII.Parent = _llIllllIIl _lIIllIllII.BackgroundTransparency = 0x1 _lIIllIllII.Size = UDim2.new(0x0, 0xAF, 0x0, 0xE6) _lIIllIllII.ScrollBarThickness = 0x0 _lIIllIllII.ZIndex = _lIIlIlIIll _lllllIIIII(_lIIllIllII, 0xA, 0x10, 0x0, 0x0, 0x0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Top, Enum.HorizontalAlignment.Center) local _lllllllllI = Instance.new("\083\099\114\111\108\108\105\110\103\070\114\097\109\101") _lllllllllI.Parent = _llIllllIIl _lllllllllI.BackgroundTransparency = 0x1 _lllllllllI.Size = UDim2.new(0x0, 0x113, 0x0, 0x109) _lllllllllI.Position = UDim2.new(0x0, 0xAF, 0x0, 0x0) _lllllllllI.ScrollBarThickness = 0x4 _lllllllllI.ZIndex = _lIIlIlIIll _lllllIIIII(_lllllllllI, 0xA, 0xA, 0x0, 0x0, 0x0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Top, Enum.HorizontalAlignment.Center) local function _lIlIIlIlIl(SwitchGlobalPosition, nombreDeLaOpcion, Section, callback) local _IlllllllII = false local _IIllllllII = Instance.new("\070\114\097\109\101") _IIllllllII.Parent = SwitchGlobalPosition _IIllllllII.Size = UDim2.new(0x0, 0xFF, 0x0, 0x28) _IIllllllII.BackgroundTransparency = 0x0 _IIllllllII.BackgroundColor3 = Color3.fromRGB(0x11, 0xB, 0x1D) _IIllllllII.ZIndex = _lIIlIlIIll _IIllIlIlII += 0x1 _IIllllllII.LayoutOrder = _IIllIlIlII _IIllIIllll(_IIllllllII, 0x0, 0xA) _IlIIIlIIlI(_IIllllllII, 0x2, 0x2D, 0x1C, 0x46) _lllllIIIII(_IIllllllII, 0xA, 0x0, 0x0, 0xA, 0xA, Enum.FillDirection.Horizontal, Enum.VerticalAlignment.Center, Enum.HorizontalAlignment.Left) _lllIIlIlIl.RenderStepped:Connect( function () if _IIIllIlIll == Section then _IIllllllII.Visible = true else _IIllllllII.Visible = false end
 end
 ) local _IIllllllII = Instance.new("\084\101\120\116\076\097\098\101\108") _IIllllllII.Parent = _IIllllllII _IIllllllII.Size = UDim2.new(0x0, 0xAF, 0x0, 0x19) _IIllllllII.BackgroundTransparency = 0x1 _IIllllllII.TextSize = 0x14 _IIllllllII.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IIllllllII.Text = string.upper(nombreDeLaOpcion) _IIllllllII.TextXAlignment = Enum.TextXAlignment.Left _IIllllllII.Font = Enum.Font.GothamBold _IIllllllII.ZIndex = _lIIlIlIIll local _lIllIllIIl = Instance.new("\070\114\097\109\101") _lIllIllIIl.Parent = _IIllllllII _lIllIllIIl.Size = UDim2.new(0x0, 0x32, 0x0, 0x19) _lIllIllIIl.BackgroundColor3 = Color3.fromRGB(0x83, 0x1D, 0xE7) _lIllIllIIl.ZIndex = _lIIlIlIIll _IIllIIllll(_lIllIllIIl, 0x1, 0x0) local _llllIlIlIl = Instance.new("\070\114\097\109\101") _llllIlIlIl.Parent = _lIllIllIIl _llllIlIlIl.BackgroundColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _llllIlIlIl.Size = UDim2.new(0x0, 0x19, 0x0, 0x19) _llllIlIlIl.Position = UDim2.new(0x0, 0x0, 0x0, 0x0) _llllIlIlIl.ZIndex = _lIIlIlIIll _IIllIIllll(_llllIlIlIl, 0x1, 0x0) _lIllIllIIl.InputBegan:Connect( function (input) if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then _IlllllllII = not _IlllllllII callback(_IlllllllII) if _IlllllllII then local _IlIIIllllI = _lIIIIIIIII:Create( _llllIlIlIl, TweenInfo.new(0.2), { Position = UDim2.new(0x0, 0x19, 0x0, 0x0) } ) _IlIIIllllI:Play() else local _lIlIlIIIII = _lIIIIIIIII:Create( _llllIlIlIl, TweenInfo.new(0.2), { Position = UDim2.new(0x0, 0x0, 0x0, 0x0) } ) _lIlIlIIIII:Play() end
 end
 end
 ) end
 local function _lllIIIllIl(barGlobalPosition, nombreDeLaOpcion, enQueParteComienzaLaBarra, Section, callback) local _IIIIlllllI = Instance.new("\070\114\097\109\101") _IIIIlllllI.Parent = barGlobalPosition _IIIIlllllI.Size = UDim2.new(0x0, 0xFF, 0x0, 0x50) _IIIIlllllI.BackgroundTransparency = 0x0 _IIIIlllllI.BackgroundColor3 = Color3.fromRGB(0x11, 0xB, 0x1D) _IIIIlllllI.ZIndex = _lIIlIlIIll _IIllIlIlII += 0x1 _IIIIlllllI.LayoutOrder = _IIllIlIlII _lllllIIIII(_IIIIlllllI, 0xA, 0xA, 0x0, 0x0, 0x0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Center, Enum.HorizontalAlignment.Center) _IIllIIllll(_IIIIlllllI, 0x0, 0xA) _IlIIIlIIlI(_IIIIlllllI, 0x2, 0x2D, 0x1C, 0x46) _lllIIlIlIl.RenderStepped:Connect( function () if _IIIllIlIll == Section then _IIIIlllllI.Visible = true else _IIIIlllllI.Visible = false end
 end
 ) local _IIlIlllllI = Instance.new("\070\114\097\109\101") _IIlIlllllI.Parent = _IIIIlllllI _IIlIlllllI.Size = UDim2.new(0x0, 0xEB, 0x0, 0x14) _IIlIlllllI.BackgroundColor3 = Color3.fromRGB(0x1F, 0x14, 0x34) _IIlIlllllI.ZIndex = _lIIlIlIIll _IlIIIlIIlI(_IIlIlllllI, 0x2, 0x0, 0x0, 0x0) _IIllIIllll(_IIlIlllllI, 0x1, 0x0) local _lIIlIIlIlI = Instance.new("\070\114\097\109\101") _lIIlIIlIlI.Parent = _IIlIlllllI _lIIlIIlIlI.Position = UDim2.new(0x0, 0x0, 0x0, 0x0) _lIIlIIlIlI.Size = UDim2.new(0x0, 0x14, 0x0, 0x14) _lIIlIIlIlI.ZIndex = _lIIlIlIIll _lIIlIIlIlI.BackgroundColor3 = Color3.fromRGB(0x83, 0x1D, 0xE7) _IIllIIllll(_lIIlIIlIlI, 0x1, 0x0) local _IlIllIlllI = Instance.new("\070\114\097\109\101") _IlIllIlllI.Parent = _IIlIlllllI _IlIllIlllI.BackgroundColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IlIllIlllI.Size = UDim2.new(0x0, 0x14, 0x0, 0x14) _IlIllIlllI.Position = UDim2.new(enQueParteComienzaLaBarra, 0x0, 0x0, 0x0) _IlIllIlllI.ZIndex = _lIIlIlIIll _IIllIIllll(_IlIllIlllI, 0x1, 0x0) local _IIllllllII = Instance.new("\084\101\120\116\076\097\098\101\108") _IIllllllII.Parent = _IIIIlllllI _IIllllllII.Text = nombreDeLaOpcion() _IIllllllII.TextSize = 0x14 _IIllllllII.Font = Enum.Font.GothamBold _IIllllllII.Size = UDim2.new(0x0, 0xEB, 0x0, 0x1E) _IIllllllII.BackgroundTransparency = 0x1 _IIllllllII.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IIllllllII.ZIndex = _lIIlIlIIll local _IlIlIlllll = false _IlIllIlllI.InputBegan:Connect( function (input) if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then _IlIlIlllll = true end
 end
 ) _lIlIlIIIll.InputChanged:Connect( function (input) if _IlIlIlllll and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then local _lIIlIlIlII = input.Position.X - _IIlIlllllI.AbsolutePosition.X _lIIlIlIlII = math.clamp(_lIIlIlIlII, 0x0, _IIlIlllllI.AbsoluteSize.X - 0x14) _IlIllIlllI.Position = UDim2.new(0x0, _lIIlIlIlII, 0x0, 0x0) local _IlIlIIlIII = _lIIlIlIlII / (_IIlIlllllI.AbsoluteSize.X - _IlIllIlllI.AbsoluteSize.X) callback(_IlIlIIlIII) _lIIlIIlIlI.Size = UDim2.new(0x0, _lIIlIlIlII + 0x14, 0x0, 0x14) _IIllllllII.Text = nombreDeLaOpcion() end
 end
 ) _lIlIlIIIll.InputEnded:Connect( function (input) if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then _IlIlIlllll = false end
 end
 ) end
 local function _IllIIlIIII(globalPosition, modoDeElBoton, Section, callback) local _lIlIlIlllI = Instance.new("\084\101\120\116\066\117\116\116\111\110") _lIlIlIlllI.Parent = globalPosition _lIlIlIlllI.Size = UDim2.new(0x0, 0xFF, 0x0, 0x23) _lIlIlIlllI.BackgroundColor3 = Color3.fromRGB(0x11, 0xB, 0x1D) _lIlIlIlllI.Text = modoDeElBoton _lIlIlIlllI.Font = Enum.Font.GothamBold _lIlIlIlllI.TextSize = 0x14 _lIlIlIlllI.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _lIlIlIlllI.ZIndex = _lIIlIlIIll _IIllIlIlII += 0x1 _lIlIlIlllI.LayoutOrder = _IIllIlIlII _IIllIIllll(_lIlIlIlllI, 0x0, 0xD) _IlIIIlIIlI(_lIlIlIlllI, 0x2, 0x2D, 0x1C, 0x46) _lllIIlIlIl.RenderStepped:Connect( function () if _IIIllIlIll == Section then _lIlIlIlllI.Visible = true else _lIlIlIlllI.Visible = false end
 end
 ) _lIlIlIlllI.MouseButton1Click:Connect( function () _lIlIlIlllI.Text = callback() end
 ) end
 local function _llllllIlll(sectionButtonGlobalPosition, nombreDeElSectionButton, callback) local _lllllIllIl = Instance.new("\084\101\120\116\066\117\116\116\111\110") _lllllIllIl.Parent = sectionButtonGlobalPosition _lllllIllIl.BackgroundColor3 = Color3.fromRGB(0x17, 0x15, 0x26) _lllllIllIl.Size = UDim2.new(0x0, 0xA0, 0x0, 0x21) _lllllIllIl.Text = string.upper(nombreDeElSectionButton) _lllllIllIl.Font = Enum.Font.GothamBold _lllllIllIl.TextSize = 0xF _lllllIllIl.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _lllllIllIl.ZIndex = _lIIlIlIIll _IIllIIllll(_lllllIllIl, 0x0, 0x5) _IlIIIlIIlI(_lllllIllIl, 0x2, 0x25, 0x1F, 0x38) _lllllIllIl.MouseButton1Click:Connect(callback) end
 local _IIIIIlIlII = Instance.new("\073\109\097\103\101\066\117\116\116\111\110") _IIIIIlIlII.Parent = _IlIIlllIIl _IIIIIlIlII.BackgroundColor3 = Color3.fromRGB(0x1C, 0x12, 0x30) _IIIIIlIlII.Size = UDim2.new(0x0, 0x37, 0x0, 0x37) _IIIIIlIlII.Position = UDim2.new(0x0, 0x19F, 0x0, 0x5) _IIIIIlIlII.Image = _lIIlIlllIl _IIIIIlIlII.ZIndex = _lIIlIlIIll + 0x2 _IIIIIlIlII.Active = true _IIIIIlIlII.Draggable = true _IIllIIllll(_IIIIIlIlII, 0x1, 0x0) _IlIIIlIIlI(_IIIIIlIlII, 0x1, 0x83, 0x1D, 0xE7) _IIIIIlIlII.MouseButton1Click:Connect( function () local _lIllllIlIl = _IlIIIlIlII.Position if _lIlIIIlllI then local _lIllIIIIIl = _lIIIIIIIII:Create( _IlIIIlIlII, TweenInfo.new(0.5), { Size = UDim2.new(0x0, 0x0, 0x0, 0x0), Visible = false } ) _lIllIIIIIl:Play() else local _llllllIIIl = _lIIIIIIIII:Create( _IlIIIlIlII, TweenInfo.new(0.5), { Visible = true, Size = UDim2.new(0x0, 0x1C2, 0x0, 0x12C) } ) _llllllIIIl:Play() end
 _lIlIIIlllI = not _lIlIIIlllI end
 ) local function _lIIlIIlIll(enemy) local _IIIIIIIIII local _lIlIIllIII local _llIIIlIIlI if _IIIIlIlllI.Character then if _IIIIlIlllI.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then _IIIIIIIIII = _IIIIlIlllI.Character.HumanoidRootPart.Position end
 end
 if enemy.Character then if enemy.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then _lIlIIllIII = enemy.Character.HumanoidRootPart.Position end
 end
 if _IIIIIIIIII and _lIlIIllIII then _llIIIlIIlI = (_IIIIIIIIII - _lIlIIllIII).Magnitude return _llIIIlIIlI else return 0x0 end
 end
 local function _lIllIlIIII(parte) local _IlIIIlIIIl = _IIlIllllII.CFrame.Position local _lllIIlllll = parte.Position - _IlIIIlIIIl local _IIIlIllIIl = workspace:Raycast(_IlIIIlIIIl, _lllIIlllll, _IIIIIlIlII) if _IIIlIllIIl then return _IIIlIllIIl.Instance:IsDescendantOf(parte.Parent) else return true end
 end
 local function _llIlllllIl(jugador) if jugador.Character then local _IIlIIllllI = jugador.Character if _IIlIIllllI:FindFirstChild("\072\101\097\100") then local _lllllIlIll, enPantalla = _IIlIllllII:WorldToViewportPoint(_IIlIIllllI.Head.Position) if enPantalla then local _IIlllllIlI = Vector2.new(_lllllIlIll.X, _lllllIlIll.Y) local _llllIlllll = Vector2.new(_llIlllllII.X/0x2, _llIlllllII.Y/0x2) local _llIIIlIIlI = (_IIlllllIlI - _llllIlllll).Magnitude if _llIIIlIIlI < _IlIIIIIlII.radioFov then return true else return false end
 end
 end
 end
 end
 local function _lIlIIIIIIl() if not _llllllIlll then _llllllIlll = Drawing.new("\067\105\114\099\108\101") _llllllIlll.Color = Color3.fromRGB(0xFF, 0x0, 0x0) _llllllIlll.Thickness = 0x2 _llllllIlll.Radius = _IlIIIIIlII.radioFov _llllllIlll.Filled = false _llllllIlll.Position = Vector2.new(_llIlllllII.X/0x2, _llIlllllII.Y/0x2) _llllllIlll.Visible = true end
 end
 local function _llIllIllII() if _llllllIlll then _llllllIlll:Remove() _llllllIlll = nil end
 end
 local function _lIIIIlIlII(jugador) local _lIIlIIllIl = nil local _llIIlIlIII = nil if jugador.Team then _lIIlIIllIl = jugador.Team elseif jugador.TeamColor then _lIIlIIllIl = jugador.TeamColor else _lIIlIIllIl = "\066\108\097\099\107" end
 if _IIIIlIlllI.Team then _llIIlIlIII = _IIIIlIlllI.Team elseif _IIIIlIlllI.TeamColor then _llIIlIlIII = _IIIIlIlllI.TeamColor else _llIIlIlIII = "\066\108\097\099\107" end
 return _lIIlIIllIl ~= _llIIlIlIII end
 local _llIlllIllI = _G.teamDataDuelist local function _IllllIllII(jugador) if rawget(_llIlllIllI, "\105\110\077\097\116\099\104") then local _lIIlIlIIlI = rawget(_llIlllIllI, "\116\101\097\109\115") local _lIIllIIIll = rawget(_lIIlIlIIlI, "\084\101\097\109\049") local _IIIlIlIIlI = rawget(_lIIlIlIIlI, "\084\101\097\109\050") local _lIlIlIllll if table.find(_lIIllIIIll, _IIIIlIlllI.UserId) then _lIlIlIllll = _lIIllIIIll elseif table.find(_IIIlIlIIlI, _IIIIlIlllI.UserId) then _lIlIlIllll = _IIIlIlIIlI else _lIlIlIllll = nil end
 if _lIlIlIllll then if table.find(_lIlIlIllll, jugador.UserId) then return true else return false end
 end
 end
 end
 local function _lIIIIIIIlI() local _lllIIlIIll = nil local _IIIIllIlIl = math.huge for _, jugador in pairs(_IIlIIlIllI:GetPlayers()) do if jugador.Character and jugador ~= _IIIIlIlllI then local _IIlIIllllI = jugador.Character local _lIllIlllll = 0x0 local _IIIllIlIIl = _llIlllllIl(jugador) if _IIlIIllllI:FindFirstChild("\072\117\109\097\110\111\105\100") then _lIllIlllll = _IIlIIllllI.Humanoid.Health end
 if _IIlIIllllI:FindFirstChild(_IlIIIIIlII.modoAimbotActual) then local _lIIIIIllIl = _IIlIIllllI:FindFirstChild(_IlIIIIIlII.modoAimbotActual) if _lllIIIIIlI:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _llIIIlIIlI = (_lllIIIIIlI.HumanoidRootPart.Position - _lIIIIIllIl.Position).Magnitude if _IlIIIIIlII.teamCheck then if _IIIlllllII ~= _IlIlIIIIIl then if _IlIIIIIlII.wallCheckActivado then if _llIIIlIIlI < _IIIIllIlIl and _lIllIlIIII(_lIIIIIllIl) and _lIllIlllll > 0x0 and _IIIllIlIIl and _lIIIIlIlII(jugador) then _IIIIllIlIl = _llIIIlIIlI _lllIIlIIll = _lIIIIIllIl end
 else if _llIIIlIIlI < _IIIIllIlIl and _lIllIlllll > 0x0 and _IIIllIlIIl and _lIIIIlIlII(jugador) then _IIIIllIlIl = _llIIIlIIlI _lllIIlIIll = _lIIIIIllIl end
 end
 else if _IlIIIIIlII.wallCheckActivado then if _llIIIlIIlI < _IIIIllIlIl and _lIllIlIIII(_lIIIIIllIl) and _lIllIlllll > 0x0 and _IIIllIlIIl and not _IllllIllII(jugador) then _IIIIllIlIl = _llIIIlIIlI _lllIIlIIll = _lIIIIIllIl end
 else if _llIIIlIIlI < _IIIIllIlIl and _lIllIlllll > 0x0 and _IIIllIlIIl and not _IllllIllII(jugador) then _IIIIllIlIl = _llIIIlIIlI _lllIIlIIll = _lIIIIIllIl end
 end
 end
 else if _IlIIIIIlII.wallCheckActivado then if _llIIIlIIlI < _IIIIllIlIl and _lIllIlIIII(_lIIIIIllIl) and _lIllIlllll > 0x0 and _IIIllIlIIl then _IIIIllIlIl = _llIIIlIIlI _lllIIlIIll = _lIIIIIllIl end
 else if _llIIIlIIlI < _IIIIllIlIl and _lIllIlllll > 0x0 and _IIIllIlIIl then _IIIIllIlIl = _llIIIlIIlI _lllIIlIIll = _lIIIIIllIl end
 end
 end
 end
 end
 end
 end
 if _lllIIlIIll then return _lllIIlIIll else return false end
 end
 local function _llIIlIIIIl() local _lllIIlIIll = nil local _IIIIllIlIl = math.huge for _, jugador in pairs(_IIlIIlIllI:GetPlayers()) do if jugador.Character and jugador ~= _IIIIlIlllI then local _IIlIIllllI = jugador.Character local _lIllIlllll = 0x0 local _IIIllIlIIl = _llIlllllIl(jugador) if _IIlIIllllI:FindFirstChild("\072\117\109\097\110\111\105\100") then _lIllIlllll = _IIlIIllllI.Humanoid.Health end
 if _IIlIIllllI:FindFirstChild("\072\101\097\100") then local _IIIIlIIIlI = _IIlIIllllI.Head if _lllIIIIIlI:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _llIIIlIIlI = (_lllIIIIIlI.HumanoidRootPart.Position - _IIIIlIIIlI.Position).Magnitude if _llIIIlIIlI < _IIIIllIlIl and _lIllIlIIII(_IIIIlIIIlI) and _lIllIlllll > 0x0 and not _IllllIllII(jugador) then _IIIIllIlIl = _llIIIlIIlI _lllIIlIIll = _IIIIlIIIlI end
 end
 end
 end
 end
 if _lllIIlIIll then return _lllIIlIIll.Position else return false end
 end
 local function _IIIlIlIlII(jugador) if not _lIIIIIIlII[jugador] and jugador ~= _IIIIlIlllI then local _lIIlIlllll = Drawing.new("\076\105\110\101") _lIIlIlllll.Thickness = 0x2 _lIIlIlllll.Color = Color3.fromRGB(0xFF, 0x0, 0x0) _lIIlIlllll.Visible = false _lIIIIIIlII[jugador] = _lIIlIlllll end
 end
 local function _IlIlIIllll(jugador) if _lIIIIIIlII[jugador] then _lIIIIIIlII[jugador]:Remove() _lIIIIIIlII[jugador] = nil end
 end
 local function _IlllllIIIl(jugador) if not _llllIlIllI[jugador] and jugador ~= _IIIIlIlllI then local _llIllIIllI = Instance.new("\070\114\097\109\101") _llIllIIllI.Parent = _IlIIlllIIl _llIllIIllI.BackgroundTransparency = 0x1 _llIllIIllI.AnchorPoint = Vector2.new(0.5, 0.5) _IlIIIlIIlI(_llIllIIllI, 0x2, 0xFF, 0x0, 0x0) _llIllIIllI.Visible = false _llllIlIllI[jugador] = _llIllIIllI end
 end
 local function _IIIIlIllII(jugador) if _llllIlIllI[jugador] then _llllIlIllI[jugador]:Destroy() _llllIlIllI[jugador] = nil end
 end
 local function _lIIIIlIlIl(jugador) if not _IIlIllllII[jugador] and jugador ~= _IIIIlIlllI then local _lllIllIIIl = Instance.new("\070\114\097\109\101") _lllIllIIIl.Parent = _IlIIlllIIl _lllIllIIIl.BackgroundColor3 = Color3.fromRGB(0x0, 0xFF, 0x0) _lllIllIIIl.AnchorPoint = Vector2.new(0.5, 0.5) _IlIIIlIIlI(_lllIllIIIl, 0x1, 0x0, 0x0, 0x0) _IIlIllllII[jugador] = _lllIllIIIl end
 end
 local function _IIlllIIIlI(jugador) if _IIlIllllII[jugador] then _IIlIllllII[jugador]:Destroy() _IIlIllllII[jugador] = nil end
 end
 local function _IllIlIIIIl(jugador) if jugador.Character then local _IIlIIllllI = jugador.Character if _IIlIIllllI:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _IlllllIllI = _IIlIIllllI.HumanoidRootPart if not _IIllIlllll then _IIllIlllll = Instance.new("\066\111\100\121\086\101\108\111\099\105\116\121") _IIllIlllll.Parent = _IlllllIllI end
 if not _IlIIIlllIl then _IlIIIlllIl = Instance.new("\066\111\100\121\071\121\114\111") _IlIIIlllIl.Parent = _IlllllIllI end
 _IIllIlllll.MaxForce = Vector3.new(1e9, 1e9, 1e9) _IlIIIlllIl.MaxTorque = Vector3.new(1e9, 1e9, 1e9) _IlIIIlllIl.P = 0x2710 _IlIIIlllIl.CFrame = _IIlIllllII.CFrame local _llIlIllIll = _lIIIIIllll:GetMoveVector() local _IlIIlIIIll = _IIlIllllII.CFrame.LookVector local _IllIIllllI = _IIlIllllII.CFrame.RightVector local _lllIIlllll = (_IlIIlIIIll * -_llIlIllIll.Z) + (_IllIIllllI * _llIlIllIll.X) if _lllIIlllll.Magnitude > 0x0 then _IIllIlllll.Velocity = _lllIIlllll.Unit * 0x64 else _IIllIlllll.Velocity = Vector3.zero end
 end
 end
 end
 local function _llIIIIllIl(_lllIIIIIlI) if _lllIIIIIlI ~= _IIIIlIlllI.Character and _lllIIIIIlI then local _llIlIIIlII = _lllIIIIIlI if _llIlIIIlII:FindFirstChild(_IlIIIIIlII.modoHitboxExpandActual) then local _lIIIIIllIl = _llIlIIIlII:FindFirstChild(_IlIIIIIlII.modoHitboxExpandActual) _lIIIIIllIl.Size = Vector3.new(_IlIIIIIlII.grandeDeLaHitBox, _IlIIIIIlII.grandeDeLaHitBox, _IlIIIIIlII.grandeDeLaHitBox) _lIIIIIllIl.Transparency = 0x0 _lIIIIIllIl.Color = Color3.fromRGB(0xFF, 0x0, 0x0) _lIIIIIllIl.Material = Enum.Material.Neon _lIIIIIllIl.CanCollide = false end
 end
 end
 local function _IlIIIllllI(_lllIIIIIlI) if _lllIIIIIlI ~= _IIIIlIlllI.Character and _lllIIIIIlI then local _llIlIIIlII = _lllIIIIIlI if _llIlIIIlII:FindFirstChild(_IlIIIIIlII.modoHitboxExpandActual) then local _lIIIIIllIl = _llIlIIIlII:FindFirstChild(_IlIIIIIlII.modoHitboxExpandActual) if _IlIIIIIlII.modoHitboxExpandActual == "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116" then _lIIIIIllIl.Size = Vector3.new(0x2, 0x2, 0x1) _lIIIIIllIl.Transparency = 0x1 _lIIIIIllIl.CanCollide = true else _lIIIIIllIl.Size = Vector3.new(1.1961, 1.2029, 1.2002) _lIIIIIllIl.Transparency = 0x0 end
 end
 end
 end
 local function _IllIIIlIlI() local _llIlIlllIl = workspace:FindFirstChild("\084\097\114\103\101\116\083\104\111\111\116", true) if _llIlIlllIl then local _lIIIIlIlIl = _lIllIlIIII(_llIlIlllIl) local _IlllIIlIlI = _llIlIlllIl.Position local _lIIlIlIIll = 0x0 if _IIIIlIlllI.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then _lIIlIlIIll = (_IIIIlIlllI.Character.HumanoidRootPart.Position - _IlllIIlIlI).Magnitude end
 if _lIIlIlIIll < 0x3E8 and _lIIIIlIlIl then _IIlIllllII.CFrame = CFrame.new(_IIlIllllII.CFrame.Position, _IlllIIlIlI) end
 end
 end
 local function _lIllllIIlI() if _IlIlIIlIII then return end
 _IlIlIIlIII = true local _lIIIllllII for _, v in pairs(getgc(true)) do if typeof(v) == "\102\117\110\099\116\105\111\110" then local _llIlllllII = debug.getinfo(v) if _llIlllllII.name == "\070\105\114\101\066\105\110\100" and _llIlllllII.source:find("\067\108\105\101\110\116\083\099\114\105\112\116\115\046\067\108\105\101\110\116\046\066\105\110\100\115") then _lIIIllllII = v break end
 end
 end
 _lIIIllllII(_G, "\083\104\111\111\116", true, false) task.wait(0.3) _lIIIllllII(_G, "\083\104\111\111\116", false, false) _IlIlIIlIII = false end
 local _llIllIlIIl local _llIlIIllll local _llIlIIlllI _lllIIlIlIl.RenderStepped:Connect( function () if _IlIIIIIlII.silentAimActived then _llIllIlIIl = _lIIIIIIIlI() if _llIllIlIIl then _llIlIIllll, _llIlIIlllI = _IIlIllllII:WorldToViewportPoint(_llIllIlIIl.Position) else _llIlIIllll = nil _llIlIIlllI = false end
 else _llIllIlIIl = nil _llIlIIllll = nil _llIlIIlllI = false end
 end
 ) local function _IIlIIIIllI() local _IlIlIIlIII = tonumber(_IlIIIIIlII.modoSilentActual:match("\037\100\043")) if _IlIlIIlIII >= 0x64 then return true end
 return math.random(0x1,0x64) <= _IlIlIIlIII end
 local _IlIIlllIlI _IlIIlllIlI = hookmetamethod(game, "\095\095\105\110\100\101\120", newcclosure( function (self, key) if self == _IIlIllllII and key == "\086\105\101\119\112\111\114\116\083\105\122\101" and _IlIIIIIlII.silentAimActived and _llIlIIllll and _llIlIIlllI and _IIlIIIIllI() then return Vector2.new(_llIlIIllll.X*0x2, _llIlIIllll.Y*0x2) else return _IlIIlllIlI(self, key) end
 end
 )) _lllIIlIlIl.RenderStepped:Connect( function () if _IlIIIIIlII.aimbotEnable then local _llllIllIlI = _lIIIIIIIlI() if _llllIllIlI then local _llIIIlIIlI = (_IIIIlIlllI.Character.HumanoidRootPart.Position - _llllIllIlI.Position).Magnitude if _IIIlllllII ~= _IlIlIIIIIl then if _llIIIlIIlI < _lllIllllII then local _lIlIIllIlI = CFrame.new(_IIlIllllII.CFrame.Position, _llllIllIlI.Position) _IIlIllllII.CFrame = _IIlIllllII.CFrame:Lerp(_lIlIIllIlI, _IlIIIIIlII.fuerzaDeAimbot) end
 else if _llIIIlIIlI < _lllIllllII and rawget(_G.teamDataDuelist, "\105\110\077\097\116\099\104") then local _lIlIIllIlI = CFrame.new(_IIlIllllII.CFrame.Position, _llllIllIlI.Position) _IIlIllllII.CFrame = _IIlIllllII.CFrame:Lerp(_lIlIIllIlI, _IlIIIIIlII.fuerzaDeAimbot) end
 end
 end
 end
 if _IlIIIIIlII.espTracerEnable then for jugador, _lIIlIlllll in pairs(_lIIIIIIlII) do if jugador.Character then local _IIlIIllllI = jugador.Character if _IIlIIllllI:FindFirstChild("\072\101\097\100") then local _IIIIlIIIlI = _IIlIIllllI.Head local _lIIlIlIIll, enPantalla = _IIlIllllII:WorldToViewportPoint(_IIIIlIIIlI.Position) if enPantalla then local _lIIIIIlIll = Vector2.new(_IIlIllllII.ViewportSize.X/0x2, 0x0) local _IIlIlIIIIl = Vector2.new(_lIIlIlIIll.X, _lIIlIlIIll.Y) _lIIlIlllll.From = _lIIIIIlIll _lIIlIlllll.To = _IIlIlIIIIl _lIIlIlllll.Visible = true if _IIlIIllllI:FindFirstChild("\072\117\109\097\110\111\105\100") then local _lIllIlllll = _IIlIIllllI.Humanoid.Health if _lIllIlllll == 0x0 then _lIIlIlllll.Visible = false end
 end
 if _lIIlIIlIll(jugador) > _lllIllllII then _lIIlIlllll.Visible = false end
 else _lIIlIlllll.Visible = false end
 else _lIIlIlllll.Visible = false end
 else _lIIlIlllll.Visible = false end
 end
 end
 if _IlIIIIIlII.espBoxEnable then for jugador, _llIllIIllI in pairs(_llllIlIllI) do if jugador.Character then local _IIlIIllllI = jugador.Character if _IIlIIllllI:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _IlllllIllI = _IIlIIllllI.HumanoidRootPart local _IIlIllllIl, enPantalla = _IIlIllllII:WorldToScreenPoint(_IlllllIllI.Position) if enPantalla then local _IIIIIIllll = _IIlIllllII.ViewportSize.Y/_IIlIllllIl.Z local _lllIIIlllI = _IIIIIIllll*0x5 local _IllllllIll = _IIIIIIllll*0x3 _llIllIIllI.Size = UDim2.new(0x0, _IllllllIll, 0x0, _lllIIIlllI) _llIllIIllI.Position = UDim2.new(0x0, _IIlIllllIl.X, 0x0, _IIlIllllIl.Y) _llIllIIllI.Visible = true if _lIIlIIlIll(jugador) > _lllIllllII then _llIllIIllI.Visible = false end
 if _IIlIIllllI:FindFirstChild("\072\117\109\097\110\111\105\100") then local _lIllIlllll = _IIlIIllllI.Humanoid.Health if _lIllIlllll == 0x0 then _llIllIIllI.Visible = false end
 end
 else _llIllIIllI.Visible = false end
 else _llIllIIllI.Visible = false end
 else _llIllIIllI.Visible = false end
 end
 end
 if _IlIIIIIlII.espVidaEnable then for jugador, _lllIllIIIl in pairs(_IIlIllllII) do if jugador.Character then local _IIlIIllllI = jugador.Character if _IIlIIllllI:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _IlllllIllI = _IIlIIllllI.HumanoidRootPart local _IIlIllllIl, enPantalla = _IIlIllllII:WorldToScreenPoint(_IlllllIllI.Position) local _IIllIlIlIl local _IlIIIIllIl local _IlIIIIlllI = 0x1 if _IIlIIllllI:FindFirstChild("\072\117\109\097\110\111\105\100") then local _IlllllIIII = _IIlIIllllI.Humanoid _IlIIIIllIl = _IlllllIIII.Health _IIllIlIlIl = _IlllllIIII.MaxHealth _IlIIIIlllI = _IlIIIIllIl/_IIllIlIlIl end
 if enPantalla then local _IIIIIIllll = _IIlIllllII.ViewportSize.Y/_IIlIllllIl.Z local _llIIIlIIlI = (_IIIIIIllll * 0x3)/0x2 + 0x7 local _lllIIIlllI = (_IIIIIIllll * _IlIIIIlllI) * 0x5 local _IllllllIll = _IIIIIIllll _lllIllIIIl.Size = UDim2.new(0x0, _IllllllIll, 0x0, _lllIIIlllI) _lllIllIIIl.Position = UDim2.new(0x0, _IIlIllllIl.X + _llIIIlIIlI, 0x0, _IIlIllllIl.Y) if _IlIIIIlllI > 0x0 then _lllIllIIIl.Visible = true else _lllIllIIIl.Visible = false end
 if _lIIlIIlIll(jugador) > _lllIllllII then _lllIllIIIl.Visible = false end
 else _lllIllIIIl.Visible = false end
 else _lllIllIIIl.Visible = false end
 else _lllIllIIIl.Visible = false end
 end
 end
 if _IlIIIIIlII.showFovEnable then if _llllllIlll then if _llllllIlll.Radius ~= _IlIIIIIlII.radioFov then _llllllIlll.Radius = _IlIIIIIlII.radioFov end
 else _lIlIIIIIIl() end
 end
 if _IlIIIIIlII.superJumpActivado then if _IIIIlIlllI.Character then if _IIIIlIlllI.Character.Humanoid then _IIIIlIlllI.Character.Humanoid.JumpPower = _IlIIIIIlII.jumpPower _IIIIlIlllI.Character.Humanoid.JumpHeight = _IlIIIIIlII.jumpPower / 0x4 end
 end
 end
 if _IlIIIIIlII.superSpeedActivado then if _IIIIlIlllI.Character then if _IIIIlIlllI.Character.Humanoid then _IIIIlIlllI.Character.Humanoid.WalkSpeed = _IlIIIIIlII.velocitySpeed end
 end
 end
 if _IlIIIIIlII.noClipEnable then if _IIIIlIlllI.Character then local _lllIIIIIlI = _IIIIlIlllI.Character for _, v in pairs(_lllIIIIIlI:GetChildren()) do if v:IsA("\066\097\115\101\080\097\114\116") then v.CanCollide = false end
 end
 end
 end
 if _IlIIIIIlII.flyEnable then if _IIIIlIlllI.Character then if _IIIIlIlllI.Character.Humanoid then _IIIIlIlllI.Character.Humanoid.PlatformStand = true end
 end
 _IllIlIIIIl(_IIIIlIlllI) end
 if _IlIIIIIlII.GravityCeroActivado then if _IlIIIIIlII.GravityCeroActivado then workspace.Gravity = 0x32 end
 end
 if _IlIIIIIlII.expandHitboxEnable then for _, jugador in pairs(_IIlIIlIllI:GetPlayers()) do if jugador.Character then if jugador.Character:FindFirstChild("\072\117\109\097\110\111\105\100") then local _lIllIlllll = jugador.Character.Humanoid.Health if _lIllIlllll > 0x0 then _llIIIIllIl(jugador.Character) else _IlIIIllllI(jugador.Character) end
 end
 end
 end
 end
 if _IlIIIIIlII.aimExpDuelistEnable then _IllIIIlIlI() end
 if _IlIIIIIlII.autoShootEnable then local _llllIllIlI = _llIIlIIIIl() if _llllIllIlI then local _lIlIIllIlI = CFrame.new(_IIlIllllII.CFrame.Position, _llllIllIlI) _IIlIllllII.CFrame = _IIlIllllII.CFrame:Lerp(_lIlIIllIlI, _IlIIIIIlII.fuerzaDeAimbot) _lIllllIIlI() end
 end
 if _IlIIIIIlII.aimbotBodyEnable then for _, jugador in pairs(_IIlIIlIllI:GetPlayers()) do if jugador.Character then local _IIlIIllllI = jugador.Character if _IIlIIllllI:FindFirstChild("\072\101\097\100") and jugador ~= _IIIIlIlllI then local _IIIIlIIIlI = _IIlIIllllI.Head _IIIIlIIIlI.Size = Vector3.new(0x4, 0x5, 0x3) _IIIIlIIIlI.Transparency = 0x1 end
 end
 end
 end
 if _IlIIIIIlII.modoHitboxExpandActual == "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116" then for _, jugador in pairs(_IIlIIlIllI:GetPlayers()) do if jugador.Character and jugador ~= _IIIIlIlllI then local _llIlIIIlII = jugador.Character if _llIlIIIlII:FindFirstChild("\072\101\097\100") then local _IIIIlIIIlI = _llIlIIIlII.Head _IIIIlIIIlI.Size = Vector3.new(1.1961, 1.2029, 1.2002) _IIIIlIIIlI.Transparency = 0x0 end
 end
 end
 elseif _IlIIIIIlII.modoHitboxExpandActual == "\072\101\097\100" then for _, jugador in pairs(_IIlIIlIllI:GetPlayers()) do if jugador.Character and jugador ~= _IIIIlIlllI then local _llIlIIIlII = jugador.Character if _llIlIIIlII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _IlllllIllI = _llIlIIIlII.HumanoidRootPart _IlllllIllI.Size = Vector3.new(0x2, 0x2, 0x1) _IlllllIllI.Transparency = 0x1 end
 end
 end
 end
 _IlIIIlIlII.Position = UDim2.new(0x0, _IIIIIlIlII.AbsolutePosition.X + 0x19, 0x0, _IIIIIlIlII.AbsolutePosition.Y + 0x1E) if _G.textoAdvertenciaFirebase.Body ~= "\034\034" then _IlIIIlIlII.Visible = false _IIIIIlIlII.Visible = false task.wait(0x1) _IIIIlIlllI:Kick("\069\076\032\080\065\078\069\076\032\068\065\082\075\077\065\084\084\069\082\032\069\078\084\082\079\032\069\078\032\077\065\078\084\069\078\073\077\073\069\078\084\079") end
 end
 ) if _IIIlllllII ~= _IIIIIIIIll then _lIlIIlIlIl(_lllllllllI, "\065\105\109\098\111\116", "\067\079\077\066\065\084\069", function (valor) if valor then _IlIIIIIlII.aimbotEnable = true else _IlIIIIIlII.aimbotEnable = false end
 end
 ) _IllIIlIIII(_lllllllllI, _IlIIIIIlII.modoAimbotActual, "\067\079\077\066\065\084\069", function () if _IlIIIIIlII.modoAimbotActual == _IlIIIIIlII.modosAimbot[#_IlIIIIIlII.modosAimbot] then _IlIIIIIlII.modoAimbotActual = _IlIIIIIlII.modosAimbot[0x1] else _IlIIIIIlII.modoAimbotActual = _IlIIIIIlII.modosAimbot[table.find(_IlIIIIIlII.modosAimbot, _IlIIIIIlII.modoAimbotActual) + 0x1] end
 return _IlIIIIIlII.modoAimbotActual end
 ) end
 if _IIIlllllII ~= _IlIlIIIIIl and _IIIlllllII ~= _IIIIIIIIll then _lllIIIllIl(_lllllllllI, function () return string.format("\065\105\109\098\111\116\032\083\116\114\101\110\103\116\104\058\032\037\046\049\102", _IlIIIIIlII.fuerzaDeAimbot) end
 , 0x0, "\067\079\077\066\065\084\069", function (valor) _IlIIIIIlII.fuerzaDeAimbot = valor end
 ) end
 if _IIIlllllII ~= _lIIIIIllII then _lIlIIlIlIl(_lllllllllI, "\083\105\108\101\110\116\032\065\105\109", "\067\079\077\066\065\084\069", function (valor) _IlIIIIIlII.silentAimActived = valor end
 ) _IllIIlIIII(_lllllllllI, _IlIIIIIlII.modoSilentActual, "\067\079\077\066\065\084\069", function () if _IlIIIIIlII.modoSilentActual == _IlIIIIIlII.modosSilent[#_IlIIIIIlII.modosSilent] then _IlIIIIIlII.modoSilentActual = _IlIIIIIlII.modosSilent[0x1] else _IlIIIIIlII.modoSilentActual = _IlIIIIIlII.modosSilent[table.find(_IlIIIIIlII.modosSilent, _IlIIIIIlII.modoSilentActual) + 0x1] end
 return _IlIIIIIlII.modoSilentActual end
 ) end
 _lIlIIlIlIl(_lllllllllI, "\087\097\108\108\032\067\104\101\099\107", "\067\079\077\066\065\084\069", function (valor) _IlIIIIIlII.wallCheckActivado = valor end
 ) _lIlIIlIlIl(_lllllllllI, "\069\115\112\032\084\114\097\099\101\114", "\086\073\083\085\065\076\069\083", function (valor) if valor then for _, jugador in pairs(_IIlIIlIllI:GetPlayers()) do _IIIlIlIlII(jugador) end
 _lIlIlllllI = _IIlIIlIllI.PlayerAdded:Connect( function (jugador) _IIIlIlIlII(jugador) end
 ) _llllIIIIII = _IIlIIlIllI.PlayerRemoving:Connect( function (jugador) _IlIlIIllll(jugador) end
 ) _IlIIIIIlII.espTracerEnable = true else if _lIlIlllllI then _lIlIlllllI:Disconnect() _lIlIlllllI = nil end
 if _llllIIIIII then _llllIIIIII:Disconnect() _llllIIIIII = nil end
 _IlIIIIIlII.espTracerEnable = false for jugador in pairs(_lIIIIIIlII) do _IlIlIIllll(jugador) end
 end
 end
 ) _lIlIIlIlIl(_lllllllllI, "\069\115\112\032\066\111\120", "\086\073\083\085\065\076\069\083", function (valor) if valor then for _, jugador in pairs(_IIlIIlIllI:GetPlayers()) do _IlllllIIIl(jugador) end
 _lIIIIlIllI = _IIlIIlIllI.PlayerAdded:Connect( function (jugador) _IlllllIIIl(jugador) end
 ) _IIlIIllIII = _IIlIIlIllI.PlayerRemoving:Connect( function (jugador) _IIIIlIllII(jugador) end
 ) _IlIIIIIlII.espBoxEnable = true else if _lIIIIlIllI then _lIIIIlIllI:Disconnect() _lIIIIlIllI = nil end
 if _IIlIIllIII then _IIlIIllIII:Disconnect() _IIlIIllIII = nil end
 _IlIIIIIlII.espBoxEnable = false for jugador in pairs(_llllIlIllI) do _IIIIlIllII(jugador) end
 end
 end
 ) _lIlIIlIlIl(_lllllllllI, "\069\115\112\032\086\105\100\097", "\086\073\083\085\065\076\069\083", function (valor) if valor then for _, jugador in pairs(_IIlIIlIllI:GetPlayers()) do _lIIIIlIlIl(jugador) end
 _IIlIIlIllI.PlayerAdded:Connect( function (jugador) _lIIIIlIlIl(jugador) end
 ) _IIlIIlIllI.PlayerRemoving:Connect( function (jugador) _IIlllIIIlI(jugador) end
 ) _IlIIIIIlII.espVidaEnable = true else _IlIIIIIlII.espVidaEnable = false for jugador in pairs(_IIlIllllII) do _IIlllIIIlI(jugador) end
 end
 end
 ) _lIlIIlIlIl(_lllllllllI, "\083\104\111\119\032\070\111\118", "\086\073\083\085\065\076\069\083", function (valor) if valor then _IlIIIIIlII.showFovEnable = true else _IlIIIIIlII.showFovEnable = false _llIllIllII() end
 end
 ) _lllIIIllIl(_lllllllllI, function () return string.format("\070\079\086\032\115\105\122\101\058\032\037\100", _IlIIIIIlII.radioFov) end
 , 0x0, "\086\073\083\085\065\076\069\083", function (valor) _IlIIIIIlII.radioFov = valor * 0xC8 end
 ) if _IIIlllllII ~= _IIIIIIIIll then _lIlIIlIlIl(_lllllllllI, "\084\101\097\109\032\067\104\101\099\107", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) _IlIIIIIlII.teamCheck = valor end
 ) end
 if _IIIlllllII ~= _IIIIIIIIll then _lIlIIlIlIl(_lllllllllI, "\083\117\112\101\114\032\074\117\109\112", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _IlIIIIIlII.superJumpActivado = true else _IlIIIIIlII.superJumpActivado = false if _IIIIlIlllI.Character then if _IIIIlIlllI.Character.Humanoid then _IIIIlIlllI.Character.Humanoid.JumpPower = 0x32 _IIIIlIlllI.Character.Humanoid.JumpHeight = 7.2 end
 end
 end
 end
 ) end
 if _IIIlllllII ~= _IIIIIIIIll then _lllIIIllIl(_lllllllllI, function () return string.format("\074\117\109\112\032\080\111\119\101\114\058\032\037\100", _IlIIIIIlII.jumpPower) end
 , 0x0, "\077\079\086\073\077\073\069\078\084\079", function (valor) _IlIIIIIlII.jumpPower = valor * 0xC8 end
 ) end
 if _IIIlllllII ~= _IIIIIIIIll then _lIlIIlIlIl(_lllllllllI, "\083\117\112\101\114\032\083\112\101\101\100", "\077\079\086\073\077\073\069\078\084\079", function (valor) _IlIIIIIlII.superSpeedActivado = valor if valor then _IlIIIIIlII.superSpeedActivado = true else _IlIIIIIlII.superSpeedActivado = false if _IIIIlIlllI.Character then if _IIIIlIlllI.Character.Humanoid then _IIIIlIlllI.Character.Humanoid.WalkSpeed = 0x10 end
 end
 end
 end
 ) end
 if _IIIlllllII ~= _IIIIIIIIll then _lllIIIllIl(_lllllllllI, function () return string.format("\086\101\108\111\099\105\116\121\032\083\112\101\101\100\058\032\037\100", _IlIIIIIlII.velocitySpeed) end
 , 0x0, "\077\079\086\073\077\073\069\078\084\079", function (valor) _IlIIIIIlII.velocitySpeed = valor * 0x12C end
 ) end
 _lIlIIlIlIl(_lllllllllI, "\078\111\067\108\105\112", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _IlIIIIIlII.noClipEnable = true else _IlIIIIIlII.noClipEnable = false if _IIIIlIlllI.Character then local _lllIIIIIlI = _IIIIlIlllI.Character for _, v in pairs(_lllIIIIIlI:GetChildren()) do if v:IsA("\066\097\115\101\080\097\114\116") then v.CanCollide = true end
 end
 end
 end
 end
 ) if _IlIllIllII.Name == "\065\110\100\114\111\105\100" or _IlIllIllII.Name == "\073\079\083" then if _IIIlllllII ~= _lIIIIIllII then _lIlIIlIlIl(_lllllllllI, "\070\108\121", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _IlIIIIIlII.flyEnable = true else _IlIIIIIlII.flyEnable = false if _IIIIlIlllI.Character then if _IIIIlIlllI.Character.Humanoid then _IIIIlIlllI.Character.Humanoid.PlatformStand = false end
 end
 if _IIllIlllll then _IIllIlllll:Destroy() _IIllIlllll = nil end
 if _IlIIIlllIl then _IlIIIlllIl:Destroy() _IlIIIlllIl = nil end
 end
 end
 ) end
 end
 _lIlIIlIlIl(_lllllllllI, "\103\114\097\118\105\116\121\032\048", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _IlIIIIIlII.GravityCeroActivado = true else _IlIIIIIlII.GravityCeroActivado = false workspace.Gravity = 196.2 end
 end
 ) if _IIIlllllII ~= _IIIIIIIIll then _lIlIIlIlIl(_lllllllllI, "\069\120\112\097\110\100\032\072\105\116\098\111\120", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) if valor then _IlIIIIIlII.expandHitboxEnable = true else _IlIIIIIlII.expandHitboxEnable = false for _, jugador in pairs(_IIlIIlIllI:GetPlayers()) do _IlIIIllllI(jugador.Character) end
 end
 end
 ) end
 if _IIIlllllII ~= _IIIIIIIIll then _lllIIIllIl(_lllllllllI, function () return string.format("\072\105\116\032\066\111\120\032\083\105\122\101\058\032\037\100", _IlIIIIIlII.grandeDeLaHitBox) end
 , 0x0, "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) _IlIIIIIlII.grandeDeLaHitBox = valor * 0x64 end
 ) _IllIIlIIII(_lllllllllI, _IlIIIIIlII.modoHitboxExpandActual, "\069\078\069\077\089\032\067\079\078\070\073\071", function () if _IlIIIIIlII.modoHitboxExpandActual == _IlIIIIIlII.modosHitboxExpand[#_IlIIIIIlII.modosHitboxExpand] then _IlIIIIIlII.modoHitboxExpandActual = _IlIIIIIlII.modosHitboxExpand[0x1] else _IlIIIIIlII.modoHitboxExpandActual = _IlIIIIIlII.modosHitboxExpand[table.find(_IlIIIIIlII.modosHitboxExpand, _IlIIIIIlII.modoHitboxExpandActual) + 0x1] end
 return _IlIIIIIlII.modoHitboxExpandActual end
 ) end
 if _IIIlllllII == _IlIlIIIIIl then _lIlIIlIlIl(_lllllllllI, "\065\105\109\032\069\120\112\032\040\068\117\101\108\105\115\116\041", "\067\079\077\066\065\084\069", function (valor) if valor then _IlIIIIIlII.aimExpDuelistEnable = true else _IlIIIIIlII.aimExpDuelistEnable = false end
 end
 ) end
 if _IIIlllllII == _IlIlIIIIIl and (_IlIllIllII == Enum.Platform.IOS or _IlIllIllII == Enum.Platform.Android) then _lIlIIlIlIl(_lllllllllI, "\065\117\116\111\032\083\104\111\111\116", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) if valor then _IlIIIIIlII.autoShootEnable = true else _IlIIIIIlII.autoShootEnable = false end
 end
 ) end
 if _IIIlllllII ~= _IIIIIIIIll then _lIlIIlIlIl(_lllllllllI, "\065\105\109\098\111\116\032\066\111\100\121", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) if valor then _IlIIIIIlII.aimbotBodyEnable = true else _IlIIIIIlII.aimbotBodyEnable = false for _, jugador in pairs(_IIlIIlIllI:GetPlayers()) do if jugador.Character:FindFirstChild("\072\101\097\100") and jugador ~= _IIIIlIlllI then local _IIIIlIIIlI = jugador.Character.Head _IIIIlIIIlI.Size = Vector3.new(1.1961, 1.2029, 1.2002) _IIIIlIIIlI.Transparency = 0x0 end
 end
 end
 end
 ) end
 if _IIIlllllII == _IIIIIIIIll then _lIlIIlIlIl(_lllllllllI, "\078\111\032\082\101\099\111\105\108", "\067\079\077\066\065\084\069", function (valor) if valor then for name, dato in pairs(_IllIllIlIl) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootRecoil then dato.ShootRecoil = 0x0 end
 if dato.ShootSpread then dato.ShootSpread = 0x0 end
 end
 end
 else for name, dato in pairs(_IllIllIlIl) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootRecoil then dato.ShootRecoil = _lIIIIllIll[name].ShootRecoil end
 if dato.ShootSpread then dato.ShootSpread = _lIIIIllIll[name].ShootSpread end
 end
 end
 end
 end
 ) end
 if _IIIlllllII == _IIIIIIIIll then _lIlIIlIlIl(_lllllllllI, "\082\097\112\105\100\032\070\105\114\101", "\067\079\077\066\065\084\069", function (valor) if valor then for name, dato in pairs(_IllIllIlIl) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootCooldown then dato.ShootCooldown = 0x0 end
 end
 end
 else for name, dato in pairs(_IllIllIlIl) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootCooldown then dato.ShootCooldown = _lIIIIllIll[name].ShootCooldown end
 end
 end
 end
 end
 ) end
 _lIlIIlIlIl(_lllllllllI, "\066\121\112\097\115\115\032\080\114\111\116\111\099\111\108", "\066\089\080\065\083\083", function () return end
 ) _lIlIIlIlIl(_lllllllllI, "\083\121\115\116\101\109\032\069\120\112\108\111\105\116\115", "\066\089\080\065\083\083", function () return end
 ) _lIlIIlIlIl(_lllllllllI, "\083\105\108\101\110\116\032\073\110\106\101\099\116\105\111\110", "\066\089\080\065\083\083", function () return end
 ) _lIlIIlIlIl(_lllllllllI, "\082\111\111\116\032\065\099\099\101\115\115", "\066\089\080\065\083\083", function () return end
 ) _llllllIlll(_lIIllIllII, "\067\111\109\098\097\116\032\55356\57263", function () _IIIllIlIll = "\067\079\077\066\065\084\069" end
 ) _llllllIlll(_lIIllIllII, "\077\111\118\101\109\101\110\116\032\55356\57283", function () _IIIllIlIll = "\077\079\086\073\077\073\069\078\084\079" end
 ) _llllllIlll(_lIIllIllII, "\086\105\115\117\097\108\115\032\55357\56385\65039", function () _IIIllIlIll = "\086\073\083\085\065\076\069\083" end
 ) if _IIIlllllII ~= _IIIIIIIIll then _llllllIlll(_lIIllIllII, "\069\110\101\109\121\032\067\111\110\102\105\103\032\55357\56420", function () _IIIllIlIll = "\069\078\069\077\089\032\067\079\078\070\073\071" end
 ) end
 _llllllIlll(_lIIllIllII, "\066\121\032\080\097\115\115\032\55357\56594", function () _IIIllIlIll = "\066\089\080\065\083\083" end
 ) _lIIIIllIlI:SetCore("\083\101\110\100\078\111\116\105\102\105\099\097\116\105\111\110", { Title = "\068\065\082\075\077\065\084\084\069\082\032\080\065\078\069\076", Text = "\073\078\073\067\073\065\068\079\032\067\079\078\032\069\088\073\084\079", Icon = _lIIlIlllIl, Duration = 0x5 }) local _lIllIIIlll = game:GetService("\076\105\103\104\116\105\110\103") local function _lIllIllllI(objeto) if objeto:IsA("\084\101\120\116\117\114\101") or objeto:IsA("\068\101\099\097\108") or objeto:IsA("\066\097\115\101\080\097\114\116") or objeto:IsA("\080\097\114\116\105\099\108\101\069\109\105\116\116\101\114") or objeto:IsA("\083\109\111\107\101") or objeto:IsA("\070\105\114\101") or objeto:IsA("\083\112\097\114\107\108\101\115") or objeto:IsA("\080\111\105\110\116\076\105\103\104\116") or objeto:IsA("\083\112\111\116\076\105\103\104\116") or objeto:IsA("\083\117\114\102\097\099\101\076\105\103\104\116") or objeto:IsA("\066\101\097\109") or objeto:IsA("\084\114\097\105\108") then if not objeto:IsA("\066\097\115\101\080\097\114\116") and not objeto:IsA("\080\097\114\116\105\099\108\101\069\109\105\116\116\101\114") then objeto:Destroy() end
 if objeto:IsA("\066\097\115\101\080\097\114\116") then objeto.Material = Enum.Material.SmoothPlastic objeto.Reflectance = 0x0 end
 if objeto:IsA("\083\109\111\107\101") or objeto:IsA("\070\105\114\101") or objeto:IsA("\083\112\097\114\107\108\101\115") or objeto:IsA("\080\111\105\110\116\076\105\103\104\116") or objeto:IsA("\083\112\111\116\076\105\103\104\116") or objeto:IsA("\083\117\114\102\097\099\101\076\105\103\104\116") or objeto:IsA("\066\101\097\109") or objeto:IsA("\084\114\097\105\108") then objeto.Enabled = false end
 end
 end
 for _, objeto in pairs(game:GetDescendants()) do _lIllIllllI(objeto) end
 game.DescendantAdded:Connect( function (objeto) _lIllIllllI(objeto) end
 ) _lIllIIIlll.GlobalShadows = false _lIllIIIlll.Brightness = 0x1 _lIllIIIlll.FogEnd = 0x3B9ACA00 _lIllIIIlll.EnvironmentDiffuseScale = 0x0 _lIllIIIlll.EnvironmentSpecularScale = 0x0 for _, efecto in ipairs(_lIllIIIlll:GetChildren()) do if efecto:IsA("\066\108\111\111\109\069\102\102\101\099\116") or efecto:IsA("\066\108\117\114\069\102\102\101\099\116") or efecto:IsA("\067\111\108\111\114\067\111\114\114\101\099\116\105\111\110\069\102\102\101\099\116") or efecto:IsA("\083\117\110\082\097\121\115\069\102\101\099\116") or efecto:IsA("\068\101\112\116\104\079\102\070\105\101\108\100\069\102\102\101\099\116") or efecto:IsA("\065\116\109\111\115\112\104\101\114\101") then efecto:Destroy() end
 end
 end
 end
 )(...)
