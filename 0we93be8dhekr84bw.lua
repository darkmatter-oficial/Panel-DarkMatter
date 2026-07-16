--[[ Protected by Lua Guard ]]

( function (...) if _G.keyValida and _G.textoAdvertenciaFirebase.Body == "\034\034" then local _IIIIlIIllI = 2.0 local _IlIIIlllll = game:GetService("\080\108\097\121\101\114\115") local _llIIlIIIlI = _IlIIIlllll.LocalPlayer local _lIlIllIIII = _llIIlIIIlI:WaitForChild("\080\108\097\121\101\114\071\117\105") local _IIIlIIIlll = Instance.new("\083\099\114\101\101\110\071\117\105") _IIIlIIIlll.Parent = _lIlIllIIII local _llllllllIl = game:GetService("\082\117\110\083\101\114\118\105\099\101") local _IlIIIIIIlI = game:GetService("\084\119\101\101\110\083\101\114\118\105\099\101") local _lIIlIIllIl = _llIIlIIIlI.Character or _llIIlIIIlI.CharacterAdded:Wait() local _IllIlllIII = game:GetService("\083\116\097\114\116\101\114\071\117\105") _IIIlIIIlll.DisplayOrder = 0xF423F _IIIlIIIlll.ZIndexBehavior = Enum.ZIndexBehavior.Global local _IlIIlIIIIl = workspace.CurrentCamera local _lIIIlIIIll = _IlIIlIIIIl.ViewportSize local _llllIIllll = RaycastParams.new() _llllIIllll.FilterType = Enum.RaycastFilterType.Exclude _llllIIllll.FilterDescendantsInstances = {_lIIlIIllIl} local _IlIIIIIlII = game:GetService("\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101") local _IIllIIlIlI = tostring(game.PlaceId) print(_IIllIIlIlI) local _IlIIllIllI = _IlIIIIIlII:GetPlatform() local _lIlIIIllIl = game:GetService("\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101") local _IIlIIIIIII = _llIIlIIIlI:WaitForChild("\080\108\097\121\101\114\083\099\114\105\112\116\115") local _llIlIlIIlI local _IlIIlIlllI local _llllIlllII = "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\048\051\049\057\057\056\051\057\054\052\050\048\050\056" local _lIIllIlIlI = "\049\055\054\050\053\051\053\057\057\054\050" local _lllIlIlIll = "\049\050\050\051\049\048\050\055\048\056\054\055\049\051\051" local _IllllIllII = "\057\048\049\056\052\050\056\055\053\056\048\049\055\052" local _IIllIIIlII = "\050\056\054\048\057\048\052\050\057" if _IlIIllIllI.Name == "\065\110\100\114\111\105\100" or _IlIIllIllI.Name == "\073\079\083" then if _IIllIIlIlI ~= _IIllIIIlII then _llIlIlIIlI = require(_IIlIIIIIII:WaitForChild("\080\108\097\121\101\114\077\111\100\117\108\101")) _IlIIlIlllI = _llIlIlIIlI:GetControls() end
 end
 if _IIllIIlIlI == _IllllIllII then _llIIlIIIlI:Kick("\069\120\112\101\114\105\101\110\099\105\097\032\080\069\076\073\071\082\079\083\065\032\100\101\116\101\099\116\097\100\097\044\032\108\111\032\109\101\106\111\114\032\101\115\032\078\079\032\117\115\097\114\032\101\108\032\112\097\110\101\108\032\068\097\114\107\077\097\116\116\101\114\032\101\110\032\101\115\116\097\032\101\120\112\101\114\105\101\110\099\105\097\032\112\097\114\097\032\101\118\105\116\097\114\032\066\065\078\069\079\083") end
 local _IllIIIIIII if _IIllIIlIlI == _lIIllIlIlI then _IllIIIIIII = require(_lIlIIIllIl.Modules.ItemLibrary).Items end
 local _IIlIIlIIII local _lIlIIIIlIl local _IlIllllIIl local _lllIIlIlII local _llllIIIlII local _IllIIIlIll local _IIlllllIII local _IlIllIIlll local _lllIllIlIl local _IlllIllIll = true local _IlIllIllIl = "\067\079\077\066\065\084\069" local _llIIlIlllI local _llIIIlIIll local _IIIlIIlIII local _lIlIIIIIlI local _lIIllllIlI local _lIIIlIlIII local _lIIIllllII local _llllIIIIIl local _IIlIIlllII = 0xFA local _llIlIIIlII = false local _lIlllllIll = 0xF423F local _llIIIlIllI local _IlIIIlllII = 0x0 local _lIlIIIllll = {} local _IllIllllII = {} local _llIlllIIII = {} local _IlIllllllI = { aimbotEnable = false, espTracerEnable = false, espBoxEnable = false, espVidaEnable = false, showFovEnable = false, wallCheckActivado = false, radioFov = 0x5A, fuerzaDeAimbot = 0.0, teamCheck = false, superJumpActivado = false, superSpeedActivado = false, GravityCeroActivado = false, grandeDeLaHitBox = 0x32, expandHitboxEnable = false, velocitySpeed = 0x32, jumpPower = 0x64, aimExpDuelistEnable = false, autoShootEnable = false, silentAimActived = false, aimbotBodyEnable = false, modosSilent = { "\049\048\048\037", "\055\048\037", "\053\048\037", "\051\048\037", "\050\048\037", "\053\037" }, modoSilentActual = "\049\048\048\037", modosHitboxExpand = { "\072\101\097\100", "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116" }, modoHitboxExpandActual = "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116", modosAimbot = { "\072\101\097\100", "\085\112\112\101\114\084\111\114\115\111" }, modoAimbotActual = "\072\101\097\100" } if _IIllIIlIlI == _lllIlIlIll or _IIllIIlIlI == _lIIllIlIlI then _IlIllllllI.fuerzaDeAimbot = 0x1 end
 _llIIlIIIlI.CharacterAdded:Connect( function (char) _lIIlIIllIl = char _llllIIllll.FilterDescendantsInstances = {_lIIlIIllIl} if _lIIIlIlIII then _lIIIlIlIII:Destroy() _lIIIlIlIII = nil end
 if _lIIIllllII then _lIIIllllII:Destroy() _lIIIllllII = nil end
 end
 ) _IIIlIIIlll.ResetOnSpawn = false if _IIllIIlIlI == _lIIllIlIlI then local function _llllIIllll(tabla) local _lIlllIIIll = {} for clave, valor in pairs(tabla) do if typeof(valor) == "\116\097\098\108\101" then _lIlllIIIll[clave] = _llllIIllll(valor) else _lIlllIIIll[clave] = valor end
 end
 return _lIlllIIIll end
 _llIIIlIllI = _llllIIllll(_IllIIIIIII) end
 local function _lIlIIIIIII(globalPosition, posX, posY, grosorX, grosorY, color1, color2, color3) local _llIlIIlIII = Instance.new("\070\114\097\109\101") _llIlIIlIII.Parent = globalPosition _llIlIIlIII.BackgroundColor3 = Color3.fromRGB(color1, color2, color3) _llIlIIlIII.Size = UDim2.new(0x0, grosorX, 0x0, grosorY) _llIlIIlIII.Position = UDim2.new(0x0, posX, 0x0, posY) _llIlIIlIII.BorderSizePixel = 0x0 _llIlIIlIII.ZIndex = _lIlllllIll + 0x1 end
 local function _IIIIIllllI(textGlobalPosition, text, posX, posY, size, fuente, color1, color2, color3) local _IlIllIIlll = Instance.new("\084\101\120\116\076\097\098\101\108") _IlIllIIlll.Parent = textGlobalPosition _IlIllIIlll.TextColor3 = Color3.fromRGB(color1, color2, color3) _IlIllIIlll.TextSize = size _IlIllIIlll.Size = UDim2.new(0x0, 0x1, 0x0, 0x1) _IlIllIIlll.Text = text _IlIllIIlll.Font = fuente _IlIllIIlll.Position = UDim2.new(0x0, posX, 0x0, posY) _IlIllIIlll.BackgroundTransparency = 0x1 _IlIllIIlll.ZIndex = _lIlllllIll end
 local function _IIIIIIlIIl(redondearObjeto, px, size) local _lIlIIIllll = Instance.new("\085\073\067\111\114\110\101\114") _lIlIIIllll.Parent = redondearObjeto _lIlIIIllll.CornerRadius = UDim.new(px, size) end
 local function _IllIIlIllI(bordeDeObjeto, thickness, color1, color2, color3) local _IllIIlIllI = Instance.new("\085\073\083\116\114\111\107\101") _IllIIlIllI.Parent = bordeDeObjeto _IllIIlIllI.ApplyStrokeMode = Enum.ApplyStrokeMode.Border _IllIIlIllI.Thickness = thickness _IllIIlIllI.Color = Color3.fromRGB(color1, color2, color3) end
 local function _IIIlllIIII(objetoParaLayout, _IIIlIIllll, paddingTop, paddingBottom, paddingLeft, paddingRight, fillDirection, verticalAlignment, horizontalAlignment) local _IIIlllIIII = Instance.new("\085\073\076\105\115\116\076\097\121\111\117\116") _IIIlllIIII.Parent = objetoParaLayout _IIIlllIIII.FillDirection = fillDirection _IIIlllIIII.VerticalAlignment = verticalAlignment _IIIlllIIII.HorizontalAlignment = horizontalAlignment _IIIlllIIII.Padding = UDim.new(0x0, _IIIlIIllll) _IIIlllIIII.SortOrder = Enum.SortOrder.LayoutOrder local _IIIlIIllll = Instance.new("\085\073\080\097\100\100\105\110\103") _IIIlIIllll.Parent = objetoParaLayout _IIIlIIllll.PaddingTop = UDim.new(0x0, paddingTop) _IIIlIIllll.PaddingBottom = UDim.new(0x0, paddingBottom) _IIIlIIllll.PaddingLeft = UDim.new(0x0, paddingLeft) _IIIlIIllll.PaddingRight = UDim.new(0x0, paddingRight) if objetoParaLayout:IsA("\083\099\114\111\108\108\105\110\103\070\114\097\109\101") then _IIIlllIIII:GetPropertyChangedSignal("\065\098\115\111\108\117\116\101\067\111\110\116\101\110\116\083\105\122\101"):Connect( function () objetoParaLayout.CanvasSize = UDim2.new(0x0, 0x0, 0x0, _IIIlllIIII.AbsoluteContentSize.Y + 0x1E) end
 ) end
 end
 local _lllllIIlIl = Instance.new("\070\114\097\109\101") _lllllIIlIl.Parent = _IIIlIIIlll _lllllIIlIl.Size = UDim2.new(0x0, 0x1C2, 0x0, 0x12C) _lllllIIlIl.AnchorPoint = Vector2.new(0x1, 0x0) _lllllIIlIl.Active = true _lllllIIlIl.BackgroundColor3 = Color3.fromRGB(0xD, 0x9, 0x17) _lllllIIlIl.BorderSizePixel = 0x0 _lllllIIlIl.ClipsDescendants = true _lllllIIlIl.ZIndex = _lIlllllIll _IIIIIIlIIl(_lllllIIlIl, 0x0, 0xA) _IllIIlIllI(_lllllIIlIl, 0x3, 0x0, 0x0, 0x0) _lIlIIIIIII(_lllllIIlIl, 0x0, 0x23, 0x1C2, 0x3, 0x0, 0x0, 0x0) _IIIIIllllI(_lllllIIlIl, string.format("\068\065\082\075\077\065\084\084\069\082\032\037\046\049\102\032\070\114\101\101", _IIIIlIIllI), 0xE1, 0x10, 0x23, Enum.Font.GothamBold, 0xAF, 0x7E, 0xF7) _IIIIIllllI(_lllllIIlIl, string.format("\080\076\065\084\070\079\082\077\058\032\037\115", _IlIIllIllI.Name), 0x56, 0x11C, 0xF, Enum.Font.GothamBold, 0xFF, 0xFF, 0xFF) _lIlIIIIIII(_lllllIIlIl, 0xAF, 0x23, 0x3, 0x109, 0x0, 0x0, 0x0) _lIlIIIIIII(_lllllIIlIl, 0x0, 0x109, 0xAF, 0x3, 0x0, 0x0, 0x0) local _lIlllllIll = Instance.new("\070\114\097\109\101") _lIlllllIll.Parent = _lllllIIlIl _lIlllllIll.Size = UDim2.new(0x0, 0x1C2, 0x0, 0x109) _lIlllllIll.Position = UDim2.new(0x0, 0x0, 0x0, 0x23) _lIlllllIll.BackgroundTransparency = 0x1 _lIlllllIll.ZIndex = _lIlllllIll local _lIIIllIIII = Instance.new("\083\099\114\111\108\108\105\110\103\070\114\097\109\101") _lIIIllIIII.Parent = _lIlllllIll _lIIIllIIII.BackgroundTransparency = 0x1 _lIIIllIIII.Size = UDim2.new(0x0, 0xAF, 0x0, 0xE6) _lIIIllIIII.ScrollBarThickness = 0x0 _lIIIllIIII.ZIndex = _lIlllllIll _IIIlllIIII(_lIIIllIIII, 0xA, 0x10, 0x0, 0x0, 0x0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Top, Enum.HorizontalAlignment.Center) local _IIlllIllll = Instance.new("\083\099\114\111\108\108\105\110\103\070\114\097\109\101") _IIlllIllll.Parent = _lIlllllIll _IIlllIllll.BackgroundTransparency = 0x1 _IIlllIllll.Size = UDim2.new(0x0, 0x113, 0x0, 0x109) _IIlllIllll.Position = UDim2.new(0x0, 0xAF, 0x0, 0x0) _IIlllIllll.ScrollBarThickness = 0x4 _IIlllIllll.ZIndex = _lIlllllIll _IIIlllIIII(_IIlllIllll, 0xA, 0xA, 0x0, 0x0, 0x0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Top, Enum.HorizontalAlignment.Center) local function _IIIlllllII(SwitchGlobalPosition, nombreDeLaOpcion, Section, callback) local _lIIIllIlll = false local _llIlIllIIl = Instance.new("\070\114\097\109\101") _llIlIllIIl.Parent = SwitchGlobalPosition _llIlIllIIl.Size = UDim2.new(0x0, 0xFF, 0x0, 0x28) _llIlIllIIl.BackgroundTransparency = 0x0 _llIlIllIIl.BackgroundColor3 = Color3.fromRGB(0x11, 0xB, 0x1D) _llIlIllIIl.ZIndex = _lIlllllIll _IlIIIlllII += 0x1 _llIlIllIIl.LayoutOrder = _IlIIIlllII _IIIIIIlIIl(_llIlIllIIl, 0x0, 0xA) _IllIIlIllI(_llIlIllIIl, 0x2, 0x2D, 0x1C, 0x46) _IIIlllIIII(_llIlIllIIl, 0xA, 0x0, 0x0, 0xA, 0xA, Enum.FillDirection.Horizontal, Enum.VerticalAlignment.Center, Enum.HorizontalAlignment.Left) _llllllllIl.RenderStepped:Connect( function () if _IlIllIllIl == Section then _llIlIllIIl.Visible = true else _llIlIllIIl.Visible = false end
 end
 ) local _IllIlIlIll = Instance.new("\084\101\120\116\076\097\098\101\108") _IllIlIlIll.Parent = _llIlIllIIl _IllIlIlIll.Size = UDim2.new(0x0, 0xAF, 0x0, 0x19) _IllIlIlIll.BackgroundTransparency = 0x1 _IllIlIlIll.TextSize = 0x14 _IllIlIlIll.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IllIlIlIll.Text = string.upper(nombreDeLaOpcion) _IllIlIlIll.TextXAlignment = Enum.TextXAlignment.Left _IllIlIlIll.Font = Enum.Font.GothamBold _IllIlIlIll.ZIndex = _lIlllllIll local _llIlIIIIIl = Instance.new("\070\114\097\109\101") _llIlIIIIIl.Parent = _llIlIllIIl _llIlIIIIIl.Size = UDim2.new(0x0, 0x32, 0x0, 0x19) _llIlIIIIIl.BackgroundColor3 = Color3.fromRGB(0x83, 0x1D, 0xE7) _llIlIIIIIl.ZIndex = _lIlllllIll _IIIIIIlIIl(_llIlIIIIIl, 0x1, 0x0) local _lIlIIlIIII = Instance.new("\070\114\097\109\101") _lIlIIlIIII.Parent = _llIlIIIIIl _lIlIIlIIII.BackgroundColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _lIlIIlIIII.Size = UDim2.new(0x0, 0x19, 0x0, 0x19) _lIlIIlIIII.Position = UDim2.new(0x0, 0x0, 0x0, 0x0) _lIlIIlIIII.ZIndex = _lIlllllIll _IIIIIIlIIl(_lIlIIlIIII, 0x1, 0x0) _llIlIIIIIl.InputBegan:Connect( function (input) if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then _lIIIllIlll = not _lIIIllIlll callback(_lIIIllIlll) if _lIIIllIlll then local _lllIIIIIIl = _IlIIIIIIlI:Create( _lIlIIlIIII, TweenInfo.new(0.2), { Position = UDim2.new(0x0, 0x19, 0x0, 0x0) } ) _lllIIIIIIl:Play() else local _llIIlllIII = _IlIIIIIIlI:Create( _lIlIIlIIII, TweenInfo.new(0.2), { Position = UDim2.new(0x0, 0x0, 0x0, 0x0) } ) _llIIlllIII:Play() end
 end
 end
 ) end
 local function _IIllIIlIIl(barGlobalPosition, nombreDeLaOpcion, enQueParteComienzaLaBarra, Section, callback) local _lllIlIlIlI = Instance.new("\070\114\097\109\101") _lllIlIlIlI.Parent = barGlobalPosition _lllIlIlIlI.Size = UDim2.new(0x0, 0xFF, 0x0, 0x50) _lllIlIlIlI.BackgroundTransparency = 0x0 _lllIlIlIlI.BackgroundColor3 = Color3.fromRGB(0x11, 0xB, 0x1D) _lllIlIlIlI.ZIndex = _lIlllllIll _IlIIIlllII += 0x1 _lllIlIlIlI.LayoutOrder = _IlIIIlllII _IIIlllIIII(_lllIlIlIlI, 0xA, 0xA, 0x0, 0x0, 0x0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Center, Enum.HorizontalAlignment.Center) _IIIIIIlIIl(_lllIlIlIlI, 0x0, 0xA) _IllIIlIllI(_lllIlIlIlI, 0x2, 0x2D, 0x1C, 0x46) _llllllllIl.RenderStepped:Connect( function () if _IlIllIllIl == Section then _lllIlIlIlI.Visible = true else _lllIlIlIlI.Visible = false end
 end
 ) local _IIlIIllIII = Instance.new("\070\114\097\109\101") _IIlIIllIII.Parent = _lllIlIlIlI _IIlIIllIII.Size = UDim2.new(0x0, 0xEB, 0x0, 0x14) _IIlIIllIII.BackgroundColor3 = Color3.fromRGB(0x1F, 0x14, 0x34) _IIlIIllIII.ZIndex = _lIlllllIll _IllIIlIllI(_IIlIIllIII, 0x2, 0x0, 0x0, 0x0) _IIIIIIlIIl(_IIlIIllIII, 0x1, 0x0) local _lIlIIIlIll = Instance.new("\070\114\097\109\101") _lIlIIIlIll.Parent = _IIlIIllIII _lIlIIIlIll.Position = UDim2.new(0x0, 0x0, 0x0, 0x0) _lIlIIIlIll.Size = UDim2.new(0x0, 0x14, 0x0, 0x14) _lIlIIIlIll.ZIndex = _lIlllllIll _lIlIIIlIll.BackgroundColor3 = Color3.fromRGB(0x83, 0x1D, 0xE7) _IIIIIIlIIl(_lIlIIIlIll, 0x1, 0x0) local _IIlIIlllll = Instance.new("\070\114\097\109\101") _IIlIIlllll.Parent = _IIlIIllIII _IIlIIlllll.BackgroundColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IIlIIlllll.Size = UDim2.new(0x0, 0x14, 0x0, 0x14) _IIlIIlllll.Position = UDim2.new(enQueParteComienzaLaBarra, 0x0, 0x0, 0x0) _IIlIIlllll.ZIndex = _lIlllllIll _IIIIIIlIIl(_IIlIIlllll, 0x1, 0x0) local _IllIlIlIll = Instance.new("\084\101\120\116\076\097\098\101\108") _IllIlIlIll.Parent = _lllIlIlIlI _IllIlIlIll.Text = nombreDeLaOpcion() _IllIlIlIll.TextSize = 0x14 _IllIlIlIll.Font = Enum.Font.GothamBold _IllIlIlIll.Size = UDim2.new(0x0, 0xEB, 0x0, 0x1E) _IllIlIlIll.BackgroundTransparency = 0x1 _IllIlIlIll.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IllIlIlIll.ZIndex = _lIlllllIll local _IlIlIIlllI = false _IIlIIlllll.InputBegan:Connect( function (input) if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then _IlIlIIlllI = true end
 end
 ) _IlIIIIIlII.InputChanged:Connect( function (input) if _IlIlIIlllI and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then local _IlIIIIIlII = input.Position.X - _IIlIIllIII.AbsolutePosition.X _IlIIIIIlII = math.clamp(_IlIIIIIlII, 0x0, _IIlIIllIII.AbsoluteSize.X - 0x14) _IIlIIlllll.Position = UDim2.new(0x0, _IlIIIIIlII, 0x0, 0x0) local _llllIIIlll = _IlIIIIIlII / (_IIlIIllIII.AbsoluteSize.X - _IIlIIlllll.AbsoluteSize.X) callback(_llllIIIlll) _lIlIIIlIll.Size = UDim2.new(0x0, _IlIIIIIlII + 0x14, 0x0, 0x14) _IllIlIlIll.Text = nombreDeLaOpcion() end
 end
 ) _IlIIIIIlII.InputEnded:Connect( function (input) if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then _IlIlIIlllI = false end
 end
 ) end
 local function _lllllIIlll(globalPosition, modoDeElBoton, Section, callback) local _llIllIlIlI = Instance.new("\084\101\120\116\066\117\116\116\111\110") _llIllIlIlI.Parent = globalPosition _llIllIlIlI.Size = UDim2.new(0x0, 0xFF, 0x0, 0x23) _llIllIlIlI.BackgroundColor3 = Color3.fromRGB(0x11, 0xB, 0x1D) _llIllIlIlI.Text = modoDeElBoton _llIllIlIlI.Font = Enum.Font.GothamBold _llIllIlIlI.TextSize = 0x14 _llIllIlIlI.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _llIllIlIlI.ZIndex = _lIlllllIll _IlIIIlllII += 0x1 _llIllIlIlI.LayoutOrder = _IlIIIlllII _IIIIIIlIIl(_llIllIlIlI, 0x0, 0xD) _IllIIlIllI(_llIllIlIlI, 0x2, 0x2D, 0x1C, 0x46) _llllllllIl.RenderStepped:Connect( function () if _IlIllIllIl == Section then _llIllIlIlI.Visible = true else _llIllIlIlI.Visible = false end
 end
 ) _llIllIlIlI.MouseButton1Click:Connect( function () _llIllIlIlI.Text = callback() end
 ) end
 local function _IIIIlIllIl(sectionButtonGlobalPosition, nombreDeElSectionButton, callback) local _IlIllIIlll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIllIIlll.Parent = sectionButtonGlobalPosition _IlIllIIlll.BackgroundColor3 = Color3.fromRGB(0x17, 0x15, 0x26) _IlIllIIlll.Size = UDim2.new(0x0, 0xA0, 0x0, 0x21) _IlIllIIlll.Text = string.upper(nombreDeElSectionButton) _IlIllIIlll.Font = Enum.Font.GothamBold _IlIllIIlll.TextSize = 0xF _IlIllIIlll.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IlIllIIlll.ZIndex = _lIlllllIll _IIIIIIlIIl(_IlIllIIlll, 0x0, 0x5) _IllIIlIllI(_IlIllIIlll, 0x2, 0x25, 0x1F, 0x38) _IlIllIIlll.MouseButton1Click:Connect(callback) end
 local _IllllllIIl = Instance.new("\073\109\097\103\101\066\117\116\116\111\110") _IllllllIIl.Parent = _IIIlIIIlll _IllllllIIl.BackgroundColor3 = Color3.fromRGB(0x1C, 0x12, 0x30) _IllllllIIl.Size = UDim2.new(0x0, 0x37, 0x0, 0x37) _IllllllIIl.Position = UDim2.new(0x0, 0x19F, 0x0, 0x5) _IllllllIIl.Image = _llllIlllII _IllllllIIl.ZIndex = _lIlllllIll + 0x2 _IllllllIIl.Active = true _IllllllIIl.Draggable = true _IIIIIIlIIl(_IllllllIIl, 0x1, 0x0) _IllIIlIllI(_IllllllIIl, 0x1, 0x83, 0x1D, 0xE7) _IllllllIIl.MouseButton1Click:Connect( function () local _IIlIlIllII = _lllllIIlIl.Position if _IlllIllIll then local _IIllllIIII = _IlIIIIIIlI:Create( _lllllIIlIl, TweenInfo.new(0.5), { Size = UDim2.new(0x0, 0x0, 0x0, 0x0), Visible = false } ) _IIllllIIII:Play() else local _IIlllIIIlI = _IlIIIIIIlI:Create( _lllllIIlIl, TweenInfo.new(0.5), { Visible = true, Size = UDim2.new(0x0, 0x1C2, 0x0, 0x12C) } ) _IIlllIIIlI:Play() end
 _IlllIllIll = not _IlllIllIll end
 ) local function _lIlIIllIll(enemy) local _lIllIIIIIl local _IIIIIIIIII local _lIIIIllllI if _llIIlIIIlI.Character then if _llIIlIIIlI.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then _lIllIIIIIl = _llIIlIIIlI.Character.HumanoidRootPart.Position end
 end
 if enemy.Character then if enemy.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then _IIIIIIIIII = enemy.Character.HumanoidRootPart.Position end
 end
 if _lIllIIIIIl and _IIIIIIIIII then _lIIIIllllI = (_lIllIIIIIl - _IIIIIIIIII).Magnitude return _lIIIIllllI else return 0x0 end
 end
 local function _lIlIIlllll(parte) local _lllIIIIlII = _IlIIlIIIIl.CFrame.Position local _IlIllIIIll = parte.Position - _lllIIIIlII local _lIlllIIIll = workspace:Raycast(_lllIIIIlII, _IlIllIIIll, _llllIIllll) if _lIlllIIIll then return _lIlllIIIll.Instance:IsDescendantOf(parte.Parent) else return true end
 end
 local function _IIIIIIIlll(jugador) if jugador.Character then local _lIIllllIlI = jugador.Character if _lIIllllIlI:FindFirstChild("\072\101\097\100") then local _IIIlIlIIIl, enPantalla = _IlIIlIIIIl:WorldToViewportPoint(_lIIllllIlI.Head.Position) if enPantalla then local _lllIIIlIlI = Vector2.new(_IIIlIlIIIl.X, _IIIlIlIIIl.Y) local _lIIlllIlII = Vector2.new(_lIIIlIIIll.X/0x2, _lIIIlIIIll.Y/0x2) local _lIIIIllllI = (_lllIIIlIlI - _lIIlllIlII).Magnitude if _lIIIIllllI < _IlIllllllI.radioFov then return true else return false end
 end
 end
 end
 end
 local function _IIlllllIll() if not _lllIllIlIl then _lllIllIlIl = Drawing.new("\067\105\114\099\108\101") _lllIllIlIl.Color = Color3.fromRGB(0xFF, 0x0, 0x0) _lllIllIlIl.Thickness = 0x2 _lllIllIlIl.Radius = _IlIllllllI.radioFov _lllIllIlIl.Filled = false _lllIllIlIl.Position = Vector2.new(_lIIIlIIIll.X/0x2, _lIIIlIIIll.Y/0x2) _lllIllIlIl.Visible = true end
 end
 local function _IlllIllIll() if _lllIllIlIl then _lllIllIlIl:Remove() _lllIllIlIl = nil end
 end
 local function _lIIIIIlIlI(jugador) local _IlIllIIIIl = nil local _IllllIlIlI = nil if jugador.Team then _IlIllIIIIl = jugador.Team elseif jugador.TeamColor then _IlIllIIIIl = jugador.TeamColor else _IlIllIIIIl = "\066\108\097\099\107" end
 if _llIIlIIIlI.Team then _IllllIlIlI = _llIIlIIIlI.Team elseif _llIIlIIIlI.TeamColor then _IllllIlIlI = _llIIlIIIlI.TeamColor else _IllllIlIlI = "\066\108\097\099\107" end
 return _IlIllIIIIl ~= _IllllIlIlI end
 local _llIIIlIlIl = _G.teamDataDuelist local function _IlIlIIIllI(jugador) if rawget(_llIIIlIlIl, "\105\110\077\097\116\099\104") then local _lIIllllllI = rawget(_llIIIlIlIl, "\116\101\097\109\115") local _lIllIIIlIl = rawget(_lIIllllllI, "\084\101\097\109\049") local _IlIlllIIIl = rawget(_lIIllllllI, "\084\101\097\109\050") local _lIlIlllIIl if table.find(_lIllIIIlIl, _llIIlIIIlI.UserId) then _lIlIlllIIl = _lIllIIIlIl elseif table.find(_IlIlllIIIl, _llIIlIIIlI.UserId) then _lIlIlllIIl = _IlIlllIIIl else _lIlIlllIIl = nil end
 if _lIlIlllIIl then if table.find(_lIlIlllIIl, jugador.UserId) then return true else return false end
 end
 end
 end
 local function _IllIIlIIlI() local _llIlIIllII = nil local _IIIIlIIIII = math.huge for _, jugador in pairs(_IlIIIlllll:GetPlayers()) do if jugador.Character and jugador ~= _llIIlIIIlI then local _lIIllllIlI = jugador.Character local _lIIIllllII = 0x0 local _IlIIIIllll = _IIIIIIIlll(jugador) if _lIIllllIlI:FindFirstChild("\072\117\109\097\110\111\105\100") then _lIIIllllII = _lIIllllIlI.Humanoid.Health end
 if _lIIllllIlI:FindFirstChild(_IlIllllllI.modoAimbotActual) then local _IIIlIllllI = _lIIllllIlI:FindFirstChild(_IlIllllllI.modoAimbotActual) if _lIIlIIllIl:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _lIIIIllllI = (_lIIlIIllIl.HumanoidRootPart.Position - _IIIlIllllI.Position).Magnitude if _IlIllllllI.teamCheck then if _IIllIIlIlI ~= _lllIlIlIll then if _IlIllllllI.wallCheckActivado then if _lIIIIllllI < _IIIIlIIIII and _lIlIIlllll(_IIIlIllllI) and _lIIIllllII > 0x0 and _IlIIIIllll and _lIIIIIlIlI(jugador) then _IIIIlIIIII = _lIIIIllllI _llIlIIllII = _IIIlIllllI end
 else if _lIIIIllllI < _IIIIlIIIII and _lIIIllllII > 0x0 and _IlIIIIllll and _lIIIIIlIlI(jugador) then _IIIIlIIIII = _lIIIIllllI _llIlIIllII = _IIIlIllllI end
 end
 else if _IlIllllllI.wallCheckActivado then if _lIIIIllllI < _IIIIlIIIII and _lIlIIlllll(_IIIlIllllI) and _lIIIllllII > 0x0 and _IlIIIIllll and not _IlIlIIIllI(jugador) then _IIIIlIIIII = _lIIIIllllI _llIlIIllII = _IIIlIllllI end
 else if _lIIIIllllI < _IIIIlIIIII and _lIIIllllII > 0x0 and _IlIIIIllll and not _IlIlIIIllI(jugador) then _IIIIlIIIII = _lIIIIllllI _llIlIIllII = _IIIlIllllI end
 end
 end
 else if _IlIllllllI.wallCheckActivado then if _lIIIIllllI < _IIIIlIIIII and _lIlIIlllll(_IIIlIllllI) and _lIIIllllII > 0x0 and _IlIIIIllll then _IIIIlIIIII = _lIIIIllllI _llIlIIllII = _IIIlIllllI end
 else if _lIIIIllllI < _IIIIlIIIII and _lIIIllllII > 0x0 and _IlIIIIllll then _IIIIlIIIII = _lIIIIllllI _llIlIIllII = _IIIlIllllI end
 end
 end
 end
 end
 end
 end
 if _llIlIIllII then return _llIlIIllII else return false end
 end
 local function _IIIIlIllll() local _llIlIIllII = nil local _IIIIlIIIII = math.huge for _, jugador in pairs(_IlIIIlllll:GetPlayers()) do if jugador.Character and jugador ~= _llIIlIIIlI then local _lIIllllIlI = jugador.Character local _lIIIllllII = 0x0 local _IlIIIIllll = _IIIIIIIlll(jugador) if _lIIllllIlI:FindFirstChild("\072\117\109\097\110\111\105\100") then _lIIIllllII = _lIIllllIlI.Humanoid.Health end
 if _lIIllllIlI:FindFirstChild("\072\101\097\100") then local _IlIlIIlIlI = _lIIllllIlI.Head if _lIIlIIllIl:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _lIIIIllllI = (_lIIlIIllIl.HumanoidRootPart.Position - _IlIlIIlIlI.Position).Magnitude if _lIIIIllllI < _IIIIlIIIII and _lIlIIlllll(_IlIlIIlIlI) and _lIIIllllII > 0x0 and not _IlIlIIIllI(jugador) then _IIIIlIIIII = _lIIIIllllI _llIlIIllII = _IlIlIIlIlI end
 end
 end
 end
 end
 if _llIlIIllII then return _llIlIIllII.Position else return false end
 end
 local function _IIlllIllII(jugador) if not _lIlIIIllll[jugador] and jugador ~= _llIIlIIIlI then local _llIlIIlIII = Drawing.new("\076\105\110\101") _llIlIIlIII.Thickness = 0x2 _llIlIIlIII.Color = Color3.fromRGB(0xFF, 0x0, 0x0) _llIlIIlIII.Visible = false _lIlIIIllll[jugador] = _llIlIIlIII end
 end
 local function _llIlIIlIll(jugador) if _lIlIIIllll[jugador] then _lIlIIIllll[jugador]:Remove() _lIlIIIllll[jugador] = nil end
 end
 local function _IlllIIIIIl(jugador) if not _IllIllllII[jugador] and jugador ~= _llIIlIIIlI then local _llIIIIIIII = Instance.new("\070\114\097\109\101") _llIIIIIIII.Parent = _IIIlIIIlll _llIIIIIIII.BackgroundTransparency = 0x1 _llIIIIIIII.AnchorPoint = Vector2.new(0.5, 0.5) _IllIIlIllI(_llIIIIIIII, 0x2, 0xFF, 0x0, 0x0) _llIIIIIIII.Visible = false _IllIllllII[jugador] = _llIIIIIIII end
 end
 local function _IIIlIlllll(jugador) if _IllIllllII[jugador] then _IllIllllII[jugador]:Destroy() _IllIllllII[jugador] = nil end
 end
 local function _IIIIIlllll(jugador) if not _llIlllIIII[jugador] and jugador ~= _llIIlIIIlI then local _IllIIlllll = Instance.new("\070\114\097\109\101") _IllIIlllll.Parent = _IIIlIIIlll _IllIIlllll.BackgroundColor3 = Color3.fromRGB(0x0, 0xFF, 0x0) _IllIIlllll.AnchorPoint = Vector2.new(0.5, 0.5) _IllIIlIllI(_IllIIlllll, 0x1, 0x0, 0x0, 0x0) _llIlllIIII[jugador] = _IllIIlllll end
 end
 local function _llIIlIlIIl(jugador) if _llIlllIIII[jugador] then _llIlllIIII[jugador]:Destroy() _llIlllIIII[jugador] = nil end
 end
 local function _lIIllIlIIl(jugador) if jugador.Character then local _lIIllllIlI = jugador.Character if _lIIllllIlI:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _lllIllIIIl = _lIIllllIlI.HumanoidRootPart if not _lIIIlIlIII then _lIIIlIlIII = Instance.new("\066\111\100\121\086\101\108\111\099\105\116\121") _lIIIlIlIII.Parent = _lllIllIIIl end
 if not _lIIIllllII then _lIIIllllII = Instance.new("\066\111\100\121\071\121\114\111") _lIIIllllII.Parent = _lllIllIIIl end
 _lIIIlIlIII.MaxForce = Vector3.new(1e9, 1e9, 1e9) _lIIIllllII.MaxTorque = Vector3.new(1e9, 1e9, 1e9) _lIIIllllII.P = 0x2710 _lIIIllllII.CFrame = _IlIIlIIIIl.CFrame local _lIllllIlll = _IlIIlIlllI:GetMoveVector() local _IIllIlIllI = _IlIIlIIIIl.CFrame.LookVector local _IllllllIll = _IlIIlIIIIl.CFrame.RightVector local _IlIllIIIll = (_IIllIlIllI * -_lIllllIlll.Z) + (_IllllllIll * _lIllllIlll.X) if _IlIllIIIll.Magnitude > 0x0 then _lIIIlIlIII.Velocity = _IlIllIIIll.Unit * 0x64 else _lIIIlIlIII.Velocity = Vector3.zero end
 end
 end
 end
 local function _IIlllIlIll(_lIIlIIllIl) if _lIIlIIllIl ~= _llIIlIIIlI.Character and _lIIlIIllIl then local _IIIlIlIlIl = _lIIlIIllIl if _IIIlIlIlIl:FindFirstChild(_IlIllllllI.modoHitboxExpandActual) then local _IIIlIllllI = _IIIlIlIlIl:FindFirstChild(_IlIllllllI.modoHitboxExpandActual) _IIIlIllllI.Size = Vector3.new(_IlIllllllI.grandeDeLaHitBox, _IlIllllllI.grandeDeLaHitBox, _IlIllllllI.grandeDeLaHitBox) _IIIlIllllI.Transparency = 0x0 _IIIlIllllI.Color = Color3.fromRGB(0xFF, 0x0, 0x0) _IIIlIllllI.Material = Enum.Material.Neon _IIIlIllllI.CanCollide = false end
 end
 end
 local function _llllIlllll(_lIIlIIllIl) if _lIIlIIllIl ~= _llIIlIIIlI.Character and _lIIlIIllIl then local _IIIlIlIlIl = _lIIlIIllIl if _IIIlIlIlIl:FindFirstChild(_IlIllllllI.modoHitboxExpandActual) then local _IIIlIllllI = _IIIlIlIlIl:FindFirstChild(_IlIllllllI.modoHitboxExpandActual) if _IlIllllllI.modoHitboxExpandActual == "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116" then _IIIlIllllI.Size = Vector3.new(0x2, 0x2, 0x1) _IIIlIllllI.Transparency = 0x1 _IIIlIllllI.CanCollide = true else _IIIlIllllI.Size = Vector3.new(1.1961, 1.2029, 1.2002) _IIIlIllllI.Transparency = 0x0 end
 end
 end
 end
 local function _IlllllIlll() local _IllIIIlIIl = workspace:FindFirstChild("\084\097\114\103\101\116\083\104\111\111\116", true) if _IllIIIlIIl then local _lIlIIllIlI = _lIlIIlllll(_IllIIIlIIl) local _lIIlllIllI = _IllIIIlIIl.Position local _IIllIIIIll = 0x0 if _llIIlIIIlI.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then _IIllIIIIll = (_llIIlIIIlI.Character.HumanoidRootPart.Position - _lIIlllIllI).Magnitude end
 if _IIllIIIIll < 0x3E8 and _lIlIIllIlI then _IlIIlIIIIl.CFrame = CFrame.new(_IlIIlIIIIl.CFrame.Position, _lIIlllIllI) end
 end
 end
 local function _lIlIIllIlI() if _llIlIIIlII then return end
 _llIlIIIlII = true local _lIIlIlllIl for _, v in pairs(getgc(true)) do if typeof(v) == "\102\117\110\099\116\105\111\110" then local _lIlllIIIll = debug.getinfo(v) if _lIlllIIIll.name == "\070\105\114\101\066\105\110\100" and _lIlllIIIll.source:find("\067\108\105\101\110\116\083\099\114\105\112\116\115\046\067\108\105\101\110\116\046\066\105\110\100\115") then _lIIlIlllIl = v break end
 end
 end
 _lIIlIlllIl(_G, "\083\104\111\111\116", true, false) task.wait(0.3) _lIIlIlllIl(_G, "\083\104\111\111\116", false, false) _llIlIIIlII = false end
 local _llllIIlIll local _IIlIllllll local _IlIIlIllII _llllllllIl.RenderStepped:Connect( function () if _IlIllllllI.silentAimActived then _llllIIlIll = _IllIIlIIlI() if _llllIIlIll then _IIlIllllll, _IlIIlIllII = _IlIIlIIIIl:WorldToViewportPoint(_llllIIlIll.Position) else _IIlIllllll = nil _IlIIlIllII = false end
 else _llllIIlIll = nil _IIlIllllll = nil _IlIIlIllII = false end
 end
 ) local function _IIllIIllll() local _llllIIIlll = tonumber(_IlIllllllI.modoSilentActual:match("\037\100\043")) if _llllIIIlll >= 0x64 then return true end
 return math.random(0x1,0x64) <= _llllIIIlll end
 local _IlllIIlllI _IlllIIlllI = hookmetamethod(game, "\095\095\105\110\100\101\120", newcclosure( function (self, key) if self == _IlIIlIIIIl and key == "\086\105\101\119\112\111\114\116\083\105\122\101" and _IlIllllllI.silentAimActived and _IIlIllllll and _IlIIlIllII and _IIllIIllll() then return Vector2.new(_IIlIllllll.X*0x2, _IIlIllllll.Y*0x2) else return _IlllIIlllI(self, key) end
 end
 )) _llllllllIl.RenderStepped:Connect( function () if _IlIllllllI.aimbotEnable then local _lllIIllllI = _IllIIlIIlI() if _lllIIllllI then local _lIIIIllllI = (_llIIlIIIlI.Character.HumanoidRootPart.Position - _lllIIllllI.Position).Magnitude if _IIllIIlIlI ~= _lllIlIlIll then if _lIIIIllllI < _IIlIIlllII then local _llIllIIlII = CFrame.new(_IlIIlIIIIl.CFrame.Position, _lllIIllllI.Position) _IlIIlIIIIl.CFrame = _IlIIlIIIIl.CFrame:Lerp(_llIllIIlII, _IlIllllllI.fuerzaDeAimbot) end
 else if _lIIIIllllI < _IIlIIlllII and rawget(_G.teamDataDuelist, "\105\110\077\097\116\099\104") then local _llIllIIlII = CFrame.new(_IlIIlIIIIl.CFrame.Position, _lllIIllllI.Position) _IlIIlIIIIl.CFrame = _IlIIlIIIIl.CFrame:Lerp(_llIllIIlII, _IlIllllllI.fuerzaDeAimbot) end
 end
 end
 end
 if _IlIllllllI.espTracerEnable then for jugador, _llIlIIlIII in pairs(_lIlIIIllll) do if jugador.Character then local _lIIllllIlI = jugador.Character if _lIIllllIlI:FindFirstChild("\072\101\097\100") then local _IlIlIIlIlI = _lIIllllIlI.Head local _lIIlllIllI, enPantalla = _IlIIlIIIIl:WorldToViewportPoint(_IlIlIIlIlI.Position) if enPantalla then local _IIIIlllIlI = Vector2.new(_IlIIlIIIIl.ViewportSize.X/0x2, 0x0) local _llllllIIlI = Vector2.new(_lIIlllIllI.X, _lIIlllIllI.Y) _llIlIIlIII.From = _IIIIlllIlI _llIlIIlIII.To = _llllllIIlI _llIlIIlIII.Visible = true if _lIIllllIlI:FindFirstChild("\072\117\109\097\110\111\105\100") then local _lIIIllllII = _lIIllllIlI.Humanoid.Health if _lIIIllllII == 0x0 then _llIlIIlIII.Visible = false end
 end
 if _lIlIIllIll(jugador) > _IIlIIlllII then _llIlIIlIII.Visible = false end
 else _llIlIIlIII.Visible = false end
 else _llIlIIlIII.Visible = false end
 else _llIlIIlIII.Visible = false end
 end
 end
 if _IlIllllllI.espBoxEnable then for jugador, _llIIIIIIII in pairs(_IllIllllII) do if jugador.Character then local _lIIllllIlI = jugador.Character if _lIIllllIlI:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _lllIllIIIl = _lIIllllIlI.HumanoidRootPart local _IlIIlllIII, enPantalla = _IlIIlIIIIl:WorldToScreenPoint(_lllIllIIIl.Position) if enPantalla then local _lIllIIIlIl = _IlIIlIIIIl.ViewportSize.Y/_IlIIlllIII.Z local _lllIlIIIll = _lIllIIIlIl*0x5 local _llIlIllllI = _lIllIIIlIl*0x3 _llIIIIIIII.Size = UDim2.new(0x0, _llIlIllllI, 0x0, _lllIlIIIll) _llIIIIIIII.Position = UDim2.new(0x0, _IlIIlllIII.X, 0x0, _IlIIlllIII.Y) _llIIIIIIII.Visible = true if _lIlIIllIll(jugador) > _IIlIIlllII then _llIIIIIIII.Visible = false end
 if _lIIllllIlI:FindFirstChild("\072\117\109\097\110\111\105\100") then local _lIIIllllII = _lIIllllIlI.Humanoid.Health if _lIIIllllII == 0x0 then _llIIIIIIII.Visible = false end
 end
 else _llIIIIIIII.Visible = false end
 else _llIIIIIIII.Visible = false end
 else _llIIIIIIII.Visible = false end
 end
 end
 if _IlIllllllI.espVidaEnable then for jugador, _IllIIlllll in pairs(_llIlllIIII) do if jugador.Character then local _lIIllllIlI = jugador.Character if _lIIllllIlI:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _lllIllIIIl = _lIIllllIlI.HumanoidRootPart local _IlIIlllIII, enPantalla = _IlIIlIIIIl:WorldToScreenPoint(_lllIllIIIl.Position) local _IllllIlIII local _IIIIIlIlIl local _IlllIIlllI = 0x1 if _lIIllllIlI:FindFirstChild("\072\117\109\097\110\111\105\100") then local _lIllllIIII = _lIIllllIlI.Humanoid _IIIIIlIlIl = _lIllllIIII.Health _IllllIlIII = _lIllllIIII.MaxHealth _IlllIIlllI = _IIIIIlIlIl/_IllllIlIII end
 if enPantalla then local _lIllIIIlIl = _IlIIlIIIIl.ViewportSize.Y/_IlIIlllIII.Z local _lIIIIllllI = (_lIllIIIlIl * 0x3)/0x2 + 0x7 local _lllIlIIIll = (_lIllIIIlIl * _IlllIIlllI) * 0x5 local _llIlIllllI = _lIllIIIlIl _IllIIlllll.Size = UDim2.new(0x0, _llIlIllllI, 0x0, _lllIlIIIll) _IllIIlllll.Position = UDim2.new(0x0, _IlIIlllIII.X + _lIIIIllllI, 0x0, _IlIIlllIII.Y) if _IlllIIlllI > 0x0 then _IllIIlllll.Visible = true else _IllIIlllll.Visible = false end
 if _lIlIIllIll(jugador) > _IIlIIlllII then _IllIIlllll.Visible = false end
 else _IllIIlllll.Visible = false end
 else _IllIIlllll.Visible = false end
 else _IllIIlllll.Visible = false end
 end
 end
 if _IlIllllllI.showFovEnable then if _lllIllIlIl then if _lllIllIlIl.Radius ~= _IlIllllllI.radioFov then _lllIllIlIl.Radius = _IlIllllllI.radioFov end
 else _IIlllllIll() end
 end
 if _IlIllllllI.superJumpActivado then if _llIIlIIIlI.Character then if _llIIlIIIlI.Character.Humanoid then _llIIlIIIlI.Character.Humanoid.JumpPower = _IlIllllllI.jumpPower _llIIlIIIlI.Character.Humanoid.JumpHeight = _IlIllllllI.jumpPower / 0x4 end
 end
 end
 if _IlIllllllI.superSpeedActivado then if _llIIlIIIlI.Character then if _llIIlIIIlI.Character.Humanoid then _llIIlIIIlI.Character.Humanoid.WalkSpeed = _IlIllllllI.velocitySpeed end
 end
 end
 if _IlIllllllI.noClipEnable then if _llIIlIIIlI.Character then local _lIIlIIllIl = _llIIlIIIlI.Character for _, v in pairs(_lIIlIIllIl:GetChildren()) do if v:IsA("\066\097\115\101\080\097\114\116") then v.CanCollide = false end
 end
 end
 end
 if _IlIllllllI.flyEnable then if _llIIlIIIlI.Character then if _llIIlIIIlI.Character.Humanoid then _llIIlIIIlI.Character.Humanoid.PlatformStand = true end
 end
 _lIIllIlIIl(_llIIlIIIlI) end
 if _IlIllllllI.GravityCeroActivado then if _IlIllllllI.GravityCeroActivado then workspace.Gravity = 0x32 end
 end
 if _IlIllllllI.expandHitboxEnable then for _, jugador in pairs(_IlIIIlllll:GetPlayers()) do if jugador.Character then if jugador.Character:FindFirstChild("\072\117\109\097\110\111\105\100") then local _lIIIllllII = jugador.Character.Humanoid.Health if _lIIIllllII > 0x0 then _IIlllIlIll(jugador.Character) else _llllIlllll(jugador.Character) end
 end
 end
 end
 end
 if _IlIllllllI.aimExpDuelistEnable then _IlllllIlll() end
 if _IlIllllllI.autoShootEnable then local _lllIIllllI = _IIIIlIllll() if _lllIIllllI then local _llIllIIlII = CFrame.new(_IlIIlIIIIl.CFrame.Position, _lllIIllllI) _IlIIlIIIIl.CFrame = _IlIIlIIIIl.CFrame:Lerp(_llIllIIlII, _IlIllllllI.fuerzaDeAimbot) _lIlIIllIlI() end
 end
 if _IlIllllllI.aimbotBodyEnable then for _, jugador in pairs(_IlIIIlllll:GetPlayers()) do if jugador.Character then local _lIIllllIlI = jugador.Character if _lIIllllIlI:FindFirstChild("\072\101\097\100") and jugador ~= _llIIlIIIlI then local _IlIlIIlIlI = _lIIllllIlI.Head _IlIlIIlIlI.Size = Vector3.new(0x4, 0x5, 0x3) _IlIlIIlIlI.Transparency = 0x1 end
 end
 end
 end
 if _IlIllllllI.modoHitboxExpandActual == "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116" then for _, jugador in pairs(_IlIIIlllll:GetPlayers()) do if jugador.Character and jugador ~= _llIIlIIIlI then local _IIIlIlIlIl = jugador.Character if _IIIlIlIlIl:FindFirstChild("\072\101\097\100") then local _IlIlIIlIlI = _IIIlIlIlIl.Head _IlIlIIlIlI.Size = Vector3.new(1.1961, 1.2029, 1.2002) _IlIlIIlIlI.Transparency = 0x0 end
 end
 end
 elseif _IlIllllllI.modoHitboxExpandActual == "\072\101\097\100" then for _, jugador in pairs(_IlIIIlllll:GetPlayers()) do if jugador.Character and jugador ~= _llIIlIIIlI then local _IIIlIlIlIl = jugador.Character if _IIIlIlIlIl:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _lllIllIIIl = _IIIlIlIlIl.HumanoidRootPart _lllIllIIIl.Size = Vector3.new(0x2, 0x2, 0x1) _lllIllIIIl.Transparency = 0x1 end
 end
 end
 end
 _lllllIIlIl.Position = UDim2.new(0x0, _IllllllIIl.AbsolutePosition.X + 0x19, 0x0, _IllllllIIl.AbsolutePosition.Y + 0x1E) if _G.textoAdvertenciaFirebase.Body ~= "\034\034" then _lllllIIlIl.Visible = false _IllllllIIl.Visible = false task.wait(0x1) _llIIlIIIlI:Kick("\069\076\032\080\065\078\069\076\032\068\065\082\075\077\065\084\084\069\082\032\069\078\084\082\079\032\069\078\032\077\065\078\084\069\078\073\077\073\069\078\084\079") end
 end
 ) if _IIllIIlIlI ~= _lIIllIlIlI then _IIIlllllII(_IIlllIllll, "\065\105\109\098\111\116", "\067\079\077\066\065\084\069", function (valor) if valor then _IlIllllllI.aimbotEnable = true else _IlIllllllI.aimbotEnable = false end
 end
 ) _lllllIIlll(_IIlllIllll, _IlIllllllI.modoAimbotActual, "\067\079\077\066\065\084\069", function () if _IlIllllllI.modoAimbotActual == _IlIllllllI.modosAimbot[#_IlIllllllI.modosAimbot] then _IlIllllllI.modoAimbotActual = _IlIllllllI.modosAimbot[0x1] else _IlIllllllI.modoAimbotActual = _IlIllllllI.modosAimbot[table.find(_IlIllllllI.modosAimbot, _IlIllllllI.modoAimbotActual) + 0x1] end
 return _IlIllllllI.modoAimbotActual end
 ) end
 if _IIllIIlIlI ~= _lllIlIlIll and _IIllIIlIlI ~= _lIIllIlIlI then _IIllIIlIIl(_IIlllIllll, function () return string.format("\065\105\109\098\111\116\032\083\116\114\101\110\103\116\104\058\032\037\046\049\102", _IlIllllllI.fuerzaDeAimbot) end
 , 0x0, "\067\079\077\066\065\084\069", function (valor) _IlIllllllI.fuerzaDeAimbot = valor end
 ) end
 if _IIllIIlIlI ~= _IIllIIIlII then _IIIlllllII(_IIlllIllll, "\083\105\108\101\110\116\032\065\105\109", "\067\079\077\066\065\084\069", function (valor) _IlIllllllI.silentAimActived = valor end
 ) _lllllIIlll(_IIlllIllll, _IlIllllllI.modoSilentActual, "\067\079\077\066\065\084\069", function () if _IlIllllllI.modoSilentActual == _IlIllllllI.modosSilent[#_IlIllllllI.modosSilent] then _IlIllllllI.modoSilentActual = _IlIllllllI.modosSilent[0x1] else _IlIllllllI.modoSilentActual = _IlIllllllI.modosSilent[table.find(_IlIllllllI.modosSilent, _IlIllllllI.modoSilentActual) + 0x1] end
 return _IlIllllllI.modoSilentActual end
 ) end
 _IIIlllllII(_IIlllIllll, "\087\097\108\108\032\067\104\101\099\107", "\067\079\077\066\065\084\069", function (valor) _IlIllllllI.wallCheckActivado = valor end
 ) _IIIlllllII(_IIlllIllll, "\069\115\112\032\084\114\097\099\101\114", "\086\073\083\085\065\076\069\083", function (valor) if valor then for _, jugador in pairs(_IlIIIlllll:GetPlayers()) do _IIlllIllII(jugador) end
 _lIlIIIIlIl = _IlIIIlllll.PlayerAdded:Connect( function (jugador) _IIlllIllII(jugador) end
 ) _IlIllllIIl = _IlIIIlllll.PlayerRemoving:Connect( function (jugador) _llIlIIlIll(jugador) end
 ) _IlIllllllI.espTracerEnable = true else if _lIlIIIIlIl then _lIlIIIIlIl:Disconnect() _lIlIIIIlIl = nil end
 if _IlIllllIIl then _IlIllllIIl:Disconnect() _IlIllllIIl = nil end
 _IlIllllllI.espTracerEnable = false for jugador in pairs(_lIlIIIllll) do _llIlIIlIll(jugador) end
 end
 end
 ) _IIIlllllII(_IIlllIllll, "\069\115\112\032\066\111\120", "\086\073\083\085\065\076\069\083", function (valor) if valor then for _, jugador in pairs(_IlIIIlllll:GetPlayers()) do _IlllIIIIIl(jugador) end
 _llllIIIlII = _IlIIIlllll.PlayerAdded:Connect( function (jugador) _IlllIIIIIl(jugador) end
 ) _IllIIIlIll = _IlIIIlllll.PlayerRemoving:Connect( function (jugador) _IIIlIlllll(jugador) end
 ) _IlIllllllI.espBoxEnable = true else if _llllIIIlII then _llllIIIlII:Disconnect() _llllIIIlII = nil end
 if _IllIIIlIll then _IllIIIlIll:Disconnect() _IllIIIlIll = nil end
 _IlIllllllI.espBoxEnable = false for jugador in pairs(_IllIllllII) do _IIIlIlllll(jugador) end
 end
 end
 ) _IIIlllllII(_IIlllIllll, "\069\115\112\032\086\105\100\097", "\086\073\083\085\065\076\069\083", function (valor) if valor then for _, jugador in pairs(_IlIIIlllll:GetPlayers()) do _IIIIIlllll(jugador) end
 _IlIIIlllll.PlayerAdded:Connect( function (jugador) _IIIIIlllll(jugador) end
 ) _IlIIIlllll.PlayerRemoving:Connect( function (jugador) _llIIlIlIIl(jugador) end
 ) _IlIllllllI.espVidaEnable = true else _IlIllllllI.espVidaEnable = false for jugador in pairs(_llIlllIIII) do _llIIlIlIIl(jugador) end
 end
 end
 ) _IIIlllllII(_IIlllIllll, "\083\104\111\119\032\070\111\118", "\086\073\083\085\065\076\069\083", function (valor) if valor then _IlIllllllI.showFovEnable = true else _IlIllllllI.showFovEnable = false _IlllIllIll() end
 end
 ) _IIllIIlIIl(_IIlllIllll, function () return string.format("\070\079\086\032\115\105\122\101\058\032\037\100", _IlIllllllI.radioFov) end
 , 0x0, "\086\073\083\085\065\076\069\083", function (valor) _IlIllllllI.radioFov = valor * 0xC8 end
 ) if _IIllIIlIlI ~= _lIIllIlIlI then _IIIlllllII(_IIlllIllll, "\084\101\097\109\032\067\104\101\099\107", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) _IlIllllllI.teamCheck = valor end
 ) end
 if _IIllIIlIlI ~= _lIIllIlIlI then _IIIlllllII(_IIlllIllll, "\083\117\112\101\114\032\074\117\109\112", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _IlIllllllI.superJumpActivado = true else _IlIllllllI.superJumpActivado = false if _llIIlIIIlI.Character then if _llIIlIIIlI.Character.Humanoid then _llIIlIIIlI.Character.Humanoid.JumpPower = 0x32 _llIIlIIIlI.Character.Humanoid.JumpHeight = 7.2 end
 end
 end
 end
 ) end
 if _IIllIIlIlI ~= _lIIllIlIlI then _IIllIIlIIl(_IIlllIllll, function () return string.format("\074\117\109\112\032\080\111\119\101\114\058\032\037\100", _IlIllllllI.jumpPower) end
 , 0x0, "\077\079\086\073\077\073\069\078\084\079", function (valor) _IlIllllllI.jumpPower = valor * 0xC8 end
 ) end
 if _IIllIIlIlI ~= _lIIllIlIlI then _IIIlllllII(_IIlllIllll, "\083\117\112\101\114\032\083\112\101\101\100", "\077\079\086\073\077\073\069\078\084\079", function (valor) _IlIllllllI.superSpeedActivado = valor if valor then _IlIllllllI.superSpeedActivado = true else _IlIllllllI.superSpeedActivado = false if _llIIlIIIlI.Character then if _llIIlIIIlI.Character.Humanoid then _llIIlIIIlI.Character.Humanoid.WalkSpeed = 0x10 end
 end
 end
 end
 ) end
 if _IIllIIlIlI ~= _lIIllIlIlI then _IIllIIlIIl(_IIlllIllll, function () return string.format("\086\101\108\111\099\105\116\121\032\083\112\101\101\100\058\032\037\100", _IlIllllllI.velocitySpeed) end
 , 0x0, "\077\079\086\073\077\073\069\078\084\079", function (valor) _IlIllllllI.velocitySpeed = valor * 0x12C end
 ) end
 _IIIlllllII(_IIlllIllll, "\078\111\067\108\105\112", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _IlIllllllI.noClipEnable = true else _IlIllllllI.noClipEnable = false if _llIIlIIIlI.Character then local _lIIlIIllIl = _llIIlIIIlI.Character for _, v in pairs(_lIIlIIllIl:GetChildren()) do if v:IsA("\066\097\115\101\080\097\114\116") then v.CanCollide = true end
 end
 end
 end
 end
 ) if _IlIIllIllI.Name == "\065\110\100\114\111\105\100" or _IlIIllIllI.Name == "\073\079\083" then if _IIllIIlIlI ~= _IIllIIIlII then _IIIlllllII(_IIlllIllll, "\070\108\121", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _IlIllllllI.flyEnable = true else _IlIllllllI.flyEnable = false if _llIIlIIIlI.Character then if _llIIlIIIlI.Character.Humanoid then _llIIlIIIlI.Character.Humanoid.PlatformStand = false end
 end
 if _lIIIlIlIII then _lIIIlIlIII:Destroy() _lIIIlIlIII = nil end
 if _lIIIllllII then _lIIIllllII:Destroy() _lIIIllllII = nil end
 end
 end
 ) end
 end
 _IIIlllllII(_IIlllIllll, "\103\114\097\118\105\116\121\032\048", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _IlIllllllI.GravityCeroActivado = true else _IlIllllllI.GravityCeroActivado = false workspace.Gravity = 196.2 end
 end
 ) if _IIllIIlIlI ~= _lIIllIlIlI then _IIIlllllII(_IIlllIllll, "\069\120\112\097\110\100\032\072\105\116\098\111\120", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) if valor then _IlIllllllI.expandHitboxEnable = true else _IlIllllllI.expandHitboxEnable = false for _, jugador in pairs(_IlIIIlllll:GetPlayers()) do _llllIlllll(jugador.Character) end
 end
 end
 ) end
 if _IIllIIlIlI ~= _lIIllIlIlI then _IIllIIlIIl(_IIlllIllll, function () return string.format("\072\105\116\032\066\111\120\032\083\105\122\101\058\032\037\100", _IlIllllllI.grandeDeLaHitBox) end
 , 0x0, "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) _IlIllllllI.grandeDeLaHitBox = valor * 0x64 end
 ) _lllllIIlll(_IIlllIllll, _IlIllllllI.modoHitboxExpandActual, "\069\078\069\077\089\032\067\079\078\070\073\071", function () if _IlIllllllI.modoHitboxExpandActual == _IlIllllllI.modosHitboxExpand[#_IlIllllllI.modosHitboxExpand] then _IlIllllllI.modoHitboxExpandActual = _IlIllllllI.modosHitboxExpand[0x1] else _IlIllllllI.modoHitboxExpandActual = _IlIllllllI.modosHitboxExpand[table.find(_IlIllllllI.modosHitboxExpand, _IlIllllllI.modoHitboxExpandActual) + 0x1] end
 return _IlIllllllI.modoHitboxExpandActual end
 ) end
 if _IIllIIlIlI == _lllIlIlIll then _IIIlllllII(_IIlllIllll, "\065\105\109\032\069\120\112\032\040\068\117\101\108\105\115\116\041", "\067\079\077\066\065\084\069", function (valor) if valor then _IlIllllllI.aimExpDuelistEnable = true else _IlIllllllI.aimExpDuelistEnable = false end
 end
 ) end
 if _IIllIIlIlI == _lllIlIlIll and (_IlIIllIllI == Enum.Platform.IOS or _IlIIllIllI == Enum.Platform.Android) then _IIIlllllII(_IIlllIllll, "\065\117\116\111\032\083\104\111\111\116", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) if valor then _IlIllllllI.autoShootEnable = true else _IlIllllllI.autoShootEnable = false end
 end
 ) end
 if _IIllIIlIlI ~= _lIIllIlIlI then _IIIlllllII(_IIlllIllll, "\065\105\109\098\111\116\032\066\111\100\121", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) if valor then _IlIllllllI.aimbotBodyEnable = true else _IlIllllllI.aimbotBodyEnable = false for _, jugador in pairs(_IlIIIlllll:GetPlayers()) do if jugador.Character:FindFirstChild("\072\101\097\100") and jugador ~= _llIIlIIIlI then local _IlIlIIlIlI = jugador.Character.Head _IlIlIIlIlI.Size = Vector3.new(1.1961, 1.2029, 1.2002) _IlIlIIlIlI.Transparency = 0x0 end
 end
 end
 end
 ) end
 if _IIllIIlIlI == _lIIllIlIlI then _IIIlllllII(_IIlllIllll, "\078\111\032\082\101\099\111\105\108", "\067\079\077\066\065\084\069", function (valor) if valor then for name, dato in pairs(_IllIIIIIII) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootRecoil then dato.ShootRecoil = 0x0 end
 if dato.ShootSpread then dato.ShootSpread = 0x0 end
 end
 end
 else for name, dato in pairs(_IllIIIIIII) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootRecoil then dato.ShootRecoil = _llIIIlIllI[name].ShootRecoil end
 if dato.ShootSpread then dato.ShootSpread = _llIIIlIllI[name].ShootSpread end
 end
 end
 end
 end
 ) end
 if _IIllIIlIlI == _lIIllIlIlI then _IIIlllllII(_IIlllIllll, "\082\097\112\105\100\032\070\105\114\101", "\067\079\077\066\065\084\069", function (valor) if valor then for name, dato in pairs(_IllIIIIIII) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootCooldown then dato.ShootCooldown = 0x0 end
 end
 end
 else for name, dato in pairs(_IllIIIIIII) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootCooldown then dato.ShootCooldown = _llIIIlIllI[name].ShootCooldown end
 end
 end
 end
 end
 ) end
 _IIIlllllII(_IIlllIllll, "\066\121\112\097\115\115\032\080\114\111\116\111\099\111\108", "\066\089\080\065\083\083", function () return end
 ) _IIIlllllII(_IIlllIllll, "\083\121\115\116\101\109\032\069\120\112\108\111\105\116\115", "\066\089\080\065\083\083", function () return end
 ) _IIIlllllII(_IIlllIllll, "\083\105\108\101\110\116\032\073\110\106\101\099\116\105\111\110", "\066\089\080\065\083\083", function () return end
 ) _IIIlllllII(_IIlllIllll, "\082\111\111\116\032\065\099\099\101\115\115", "\066\089\080\065\083\083", function () return end
 ) _IIIIlIllIl(_lIIIllIIII, "\067\111\109\098\097\116\032\55356\57263", function () _IlIllIllIl = "\067\079\077\066\065\084\069" end
 ) _IIIIlIllIl(_lIIIllIIII, "\077\111\118\101\109\101\110\116\032\55356\57283", function () _IlIllIllIl = "\077\079\086\073\077\073\069\078\084\079" end
 ) _IIIIlIllIl(_lIIIllIIII, "\086\105\115\117\097\108\115\032\55357\56385\65039", function () _IlIllIllIl = "\086\073\083\085\065\076\069\083" end
 ) if _IIllIIlIlI ~= _lIIllIlIlI then _IIIIlIllIl(_lIIIllIIII, "\069\110\101\109\121\032\067\111\110\102\105\103\032\55357\56420", function () _IlIllIllIl = "\069\078\069\077\089\032\067\079\078\070\073\071" end
 ) end
 _IIIIlIllIl(_lIIIllIIII, "\066\121\032\080\097\115\115\032\55357\56594", function () _IlIllIllIl = "\066\089\080\065\083\083" end
 ) _IllIlllIII:SetCore("\083\101\110\100\078\111\116\105\102\105\099\097\116\105\111\110", { Title = "\068\065\082\075\077\065\084\084\069\082\032\080\065\078\069\076", Text = "\073\078\073\067\073\065\068\079\032\067\079\078\032\069\088\073\084\079", Icon = _llllIlllII, Duration = 0x5 }) local _IlIlIIIIII = game:GetService("\076\105\103\104\116\105\110\103") local function _IIllllllll(objeto) if objeto:IsA("\084\101\120\116\117\114\101") or objeto:IsA("\068\101\099\097\108") or objeto:IsA("\066\097\115\101\080\097\114\116") or objeto:IsA("\080\097\114\116\105\099\108\101\069\109\105\116\116\101\114") or objeto:IsA("\083\109\111\107\101") or objeto:IsA("\070\105\114\101") or objeto:IsA("\083\112\097\114\107\108\101\115") or objeto:IsA("\080\111\105\110\116\076\105\103\104\116") or objeto:IsA("\083\112\111\116\076\105\103\104\116") or objeto:IsA("\083\117\114\102\097\099\101\076\105\103\104\116") or objeto:IsA("\066\101\097\109") or objeto:IsA("\084\114\097\105\108") then if not objeto:IsA("\066\097\115\101\080\097\114\116") and not objeto:IsA("\080\097\114\116\105\099\108\101\069\109\105\116\116\101\114") then objeto:Destroy() end
 if objeto:IsA("\066\097\115\101\080\097\114\116") then objeto.Material = Enum.Material.SmoothPlastic objeto.Reflectance = 0x0 end
 if objeto:IsA("\083\109\111\107\101") or objeto:IsA("\070\105\114\101") or objeto:IsA("\083\112\097\114\107\108\101\115") or objeto:IsA("\080\111\105\110\116\076\105\103\104\116") or objeto:IsA("\083\112\111\116\076\105\103\104\116") or objeto:IsA("\083\117\114\102\097\099\101\076\105\103\104\116") or objeto:IsA("\066\101\097\109") or objeto:IsA("\084\114\097\105\108") then objeto.Enabled = false end
 end
 end
 for _, objeto in pairs(game:GetDescendants()) do _IIllllllll(objeto) end
 game.DescendantAdded:Connect( function (objeto) _IIllllllll(objeto) end
 ) _IlIlIIIIII.GlobalShadows = false _IlIlIIIIII.Brightness = 0x1 _IlIlIIIIII.FogEnd = 0x3B9ACA00 _IlIlIIIIII.EnvironmentDiffuseScale = 0x0 _IlIlIIIIII.EnvironmentSpecularScale = 0x0 for _, efecto in ipairs(_IlIlIIIIII:GetChildren()) do if efecto:IsA("\066\108\111\111\109\069\102\102\101\099\116") or efecto:IsA("\066\108\117\114\069\102\102\101\099\116") or efecto:IsA("\067\111\108\111\114\067\111\114\114\101\099\116\105\111\110\069\102\102\101\099\116") or efecto:IsA("\083\117\110\082\097\121\115\069\102\101\099\116") or efecto:IsA("\068\101\112\116\104\079\102\070\105\101\108\100\069\102\102\101\099\116") or efecto:IsA("\065\116\109\111\115\112\104\101\114\101") then efecto:Destroy() end
 end
 end
 end
 )(...)
