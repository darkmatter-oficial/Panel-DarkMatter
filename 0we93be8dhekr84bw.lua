--[[ Protected by Lua Guard ]]

( function (...) if _G.keyValida and _G.textoAdvertenciaFirebase.Body == "\034\034" then local _IIllIIIIll = 2.0 local _llIIlIllII = game:GetService("\080\108\097\121\101\114\115") local _IllIlllIll = _llIIlIllII.LocalPlayer local _llIIllIIII = _IllIlllIll:WaitForChild("\080\108\097\121\101\114\071\117\105") local _IlIlIIIlll = Instance.new("\083\099\114\101\101\110\071\117\105") _IlIlIIIlll.Parent = _llIIllIIII local _lllllIlllI = game:GetService("\082\117\110\083\101\114\118\105\099\101") local _llIIlIIlll = game:GetService("\084\119\101\101\110\083\101\114\118\105\099\101") local _lIIlIllIll = _IllIlllIll.Character or _IllIlllIll.CharacterAdded:Wait() local _lllllllIlI = game:GetService("\083\116\097\114\116\101\114\071\117\105") _IlIlIIIlll.DisplayOrder = 0xF423F _IlIlIIIlll.ZIndexBehavior = Enum.ZIndexBehavior.Global local _IlIlIIlIIl = workspace.CurrentCamera local _IIIllIIIll = _IlIlIIlIIl.ViewportSize local _lIIIIlIlIl = RaycastParams.new() _lIIIIlIlIl.FilterType = Enum.RaycastFilterType.Exclude _lIIIIlIlIl.FilterDescendantsInstances = {_lIIlIllIll} local _IllIlIIIII = game:GetService("\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101") local _lIlllIllll = tostring(game.PlaceId) print(_lIlllIllll) local _llIllIIlII = _IllIlIIIII:GetPlatform() local _lIIIlIlIII = game:GetService("\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101") local _llIlIlIIIl = _IllIlllIll:WaitForChild("\080\108\097\121\101\114\083\099\114\105\112\116\115") local _lIllIllllI local _IIlIIIlIIl local _IIllllIIIl = "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\048\051\049\057\057\056\051\057\054\052\050\048\050\056" local _lIIIIlllIl = "\049\055\054\050\053\051\053\057\057\054\050" local _IlllllIlII = "\049\050\050\051\049\048\050\055\048\056\054\055\049\051\051" local _IlIllllIIl = "\057\048\049\056\052\050\056\055\053\056\048\049\055\052" local _llllIlIIII = "\050\056\054\048\057\048\052\050\057" local _lIlIIlIlIl = "\055\049\054\048\048\052\053\057\056\051\049\051\051\051" if _llIllIIlII.Name == "\065\110\100\114\111\105\100" or _llIllIIlII.Name == "\073\079\083" then if _lIlllIllll ~= _llllIlIIII then _lIllIllllI = require(_llIlIlIIIl:WaitForChild("\080\108\097\121\101\114\077\111\100\117\108\101")) _IIlIIIlIIl = _lIllIllllI:GetControls() end
 end
 if _lIlllIllll == _IlIllllIIl or _lIlllIllll == _lIlIIlIlIl then _IllIlllIll:Kick("\069\120\112\101\114\105\101\110\099\105\097\032\080\069\076\073\071\082\079\083\065\032\100\101\116\101\099\116\097\100\097\044\032\108\111\032\109\101\106\111\114\032\101\115\032\078\079\032\117\115\097\114\032\101\108\032\112\097\110\101\108\032\068\097\114\107\077\097\116\116\101\114\032\101\110\032\101\115\116\097\032\101\120\112\101\114\105\101\110\099\105\097\032\112\097\114\097\032\101\118\105\116\097\114\032\066\065\078\069\079\083\032\111\032\097\114\114\117\105\110\097\114\032\108\097\032\101\120\112\101\114\105\101\110\099\105\097") end
 local _lIIlIlllll if _lIlllIllll == _lIIIIlllIl then _lIIlIlllll = require(_lIIIlIlIII.Modules.ItemLibrary).Items end
 local _IlIIlllIII local _IIIlIlIlII local _llIlIIIIlI local _lllIlIIIlI local _IIIllIllIl local _lIIIIIIlII local _lIllIIllIl local _lllIIIIlII local _lIIIIIllIl local _lIIIIlIIII = true local _IllIlllIIl = "\067\079\077\066\065\084\069" local _IIllIlIIII local _lIllIIllll local _lIIllllIlI local _lIIlIIIlll local _IlIlIIIIlI local _llIIllllIl local _IIlIlIIIll local _IllIlIIllI local _llllIIllII = 0xFA local _IlIllIlIII = false local _IllIlIIIII = 0xF423F local _IIllIIIIIl local _IIIIllIlll = 0x0 local _lIlIIlllll = {} local _llIIIllIlI = {} local _llIlllIIlI = {} local _IlllIllIII = { aimbotEnable = false, espTracerEnable = false, espBoxEnable = false, espVidaEnable = false, showFovEnable = false, wallCheckActivado = false, radioFov = 0x5A, fuerzaDeAimbot = 0.0, teamCheck = false, superJumpActivado = false, superSpeedActivado = false, GravityCeroActivado = false, grandeDeLaHitBox = 0x32, expandHitboxEnable = false, velocitySpeed = 0x32, jumpPower = 0x64, aimExpDuelistEnable = false, autoShootEnable = false, silentAimActived = false, aimbotBodyEnable = false, modosSilent = { "\049\048\048\037", "\055\048\037", "\053\048\037", "\051\048\037", "\050\048\037", "\053\037" }, modoSilentActual = "\049\048\048\037", modosHitboxExpand = { "\072\101\097\100", "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116" }, modoHitboxExpandActual = "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116", modosAimbot = { "\072\101\097\100", "\085\112\112\101\114\084\111\114\115\111" }, modoAimbotActual = "\072\101\097\100" } if _lIlllIllll == _IlllllIlII or _lIlllIllll == _lIIIIlllIl then _IlllIllIII.fuerzaDeAimbot = 0x1 end
 _IllIlllIll.CharacterAdded:Connect( function (char) _lIIlIllIll = char _lIIIIlIlIl.FilterDescendantsInstances = {_lIIlIllIll} if _llIIllllIl then _llIIllllIl:Destroy() _llIIllllIl = nil end
 if _IIlIlIIIll then _IIlIlIIIll:Destroy() _IIlIlIIIll = nil end
 end
 ) _IlIlIIIlll.ResetOnSpawn = false if _lIlllIllll == _lIIIIlllIl then local function _lIllIIIlll(tabla) local _llIlIIIlII = {} for clave, valor in pairs(tabla) do if typeof(valor) == "\116\097\098\108\101" then _llIlIIIlII[clave] = _lIllIIIlll(valor) else _llIlIIIlII[clave] = valor end
 end
 return _llIlIIIlII end
 _IIllIIIIIl = _lIllIIIlll(_lIIlIlllll) end
 local function _lIlIlIllIl(globalPosition, posX, posY, grosorX, grosorY, color1, color2, color3) local _IIIIIllIII = Instance.new("\070\114\097\109\101") _IIIIIllIII.Parent = globalPosition _IIIIIllIII.BackgroundColor3 = Color3.fromRGB(color1, color2, color3) _IIIIIllIII.Size = UDim2.new(0x0, grosorX, 0x0, grosorY) _IIIIIllIII.Position = UDim2.new(0x0, posX, 0x0, posY) _IIIIIllIII.BorderSizePixel = 0x0 _IIIIIllIII.ZIndex = _IllIlIIIII + 0x1 end
 local function _lIlllIllll(textGlobalPosition, text, posX, posY, size, fuente, color1, color2, color3) local _IIlIlllIll = Instance.new("\084\101\120\116\076\097\098\101\108") _IIlIlllIll.Parent = textGlobalPosition _IIlIlllIll.TextColor3 = Color3.fromRGB(color1, color2, color3) _IIlIlllIll.TextSize = size _IIlIlllIll.Size = UDim2.new(0x0, 0x1, 0x0, 0x1) _IIlIlllIll.Text = text _IIlIlllIll.Font = fuente _IIlIlllIll.Position = UDim2.new(0x0, posX, 0x0, posY) _IIlIlllIll.BackgroundTransparency = 0x1 _IIlIlllIll.ZIndex = _IllIlIIIII end
 local function _lIllIllllI(redondearObjeto, px, size) local _llIlIlIIII = Instance.new("\085\073\067\111\114\110\101\114") _llIlIlIIII.Parent = redondearObjeto _llIlIlIIII.CornerRadius = UDim.new(px, size) end
 local function _IlIIIIIIII(bordeDeObjeto, thickness, color1, color2, color3) local _IlIIIIIIII = Instance.new("\085\073\083\116\114\111\107\101") _IlIIIIIIII.Parent = bordeDeObjeto _IlIIIIIIII.ApplyStrokeMode = Enum.ApplyStrokeMode.Border _IlIIIIIIII.Thickness = thickness _IlIIIIIIII.Color = Color3.fromRGB(color1, color2, color3) end
 local function _lIIlllllll(objetoParaLayout, _lIllIIIIII, paddingTop, paddingBottom, paddingLeft, paddingRight, fillDirection, verticalAlignment, horizontalAlignment) local _lIIlllllll = Instance.new("\085\073\076\105\115\116\076\097\121\111\117\116") _lIIlllllll.Parent = objetoParaLayout _lIIlllllll.FillDirection = fillDirection _lIIlllllll.VerticalAlignment = verticalAlignment _lIIlllllll.HorizontalAlignment = horizontalAlignment _lIIlllllll.Padding = UDim.new(0x0, _lIllIIIIII) _lIIlllllll.SortOrder = Enum.SortOrder.LayoutOrder local _lIllIIIIII = Instance.new("\085\073\080\097\100\100\105\110\103") _lIllIIIIII.Parent = objetoParaLayout _lIllIIIIII.PaddingTop = UDim.new(0x0, paddingTop) _lIllIIIIII.PaddingBottom = UDim.new(0x0, paddingBottom) _lIllIIIIII.PaddingLeft = UDim.new(0x0, paddingLeft) _lIllIIIIII.PaddingRight = UDim.new(0x0, paddingRight) if objetoParaLayout:IsA("\083\099\114\111\108\108\105\110\103\070\114\097\109\101") then _lIIlllllll:GetPropertyChangedSignal("\065\098\115\111\108\117\116\101\067\111\110\116\101\110\116\083\105\122\101"):Connect( function () objetoParaLayout.CanvasSize = UDim2.new(0x0, 0x0, 0x0, _lIIlllllll.AbsoluteContentSize.Y + 0x1E) end
 ) end
 end
 local _lIllIllIII = Instance.new("\070\114\097\109\101") _lIllIllIII.Parent = _IlIlIIIlll _lIllIllIII.Size = UDim2.new(0x0, 0x1C2, 0x0, 0x12C) _lIllIllIII.AnchorPoint = Vector2.new(0x1, 0x0) _lIllIllIII.Active = true _lIllIllIII.BackgroundColor3 = Color3.fromRGB(0xD, 0x9, 0x17) _lIllIllIII.BorderSizePixel = 0x0 _lIllIllIII.ClipsDescendants = true _lIllIllIII.ZIndex = _IllIlIIIII _lIllIllllI(_lIllIllIII, 0x0, 0xA) _IlIIIIIIII(_lIllIllIII, 0x3, 0x0, 0x0, 0x0) _lIlIlIllIl(_lIllIllIII, 0x0, 0x23, 0x1C2, 0x3, 0x0, 0x0, 0x0) _lIlllIllll(_lIllIllIII, string.format("\068\065\082\075\077\065\084\084\069\082\032\037\046\049\102\032\070\114\101\101", _IIllIIIIll), 0xE1, 0x10, 0x23, Enum.Font.GothamBold, 0xAF, 0x7E, 0xF7) _lIlllIllll(_lIllIllIII, string.format("\080\076\065\084\070\079\082\077\058\032\037\115", _llIllIIlII.Name), 0x56, 0x11C, 0xF, Enum.Font.GothamBold, 0xFF, 0xFF, 0xFF) _lIlIlIllIl(_lIllIllIII, 0xAF, 0x23, 0x3, 0x109, 0x0, 0x0, 0x0) _lIlIlIllIl(_lIllIllIII, 0x0, 0x109, 0xAF, 0x3, 0x0, 0x0, 0x0) local _IllIIllllI = Instance.new("\070\114\097\109\101") _IllIIllllI.Parent = _lIllIllIII _IllIIllllI.Size = UDim2.new(0x0, 0x1C2, 0x0, 0x109) _IllIIllllI.Position = UDim2.new(0x0, 0x0, 0x0, 0x23) _IllIIllllI.BackgroundTransparency = 0x1 _IllIIllllI.ZIndex = _IllIlIIIII local _IlIlIlIIII = Instance.new("\083\099\114\111\108\108\105\110\103\070\114\097\109\101") _IlIlIlIIII.Parent = _IllIIllllI _IlIlIlIIII.BackgroundTransparency = 0x1 _IlIlIlIIII.Size = UDim2.new(0x0, 0xAF, 0x0, 0xE6) _IlIlIlIIII.ScrollBarThickness = 0x0 _IlIlIlIIII.ZIndex = _IllIlIIIII _lIIlllllll(_IlIlIlIIII, 0xA, 0x10, 0x0, 0x0, 0x0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Top, Enum.HorizontalAlignment.Center) local _IIlllIllll = Instance.new("\083\099\114\111\108\108\105\110\103\070\114\097\109\101") _IIlllIllll.Parent = _IllIIllllI _IIlllIllll.BackgroundTransparency = 0x1 _IIlllIllll.Size = UDim2.new(0x0, 0x113, 0x0, 0x109) _IIlllIllll.Position = UDim2.new(0x0, 0xAF, 0x0, 0x0) _IIlllIllll.ScrollBarThickness = 0x4 _IIlllIllll.ZIndex = _IllIlIIIII _lIIlllllll(_IIlllIllll, 0xA, 0xA, 0x0, 0x0, 0x0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Top, Enum.HorizontalAlignment.Center) local function _lIIIIlIlII(SwitchGlobalPosition, nombreDeLaOpcion, Section, callback) local _IIlIIIIlll = false local _lIlIlllIIl = Instance.new("\070\114\097\109\101") _lIlIlllIIl.Parent = SwitchGlobalPosition _lIlIlllIIl.Size = UDim2.new(0x0, 0xFF, 0x0, 0x28) _lIlIlllIIl.BackgroundTransparency = 0x0 _lIlIlllIIl.BackgroundColor3 = Color3.fromRGB(0x11, 0xB, 0x1D) _lIlIlllIIl.ZIndex = _IllIlIIIII _IIIIllIlll += 0x1 _lIlIlllIIl.LayoutOrder = _IIIIllIlll _lIllIllllI(_lIlIlllIIl, 0x0, 0xA) _IlIIIIIIII(_lIlIlllIIl, 0x2, 0x2D, 0x1C, 0x46) _lIIlllllll(_lIlIlllIIl, 0xA, 0x0, 0x0, 0xA, 0xA, Enum.FillDirection.Horizontal, Enum.VerticalAlignment.Center, Enum.HorizontalAlignment.Left) _lllllIlllI.RenderStepped:Connect( function () if _IllIlllIIl == Section then _lIlIlllIIl.Visible = true else _lIlIlllIIl.Visible = false end
 end
 ) local _llllIlllIl = Instance.new("\084\101\120\116\076\097\098\101\108") _llllIlllIl.Parent = _lIlIlllIIl _llllIlllIl.Size = UDim2.new(0x0, 0xAF, 0x0, 0x19) _llllIlllIl.BackgroundTransparency = 0x1 _llllIlllIl.TextSize = 0x14 _llllIlllIl.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _llllIlllIl.Text = string.upper(nombreDeLaOpcion) _llllIlllIl.TextXAlignment = Enum.TextXAlignment.Left _llllIlllIl.Font = Enum.Font.GothamBold _llllIlllIl.ZIndex = _IllIlIIIII local _IlIIlIlIll = Instance.new("\070\114\097\109\101") _IlIIlIlIll.Parent = _lIlIlllIIl _IlIIlIlIll.Size = UDim2.new(0x0, 0x32, 0x0, 0x19) _IlIIlIlIll.BackgroundColor3 = Color3.fromRGB(0x83, 0x1D, 0xE7) _IlIIlIlIll.ZIndex = _IllIlIIIII _lIllIllllI(_IlIIlIlIll, 0x1, 0x0) local _lIlIIlIIIl = Instance.new("\070\114\097\109\101") _lIlIIlIIIl.Parent = _IlIIlIlIll _lIlIIlIIIl.BackgroundColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _lIlIIlIIIl.Size = UDim2.new(0x0, 0x19, 0x0, 0x19) _lIlIIlIIIl.Position = UDim2.new(0x0, 0x0, 0x0, 0x0) _lIlIIlIIIl.ZIndex = _IllIlIIIII _lIllIllllI(_lIlIIlIIIl, 0x1, 0x0) _IlIIlIlIll.InputBegan:Connect( function (input) if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then _IIlIIIIlll = not _IIlIIIIlll callback(_IIlIIIIlll) if _IIlIIIIlll then local _IlIlIllIlI = _llIIlIIlll:Create( _lIlIIlIIIl, TweenInfo.new(0.2), { Position = UDim2.new(0x0, 0x19, 0x0, 0x0) } ) _IlIlIllIlI:Play() else local _IIllIIIIII = _llIIlIIlll:Create( _lIlIIlIIIl, TweenInfo.new(0.2), { Position = UDim2.new(0x0, 0x0, 0x0, 0x0) } ) _IIllIIIIII:Play() end
 end
 end
 ) end
 local function _lIIIIlIlIl(barGlobalPosition, nombreDeLaOpcion, enQueParteComienzaLaBarra, Section, callback) local _lIIlIlllll = Instance.new("\070\114\097\109\101") _lIIlIlllll.Parent = barGlobalPosition _lIIlIlllll.Size = UDim2.new(0x0, 0xFF, 0x0, 0x50) _lIIlIlllll.BackgroundTransparency = 0x0 _lIIlIlllll.BackgroundColor3 = Color3.fromRGB(0x11, 0xB, 0x1D) _lIIlIlllll.ZIndex = _IllIlIIIII _IIIIllIlll += 0x1 _lIIlIlllll.LayoutOrder = _IIIIllIlll _lIIlllllll(_lIIlIlllll, 0xA, 0xA, 0x0, 0x0, 0x0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Center, Enum.HorizontalAlignment.Center) _lIllIllllI(_lIIlIlllll, 0x0, 0xA) _IlIIIIIIII(_lIIlIlllll, 0x2, 0x2D, 0x1C, 0x46) _lllllIlllI.RenderStepped:Connect( function () if _IllIlllIIl == Section then _lIIlIlllll.Visible = true else _lIIlIlllll.Visible = false end
 end
 ) local _lIIIIllIII = Instance.new("\070\114\097\109\101") _lIIIIllIII.Parent = _lIIlIlllll _lIIIIllIII.Size = UDim2.new(0x0, 0xEB, 0x0, 0x14) _lIIIIllIII.BackgroundColor3 = Color3.fromRGB(0x1F, 0x14, 0x34) _lIIIIllIII.ZIndex = _IllIlIIIII _IlIIIIIIII(_lIIIIllIII, 0x2, 0x0, 0x0, 0x0) _lIllIllllI(_lIIIIllIII, 0x1, 0x0) local _lllIlIllII = Instance.new("\070\114\097\109\101") _lllIlIllII.Parent = _lIIIIllIII _lllIlIllII.Position = UDim2.new(0x0, 0x0, 0x0, 0x0) _lllIlIllII.Size = UDim2.new(0x0, 0x14, 0x0, 0x14) _lllIlIllII.ZIndex = _IllIlIIIII _lllIlIllII.BackgroundColor3 = Color3.fromRGB(0x83, 0x1D, 0xE7) _lIllIllllI(_lllIlIllII, 0x1, 0x0) local _IIllIIIlII = Instance.new("\070\114\097\109\101") _IIllIIIlII.Parent = _lIIIIllIII _IIllIIIlII.BackgroundColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IIllIIIlII.Size = UDim2.new(0x0, 0x14, 0x0, 0x14) _IIllIIIlII.Position = UDim2.new(enQueParteComienzaLaBarra, 0x0, 0x0, 0x0) _IIllIIIlII.ZIndex = _IllIlIIIII _lIllIllllI(_IIllIIIlII, 0x1, 0x0) local _llllIlllIl = Instance.new("\084\101\120\116\076\097\098\101\108") _llllIlllIl.Parent = _lIIlIlllll _llllIlllIl.Text = nombreDeLaOpcion() _llllIlllIl.TextSize = 0x14 _llllIlllIl.Font = Enum.Font.GothamBold _llllIlllIl.Size = UDim2.new(0x0, 0xEB, 0x0, 0x1E) _llllIlllIl.BackgroundTransparency = 0x1 _llllIlllIl.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _llllIlllIl.ZIndex = _IllIlIIIII local _IlIIlIllll = false _IIllIIIlII.InputBegan:Connect( function (input) if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then _IlIIlIllll = true end
 end
 ) _IllIlIIIII.InputChanged:Connect( function (input) if _IlIIlIllll and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then local _llllIlIlIl = input.Position.X - _lIIIIllIII.AbsolutePosition.X _llllIlIlIl = math.clamp(_llllIlIlIl, 0x0, _lIIIIllIII.AbsoluteSize.X - 0x14) _IIllIIIlII.Position = UDim2.new(0x0, _llllIlIlIl, 0x0, 0x0) local _lllIIlIllI = _llllIlIlIl / (_lIIIIllIII.AbsoluteSize.X - _IIllIIIlII.AbsoluteSize.X) callback(_lllIIlIllI) _lllIlIllII.Size = UDim2.new(0x0, _llllIlIlIl + 0x14, 0x0, 0x14) _llllIlllIl.Text = nombreDeLaOpcion() end
 end
 ) _IllIlIIIII.InputEnded:Connect( function (input) if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then _IlIIlIllll = false end
 end
 ) end
 local function _IlllIIlIlI(globalPosition, modoDeElBoton, Section, callback) local _lllIllIlll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _lllIllIlll.Parent = globalPosition _lllIllIlll.Size = UDim2.new(0x0, 0xFF, 0x0, 0x23) _lllIllIlll.BackgroundColor3 = Color3.fromRGB(0x11, 0xB, 0x1D) _lllIllIlll.Text = modoDeElBoton _lllIllIlll.Font = Enum.Font.GothamBold _lllIllIlll.TextSize = 0x14 _lllIllIlll.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _lllIllIlll.ZIndex = _IllIlIIIII _IIIIllIlll += 0x1 _lllIllIlll.LayoutOrder = _IIIIllIlll _lIllIllllI(_lllIllIlll, 0x0, 0xD) _IlIIIIIIII(_lllIllIlll, 0x2, 0x2D, 0x1C, 0x46) _lllllIlllI.RenderStepped:Connect( function () if _IllIlllIIl == Section then _lllIllIlll.Visible = true else _lllIllIlll.Visible = false end
 end
 ) _lllIllIlll.MouseButton1Click:Connect( function () _lllIllIlll.Text = callback() end
 ) end
 local function _IIllllIIll(sectionButtonGlobalPosition, nombreDeElSectionButton, callback) local _IIlllIIIll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IIlllIIIll.Parent = sectionButtonGlobalPosition _IIlllIIIll.BackgroundColor3 = Color3.fromRGB(0x17, 0x15, 0x26) _IIlllIIIll.Size = UDim2.new(0x0, 0xA0, 0x0, 0x21) _IIlllIIIll.Text = string.upper(nombreDeElSectionButton) _IIlllIIIll.Font = Enum.Font.GothamBold _IIlllIIIll.TextSize = 0xF _IIlllIIIll.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IIlllIIIll.ZIndex = _IllIlIIIII _lIllIllllI(_IIlllIIIll, 0x0, 0x5) _IlIIIIIIII(_IIlllIIIll, 0x2, 0x25, 0x1F, 0x38) _IIlllIIIll.MouseButton1Click:Connect(callback) end
 local _lIIlIIIlll = Instance.new("\073\109\097\103\101\066\117\116\116\111\110") _lIIlIIIlll.Parent = _IlIlIIIlll _lIIlIIIlll.BackgroundColor3 = Color3.fromRGB(0x1C, 0x12, 0x30) _lIIlIIIlll.Size = UDim2.new(0x0, 0x37, 0x0, 0x37) _lIIlIIIlll.Position = UDim2.new(0x0, 0x19F, 0x0, 0x5) _lIIlIIIlll.Image = _IIllllIIIl _lIIlIIIlll.ZIndex = _IllIlIIIII + 0x2 _lIIlIIIlll.Active = true _lIIlIIIlll.Draggable = true _lIllIllllI(_lIIlIIIlll, 0x1, 0x0) _IlIIIIIIII(_lIIlIIIlll, 0x1, 0x83, 0x1D, 0xE7) _lIIlIIIlll.MouseButton1Click:Connect( function () local _IIIlIIIIlI = _lIllIllIII.Position if _lIIIIlIIII then local _lllIlIlIII = _llIIlIIlll:Create( _lIllIllIII, TweenInfo.new(0.5), { Size = UDim2.new(0x0, 0x0, 0x0, 0x0), Visible = false } ) _lllIlIlIII:Play() else local _IIlllIIllI = _llIIlIIlll:Create( _lIllIllIII, TweenInfo.new(0.5), { Visible = true, Size = UDim2.new(0x0, 0x1C2, 0x0, 0x12C) } ) _IIlllIIllI:Play() end
 _lIIIIlIIII = not _lIIIIlIIII end
 ) local function _lIIIIlllll(enemy) local _lllIIIlIlI local _llIIIlIlII local _IIlIlIllll if _IllIlllIll.Character then if _IllIlllIll.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then _lllIIIlIlI = _IllIlllIll.Character.HumanoidRootPart.Position end
 end
 if enemy.Character then if enemy.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then _llIIIlIlII = enemy.Character.HumanoidRootPart.Position end
 end
 if _lllIIIlIlI and _llIIIlIlII then _IIlIlIllll = (_lllIIIlIlI - _llIIIlIlII).Magnitude return _IIlIlIllll else return 0x0 end
 end
 local function _IIIIIIIIII(parte) local _IIIllllIll = _IlIlIIlIIl.CFrame.Position local _lIIIlllIII = parte.Position - _IIIllllIll local _IlIllIIIll = workspace:Raycast(_IIIllllIll, _lIIIlllIII, _lIIIIlIlIl) if _IlIllIIIll then return _IlIllIIIll.Instance:IsDescendantOf(parte.Parent) else return true end
 end
 local function _lIllIIIIll(jugador) if jugador.Character then local _IlIIIIIlll = jugador.Character if _IlIIIIIlll:FindFirstChild("\072\101\097\100") then local _IlIllIIIII, enPantalla = _IlIlIIlIIl:WorldToViewportPoint(_IlIIIIIlll.Head.Position) if enPantalla then local _llIIlIlIlI = Vector2.new(_IlIllIIIII.X, _IlIllIIIII.Y) local _IlIllIIlIl = Vector2.new(_IIIllIIIll.X/0x2, _IIIllIIIll.Y/0x2) local _IIlIlIllll = (_llIIlIlIlI - _IlIllIIlIl).Magnitude if _IIlIlIllll < _IlllIllIII.radioFov then return true else return false end
 end
 end
 end
 end
 local function _lIIlIIIllI() if not _lIIIIIllIl then _lIIIIIllIl = Drawing.new("\067\105\114\099\108\101") _lIIIIIllIl.Color = Color3.fromRGB(0xFF, 0x0, 0x0) _lIIIIIllIl.Thickness = 0x2 _lIIIIIllIl.Radius = _IlllIllIII.radioFov _lIIIIIllIl.Filled = false _lIIIIIllIl.Position = Vector2.new(_IIIllIIIll.X/0x2, _IIIllIIIll.Y/0x2) _lIIIIIllIl.Visible = true end
 end
 local function _IllllIlIII() if _lIIIIIllIl then _lIIIIIllIl:Remove() _lIIIIIllIl = nil end
 end
 local function _IIIlllIIlI(jugador) local _llIIllIIIl = nil local _IlllIlIlII = nil if jugador.Team then _llIIllIIIl = jugador.Team elseif jugador.TeamColor then _llIIllIIIl = jugador.TeamColor else _llIIllIIIl = "\066\108\097\099\107" end
 if _IllIlllIll.Team then _IlllIlIlII = _IllIlllIll.Team elseif _IllIlllIll.TeamColor then _IlllIlIlII = _IllIlllIll.TeamColor else _IlllIlIlII = "\066\108\097\099\107" end
 return _llIIllIIIl ~= _IlllIlIlII end
 local _llIIllIlll = _G.teamDataDuelist local function _lIIIIlIlII(jugador) if rawget(_llIIllIlll, "\105\110\077\097\116\099\104") then local _lllIllIllI = rawget(_llIIllIlll, "\116\101\097\109\115") local _lIllIIlIlI = rawget(_lllIllIllI, "\084\101\097\109\049") local _IIIlIIlIlI = rawget(_lllIllIllI, "\084\101\097\109\050") local _llIIlIIIlI if table.find(_lIllIIlIlI, _IllIlllIll.UserId) then _llIIlIIIlI = _lIllIIlIlI elseif table.find(_IIIlIIlIlI, _IllIlllIll.UserId) then _llIIlIIIlI = _IIIlIIlIlI else _llIIlIIIlI = nil end
 if _llIIlIIIlI then if table.find(_llIIlIIIlI, jugador.UserId) then return true else return false end
 end
 end
 end
 local function _IIllIIlIlI() local _IIllIIllll = nil local _IIllIIIlII = math.huge for _, jugador in pairs(_llIIlIllII:GetPlayers()) do if jugador.Character and jugador ~= _IllIlllIll then local _IlIIIIIlll = jugador.Character local _lIIIIIlllI = 0x0 local _lIlIlIIIll = _lIllIIIIll(jugador) if _IlIIIIIlll:FindFirstChild("\072\117\109\097\110\111\105\100") then _lIIIIIlllI = _IlIIIIIlll.Humanoid.Health end
 if _IlIIIIIlll:FindFirstChild(_IlllIllIII.modoAimbotActual) then local _lIllIlIIll = _IlIIIIIlll:FindFirstChild(_IlllIllIII.modoAimbotActual) if _lIIlIllIll:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _IIlIlIllll = (_lIIlIllIll.HumanoidRootPart.Position - _lIllIlIIll.Position).Magnitude if _IlllIllIII.teamCheck then if _lIlllIllll ~= _IlllllIlII then if _IlllIllIII.wallCheckActivado then if _IIlIlIllll < _IIllIIIlII and _IIIIIIIIII(_lIllIlIIll) and _lIIIIIlllI > 0x0 and _lIlIlIIIll and _IIIlllIIlI(jugador) then _IIllIIIlII = _IIlIlIllll _IIllIIllll = _lIllIlIIll end
 else if _IIlIlIllll < _IIllIIIlII and _lIIIIIlllI > 0x0 and _lIlIlIIIll and _IIIlllIIlI(jugador) then _IIllIIIlII = _IIlIlIllll _IIllIIllll = _lIllIlIIll end
 end
 else if _IlllIllIII.wallCheckActivado then if _IIlIlIllll < _IIllIIIlII and _IIIIIIIIII(_lIllIlIIll) and _lIIIIIlllI > 0x0 and _lIlIlIIIll and not _lIIIIlIlII(jugador) then _IIllIIIlII = _IIlIlIllll _IIllIIllll = _lIllIlIIll end
 else if _IIlIlIllll < _IIllIIIlII and _lIIIIIlllI > 0x0 and _lIlIlIIIll and not _lIIIIlIlII(jugador) then _IIllIIIlII = _IIlIlIllll _IIllIIllll = _lIllIlIIll end
 end
 end
 else if _IlllIllIII.wallCheckActivado then if _IIlIlIllll < _IIllIIIlII and _IIIIIIIIII(_lIllIlIIll) and _lIIIIIlllI > 0x0 and _lIlIlIIIll then _IIllIIIlII = _IIlIlIllll _IIllIIllll = _lIllIlIIll end
 else if _IIlIlIllll < _IIllIIIlII and _lIIIIIlllI > 0x0 and _lIlIlIIIll then _IIllIIIlII = _IIlIlIllll _IIllIIllll = _lIllIlIIll end
 end
 end
 end
 end
 end
 end
 if _IIllIIllll then return _IIllIIllll else return false end
 end
 local function _IlllIIIIIl() local _IIllIIllll = nil local _IIllIIIlII = math.huge for _, jugador in pairs(_llIIlIllII:GetPlayers()) do if jugador.Character and jugador ~= _IllIlllIll then local _IlIIIIIlll = jugador.Character local _lIIIIIlllI = 0x0 local _lIlIlIIIll = _lIllIIIIll(jugador) if _IlIIIIIlll:FindFirstChild("\072\117\109\097\110\111\105\100") then _lIIIIIlllI = _IlIIIIIlll.Humanoid.Health end
 if _IlIIIIIlll:FindFirstChild("\072\101\097\100") then local _IIIIlIIIII = _IlIIIIIlll.Head if _lIIlIllIll:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _IIlIlIllll = (_lIIlIllIll.HumanoidRootPart.Position - _IIIIlIIIII.Position).Magnitude if _IIlIlIllll < _IIllIIIlII and _IIIIIIIIII(_IIIIlIIIII) and _lIIIIIlllI > 0x0 and not _lIIIIlIlII(jugador) then _IIllIIIlII = _IIlIlIllll _IIllIIllll = _IIIIlIIIII end
 end
 end
 end
 end
 if _IIllIIllll then return _IIllIIllll.Position else return false end
 end
 local function _IlIlIlIlIl(jugador) if not _lIlIIlllll[jugador] and jugador ~= _IllIlllIll then local _IIIIIllIII = Drawing.new("\076\105\110\101") _IIIIIllIII.Thickness = 0x2 _IIIIIllIII.Color = Color3.fromRGB(0xFF, 0x0, 0x0) _IIIIIllIII.Visible = false _lIlIIlllll[jugador] = _IIIIIllIII end
 end
 local function _llllIlIlII(jugador) if _lIlIIlllll[jugador] then _lIlIIlllll[jugador]:Remove() _lIlIIlllll[jugador] = nil end
 end
 local function _IlIlIlIIll(jugador) if not _llIIIllIlI[jugador] and jugador ~= _IllIlllIll then local _IlIlIIIlIl = Instance.new("\070\114\097\109\101") _IlIlIIIlIl.Parent = _IlIlIIIlll _IlIlIIIlIl.BackgroundTransparency = 0x1 _IlIlIIIlIl.AnchorPoint = Vector2.new(0.5, 0.5) _IlIIIIIIII(_IlIlIIIlIl, 0x2, 0xFF, 0x0, 0x0) _IlIlIIIlIl.Visible = false _llIIIllIlI[jugador] = _IlIlIIIlIl end
 end
 local function _llIlIlIIll(jugador) if _llIIIllIlI[jugador] then _llIIIllIlI[jugador]:Destroy() _llIIIllIlI[jugador] = nil end
 end
 local function _IlllIlIIll(jugador) if not _llIlllIIlI[jugador] and jugador ~= _IllIlllIll then local _lIllIIlIII = Instance.new("\070\114\097\109\101") _lIllIIlIII.Parent = _IlIlIIIlll _lIllIIlIII.BackgroundColor3 = Color3.fromRGB(0x0, 0xFF, 0x0) _lIllIIlIII.AnchorPoint = Vector2.new(0.5, 0.5) _IlIIIIIIII(_lIllIIlIII, 0x1, 0x0, 0x0, 0x0) _llIlllIIlI[jugador] = _lIllIIlIII end
 end
 local function _lIIIIlIlll(jugador) if _llIlllIIlI[jugador] then _llIlllIIlI[jugador]:Destroy() _llIlllIIlI[jugador] = nil end
 end
 local function _IIlIIIlIll(jugador) if jugador.Character then local _IlIIIIIlll = jugador.Character if _IlIIIIIlll:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _lIlIIlIlIl = _IlIIIIIlll.HumanoidRootPart if not _llIIllllIl then _llIIllllIl = Instance.new("\066\111\100\121\086\101\108\111\099\105\116\121") _llIIllllIl.Parent = _lIlIIlIlIl end
 if not _IIlIlIIIll then _IIlIlIIIll = Instance.new("\066\111\100\121\071\121\114\111") _IIlIlIIIll.Parent = _lIlIIlIlIl end
 _llIIllllIl.MaxForce = Vector3.new(1e9, 1e9, 1e9) _IIlIlIIIll.MaxTorque = Vector3.new(1e9, 1e9, 1e9) _IIlIlIIIll.P = 0x2710 _IIlIlIIIll.CFrame = _IlIlIIlIIl.CFrame local _lIlIIIlIIl = _IIlIIIlIIl:GetMoveVector() local _IIIlIllllI = _IlIlIIlIIl.CFrame.LookVector local _IlIllIIIll = _IlIlIIlIIl.CFrame.RightVector local _lIIIlllIII = (_IIIlIllllI * -_lIlIIIlIIl.Z) + (_IlIllIIIll * _lIlIIIlIIl.X) if _lIIIlllIII.Magnitude > 0x0 then _llIIllllIl.Velocity = _lIIIlllIII.Unit * 0x64 else _llIIllllIl.Velocity = Vector3.zero end
 end
 end
 end
 local function _IllIllIIIl(_lIIlIllIll) if _lIIlIllIll ~= _IllIlllIll.Character and _lIIlIllIll then local _IIlIlIIIIl = _lIIlIllIll if _IIlIlIIIIl:FindFirstChild(_IlllIllIII.modoHitboxExpandActual) then local _lIllIlIIll = _IIlIlIIIIl:FindFirstChild(_IlllIllIII.modoHitboxExpandActual) _lIllIlIIll.Size = Vector3.new(_IlllIllIII.grandeDeLaHitBox, _IlllIllIII.grandeDeLaHitBox, _IlllIllIII.grandeDeLaHitBox) _lIllIlIIll.Transparency = 0x0 _lIllIlIIll.Color = Color3.fromRGB(0xFF, 0x0, 0x0) _lIllIlIIll.Material = Enum.Material.Neon _lIllIlIIll.CanCollide = false end
 end
 end
 local function _IIIlllIIII(_lIIlIllIll) if _lIIlIllIll ~= _IllIlllIll.Character and _lIIlIllIll then local _IIlIlIIIIl = _lIIlIllIll if _IIlIlIIIIl:FindFirstChild(_IlllIllIII.modoHitboxExpandActual) then local _lIllIlIIll = _IIlIlIIIIl:FindFirstChild(_IlllIllIII.modoHitboxExpandActual) if _IlllIllIII.modoHitboxExpandActual == "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116" then _lIllIlIIll.Size = Vector3.new(0x2, 0x2, 0x1) _lIllIlIIll.Transparency = 0x1 _lIllIlIIll.CanCollide = true else _lIllIlIIll.Size = Vector3.new(1.1961, 1.2029, 1.2002) _lIllIlIIll.Transparency = 0x0 end
 end
 end
 end
 local function _IIIIlIlllI() local _llIIllIlII = workspace:FindFirstChild("\084\097\114\103\101\116\083\104\111\111\116", true) if _llIIllIlII then local _IlllIIlIII = _IIIIIIIIII(_llIIllIlII) local _llIllllIIl = _llIIllIlII.Position local _lIlIlIIIlI = 0x0 if _IllIlllIll.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then _lIlIlIIIlI = (_IllIlllIll.Character.HumanoidRootPart.Position - _llIllllIIl).Magnitude end
 if _lIlIlIIIlI < 0x3E8 and _IlllIIlIII then _IlIlIIlIIl.CFrame = CFrame.new(_IlIlIIlIIl.CFrame.Position, _llIllllIIl) end
 end
 end
 local function _IIlIIIIllI() if _IlIllIlIII then return end
 _IlIllIlIII = true local _IIlIIlIIIl for _, v in pairs(getgc(true)) do if typeof(v) == "\102\117\110\099\116\105\111\110" then local _lIlIIIIllI = debug.getinfo(v) if _lIlIIIIllI.name == "\070\105\114\101\066\105\110\100" and _lIlIIIIllI.source:find("\067\108\105\101\110\116\083\099\114\105\112\116\115\046\067\108\105\101\110\116\046\066\105\110\100\115") then _IIlIIlIIIl = v break end
 end
 end
 _IIlIIlIIIl(_G, "\083\104\111\111\116", true, false) task.wait(0.3) _IIlIIlIIIl(_G, "\083\104\111\111\116", false, false) _IlIllIlIII = false end
 local _llIIlIllII local _IlIIIlIIll local _IIIllIIllI _lllllIlllI.RenderStepped:Connect( function () if _IlllIllIII.silentAimActived then _llIIlIllII = _IIllIIlIlI() if _llIIlIllII then _IlIIIlIIll, _IIIllIIllI = _IlIlIIlIIl:WorldToViewportPoint(_llIIlIllII.Position) else _IlIIIlIIll = nil _IIIllIIllI = false end
 else _llIIlIllII = nil _IlIIIlIIll = nil _IIIllIIllI = false end
 end
 ) local function _lIlIIlllIl() local _lllIIlIllI = tonumber(_IlllIllIII.modoSilentActual:match("\037\100\043")) if _lllIIlIllI >= 0x64 then return true end
 return math.random(0x1,0x64) <= _lllIIlIllI end
 local _IIIIIllIll _IIIIIllIll = hookmetamethod(game, "\095\095\105\110\100\101\120", newcclosure( function (self, key) if self == _IlIlIIlIIl and key == "\086\105\101\119\112\111\114\116\083\105\122\101" and _IlllIllIII.silentAimActived and _IlIIIlIIll and _IIIllIIllI and _lIlIIlllIl() then return Vector2.new(_IlIIIlIIll.X*0x2, _IlIIIlIIll.Y*0x2) else return _IIIIIllIll(self, key) end
 end
 )) _lllllIlllI.RenderStepped:Connect( function () if _IlllIllIII.aimbotEnable then local _lIlIlIlllI = _IIllIIlIlI() if _lIlIlIlllI then local _IIlIlIllll = (_IllIlllIll.Character.HumanoidRootPart.Position - _lIlIlIlllI.Position).Magnitude if _lIlllIllll ~= _IlllllIlII then if _IIlIlIllll < _llllIIllII then local _IIIlIlIlll = CFrame.new(_IlIlIIlIIl.CFrame.Position, _lIlIlIlllI.Position) _IlIlIIlIIl.CFrame = _IlIlIIlIIl.CFrame:Lerp(_IIIlIlIlll, _IlllIllIII.fuerzaDeAimbot) end
 else if _IIlIlIllll < _llllIIllII and rawget(_G.teamDataDuelist, "\105\110\077\097\116\099\104") then local _IIIlIlIlll = CFrame.new(_IlIlIIlIIl.CFrame.Position, _lIlIlIlllI.Position) _IlIlIIlIIl.CFrame = _IlIlIIlIIl.CFrame:Lerp(_IIIlIlIlll, _IlllIllIII.fuerzaDeAimbot) end
 end
 end
 end
 if _IlllIllIII.espTracerEnable then for jugador, _IIIIIllIII in pairs(_lIlIIlllll) do if jugador.Character then local _IlIIIIIlll = jugador.Character if _IlIIIIIlll:FindFirstChild("\072\101\097\100") then local _IIIIlIIIII = _IlIIIIIlll.Head local _IlIlIlIlll, enPantalla = _IlIlIIlIIl:WorldToViewportPoint(_IIIIlIIIII.Position) if enPantalla then local _llIlIIIIll = Vector2.new(_IlIlIIlIIl.ViewportSize.X/0x2, 0x0) local _lIlIIlIllI = Vector2.new(_IlIlIlIlll.X, _IlIlIlIlll.Y) _IIIIIllIII.From = _llIlIIIIll _IIIIIllIII.To = _lIlIIlIllI _IIIIIllIII.Visible = true if _IlIIIIIlll:FindFirstChild("\072\117\109\097\110\111\105\100") then local _lIIIIIlllI = _IlIIIIIlll.Humanoid.Health if _lIIIIIlllI == 0x0 then _IIIIIllIII.Visible = false end
 end
 if _lIIIIlllll(jugador) > _llllIIllII then _IIIIIllIII.Visible = false end
 else _IIIIIllIII.Visible = false end
 else _IIIIIllIII.Visible = false end
 else _IIIIIllIII.Visible = false end
 end
 end
 if _IlllIllIII.espBoxEnable then for jugador, _IlIlIIIlIl in pairs(_llIIIllIlI) do if jugador.Character then local _IlIIIIIlll = jugador.Character if _IlIIIIIlll:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _lIlIIlIlIl = _IlIIIIIlll.HumanoidRootPart local _IIIIlIIIIl, enPantalla = _IlIlIIlIIl:WorldToScreenPoint(_lIlIIlIlIl.Position) if enPantalla then local _IlllIIlIII = _IlIlIIlIIl.ViewportSize.Y/_IIIIlIIIIl.Z local _lIIlllIlII = _IlllIIlIII*0x5 local _IlllllIIIl = _IlllIIlIII*0x3 _IlIlIIIlIl.Size = UDim2.new(0x0, _IlllllIIIl, 0x0, _lIIlllIlII) _IlIlIIIlIl.Position = UDim2.new(0x0, _IIIIlIIIIl.X, 0x0, _IIIIlIIIIl.Y) _IlIlIIIlIl.Visible = true if _lIIIIlllll(jugador) > _llllIIllII then _IlIlIIIlIl.Visible = false end
 if _IlIIIIIlll:FindFirstChild("\072\117\109\097\110\111\105\100") then local _lIIIIIlllI = _IlIIIIIlll.Humanoid.Health if _lIIIIIlllI == 0x0 then _IlIlIIIlIl.Visible = false end
 end
 else _IlIlIIIlIl.Visible = false end
 else _IlIlIIIlIl.Visible = false end
 else _IlIlIIIlIl.Visible = false end
 end
 end
 if _IlllIllIII.espVidaEnable then for jugador, _lIllIIlIII in pairs(_llIlllIIlI) do if jugador.Character then local _IlIIIIIlll = jugador.Character if _IlIIIIIlll:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _lIlIIlIlIl = _IlIIIIIlll.HumanoidRootPart local _IIIIlIIIIl, enPantalla = _IlIlIIlIIl:WorldToScreenPoint(_lIlIIlIlIl.Position) local _IIllIllIll local _IIIlIIIIll local _lIlIIlIllI = 0x1 if _IlIIIIIlll:FindFirstChild("\072\117\109\097\110\111\105\100") then local _IIlllllIII = _IlIIIIIlll.Humanoid _IIIlIIIIll = _IIlllllIII.Health _IIllIllIll = _IIlllllIII.MaxHealth _lIlIIlIllI = _IIIlIIIIll/_IIllIllIll end
 if enPantalla then local _IlllIIlIII = _IlIlIIlIIl.ViewportSize.Y/_IIIIlIIIIl.Z local _IIlIlIllll = (_IlllIIlIII * 0x3)/0x2 + 0x7 local _lIIlllIlII = (_IlllIIlIII * _lIlIIlIllI) * 0x5 local _IlllllIIIl = _IlllIIlIII _lIllIIlIII.Size = UDim2.new(0x0, _IlllllIIIl, 0x0, _lIIlllIlII) _lIllIIlIII.Position = UDim2.new(0x0, _IIIIlIIIIl.X + _IIlIlIllll, 0x0, _IIIIlIIIIl.Y) if _lIlIIlIllI > 0x0 then _lIllIIlIII.Visible = true else _lIllIIlIII.Visible = false end
 if _lIIIIlllll(jugador) > _llllIIllII then _lIllIIlIII.Visible = false end
 else _lIllIIlIII.Visible = false end
 else _lIllIIlIII.Visible = false end
 else _lIllIIlIII.Visible = false end
 end
 end
 if _IlllIllIII.showFovEnable then if _lIIIIIllIl then if _lIIIIIllIl.Radius ~= _IlllIllIII.radioFov then _lIIIIIllIl.Radius = _IlllIllIII.radioFov end
 else _lIIlIIIllI() end
 end
 if _IlllIllIII.superJumpActivado then if _IllIlllIll.Character then if _IllIlllIll.Character.Humanoid then _IllIlllIll.Character.Humanoid.JumpPower = _IlllIllIII.jumpPower _IllIlllIll.Character.Humanoid.JumpHeight = _IlllIllIII.jumpPower / 0x4 end
 end
 end
 if _IlllIllIII.superSpeedActivado then if _IllIlllIll.Character then if _IllIlllIll.Character.Humanoid then _IllIlllIll.Character.Humanoid.WalkSpeed = _IlllIllIII.velocitySpeed end
 end
 end
 if _IlllIllIII.noClipEnable then if _IllIlllIll.Character then local _lIIlIllIll = _IllIlllIll.Character for _, v in pairs(_lIIlIllIll:GetChildren()) do if v:IsA("\066\097\115\101\080\097\114\116") then v.CanCollide = false end
 end
 end
 end
 if _IlllIllIII.flyEnable then if _IllIlllIll.Character then if _IllIlllIll.Character.Humanoid then _IllIlllIll.Character.Humanoid.PlatformStand = true end
 end
 _IIlIIIlIll(_IllIlllIll) end
 if _IlllIllIII.GravityCeroActivado then if _IlllIllIII.GravityCeroActivado then workspace.Gravity = 0x32 end
 end
 if _IlllIllIII.expandHitboxEnable then for _, jugador in pairs(_llIIlIllII:GetPlayers()) do if jugador.Character then if jugador.Character:FindFirstChild("\072\117\109\097\110\111\105\100") then local _lIIIIIlllI = jugador.Character.Humanoid.Health if _lIIIIIlllI > 0x0 then _IllIllIIIl(jugador.Character) else _IIIlllIIII(jugador.Character) end
 end
 end
 end
 end
 if _IlllIllIII.aimExpDuelistEnable then _IIIIlIlllI() end
 if _IlllIllIII.autoShootEnable then local _lIlIlIlllI = _IlllIIIIIl() if _lIlIlIlllI then local _IIIlIlIlll = CFrame.new(_IlIlIIlIIl.CFrame.Position, _lIlIlIlllI) _IlIlIIlIIl.CFrame = _IlIlIIlIIl.CFrame:Lerp(_IIIlIlIlll, _IlllIllIII.fuerzaDeAimbot) _IIlIIIIllI() end
 end
 if _IlllIllIII.aimbotBodyEnable then for _, jugador in pairs(_llIIlIllII:GetPlayers()) do if jugador.Character then local _IlIIIIIlll = jugador.Character if _IlIIIIIlll:FindFirstChild("\072\101\097\100") and jugador ~= _IllIlllIll then local _IIIIlIIIII = _IlIIIIIlll.Head _IIIIlIIIII.Size = Vector3.new(0x4, 0x5, 0x3) _IIIIlIIIII.Transparency = 0x1 end
 end
 end
 end
 if _IlllIllIII.modoHitboxExpandActual == "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116" then for _, jugador in pairs(_llIIlIllII:GetPlayers()) do if jugador.Character and jugador ~= _IllIlllIll then local _IIlIlIIIIl = jugador.Character if _IIlIlIIIIl:FindFirstChild("\072\101\097\100") then local _IIIIlIIIII = _IIlIlIIIIl.Head _IIIIlIIIII.Size = Vector3.new(1.1961, 1.2029, 1.2002) _IIIIlIIIII.Transparency = 0x0 end
 end
 end
 elseif _IlllIllIII.modoHitboxExpandActual == "\072\101\097\100" then for _, jugador in pairs(_llIIlIllII:GetPlayers()) do if jugador.Character and jugador ~= _IllIlllIll then local _IIlIlIIIIl = jugador.Character if _IIlIlIIIIl:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _lIlIIlIlIl = _IIlIlIIIIl.HumanoidRootPart _lIlIIlIlIl.Size = Vector3.new(0x2, 0x2, 0x1) _lIlIIlIlIl.Transparency = 0x1 end
 end
 end
 end
 _lIllIllIII.Position = UDim2.new(0x0, _lIIlIIIlll.AbsolutePosition.X + 0x19, 0x0, _lIIlIIIlll.AbsolutePosition.Y + 0x1E) if _G.textoAdvertenciaFirebase.Body ~= "\034\034" then _lIllIllIII.Visible = false _lIIlIIIlll.Visible = false task.wait(0x1) _IllIlllIll:Kick("\069\076\032\080\065\078\069\076\032\068\065\082\075\077\065\084\084\069\082\032\069\078\084\082\079\032\069\078\032\077\065\078\084\069\078\073\077\073\069\078\084\079") end
 end
 ) if _lIlllIllll ~= _lIIIIlllIl then _lIIIIlIlII(_IIlllIllll, "\065\105\109\098\111\116", "\067\079\077\066\065\084\069", function (valor) if valor then _IlllIllIII.aimbotEnable = true else _IlllIllIII.aimbotEnable = false end
 end
 ) _IlllIIlIlI(_IIlllIllll, _IlllIllIII.modoAimbotActual, "\067\079\077\066\065\084\069", function () if _IlllIllIII.modoAimbotActual == _IlllIllIII.modosAimbot[#_IlllIllIII.modosAimbot] then _IlllIllIII.modoAimbotActual = _IlllIllIII.modosAimbot[0x1] else _IlllIllIII.modoAimbotActual = _IlllIllIII.modosAimbot[table.find(_IlllIllIII.modosAimbot, _IlllIllIII.modoAimbotActual) + 0x1] end
 return _IlllIllIII.modoAimbotActual end
 ) end
 if _lIlllIllll ~= _IlllllIlII and _lIlllIllll ~= _lIIIIlllIl then _lIIIIlIlIl(_IIlllIllll, function () return string.format("\065\105\109\098\111\116\032\083\116\114\101\110\103\116\104\058\032\037\046\049\102", _IlllIllIII.fuerzaDeAimbot) end
 , 0x0, "\067\079\077\066\065\084\069", function (valor) _IlllIllIII.fuerzaDeAimbot = valor end
 ) end
 if _lIlllIllll ~= _llllIlIIII then _lIIIIlIlII(_IIlllIllll, "\083\105\108\101\110\116\032\065\105\109", "\067\079\077\066\065\084\069", function (valor) _IlllIllIII.silentAimActived = valor end
 ) _IlllIIlIlI(_IIlllIllll, _IlllIllIII.modoSilentActual, "\067\079\077\066\065\084\069", function () if _IlllIllIII.modoSilentActual == _IlllIllIII.modosSilent[#_IlllIllIII.modosSilent] then _IlllIllIII.modoSilentActual = _IlllIllIII.modosSilent[0x1] else _IlllIllIII.modoSilentActual = _IlllIllIII.modosSilent[table.find(_IlllIllIII.modosSilent, _IlllIllIII.modoSilentActual) + 0x1] end
 return _IlllIllIII.modoSilentActual end
 ) end
 _lIIIIlIlII(_IIlllIllll, "\087\097\108\108\032\067\104\101\099\107", "\067\079\077\066\065\084\069", function (valor) _IlllIllIII.wallCheckActivado = valor end
 ) _lIIIIlIlII(_IIlllIllll, "\069\115\112\032\084\114\097\099\101\114", "\086\073\083\085\065\076\069\083", function (valor) if valor then for _, jugador in pairs(_llIIlIllII:GetPlayers()) do _IlIlIlIlIl(jugador) end
 _IIIlIlIlII = _llIIlIllII.PlayerAdded:Connect( function (jugador) _IlIlIlIlIl(jugador) end
 ) _llIlIIIIlI = _llIIlIllII.PlayerRemoving:Connect( function (jugador) _llllIlIlII(jugador) end
 ) _IlllIllIII.espTracerEnable = true else if _IIIlIlIlII then _IIIlIlIlII:Disconnect() _IIIlIlIlII = nil end
 if _llIlIIIIlI then _llIlIIIIlI:Disconnect() _llIlIIIIlI = nil end
 _IlllIllIII.espTracerEnable = false for jugador in pairs(_lIlIIlllll) do _llllIlIlII(jugador) end
 end
 end
 ) _lIIIIlIlII(_IIlllIllll, "\069\115\112\032\066\111\120", "\086\073\083\085\065\076\069\083", function (valor) if valor then for _, jugador in pairs(_llIIlIllII:GetPlayers()) do _IlIlIlIIll(jugador) end
 _IIIllIllIl = _llIIlIllII.PlayerAdded:Connect( function (jugador) _IlIlIlIIll(jugador) end
 ) _lIIIIIIlII = _llIIlIllII.PlayerRemoving:Connect( function (jugador) _llIlIlIIll(jugador) end
 ) _IlllIllIII.espBoxEnable = true else if _IIIllIllIl then _IIIllIllIl:Disconnect() _IIIllIllIl = nil end
 if _lIIIIIIlII then _lIIIIIIlII:Disconnect() _lIIIIIIlII = nil end
 _IlllIllIII.espBoxEnable = false for jugador in pairs(_llIIIllIlI) do _llIlIlIIll(jugador) end
 end
 end
 ) _lIIIIlIlII(_IIlllIllll, "\069\115\112\032\086\105\100\097", "\086\073\083\085\065\076\069\083", function (valor) if valor then for _, jugador in pairs(_llIIlIllII:GetPlayers()) do _IlllIlIIll(jugador) end
 _llIIlIllII.PlayerAdded:Connect( function (jugador) _IlllIlIIll(jugador) end
 ) _llIIlIllII.PlayerRemoving:Connect( function (jugador) _lIIIIlIlll(jugador) end
 ) _IlllIllIII.espVidaEnable = true else _IlllIllIII.espVidaEnable = false for jugador in pairs(_llIlllIIlI) do _lIIIIlIlll(jugador) end
 end
 end
 ) _lIIIIlIlII(_IIlllIllll, "\083\104\111\119\032\070\111\118", "\086\073\083\085\065\076\069\083", function (valor) if valor then _IlllIllIII.showFovEnable = true else _IlllIllIII.showFovEnable = false _IllllIlIII() end
 end
 ) _lIIIIlIlIl(_IIlllIllll, function () return string.format("\070\079\086\032\115\105\122\101\058\032\037\100", _IlllIllIII.radioFov) end
 , 0x0, "\086\073\083\085\065\076\069\083", function (valor) _IlllIllIII.radioFov = valor * 0xC8 end
 ) if _lIlllIllll ~= _lIIIIlllIl then _lIIIIlIlII(_IIlllIllll, "\084\101\097\109\032\067\104\101\099\107", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) _IlllIllIII.teamCheck = valor end
 ) end
 if _lIlllIllll ~= _lIIIIlllIl then _lIIIIlIlII(_IIlllIllll, "\083\117\112\101\114\032\074\117\109\112", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _IlllIllIII.superJumpActivado = true else _IlllIllIII.superJumpActivado = false if _IllIlllIll.Character then if _IllIlllIll.Character.Humanoid then _IllIlllIll.Character.Humanoid.JumpPower = 0x32 _IllIlllIll.Character.Humanoid.JumpHeight = 7.2 end
 end
 end
 end
 ) end
 if _lIlllIllll ~= _lIIIIlllIl then _lIIIIlIlIl(_IIlllIllll, function () return string.format("\074\117\109\112\032\080\111\119\101\114\058\032\037\100", _IlllIllIII.jumpPower) end
 , 0x0, "\077\079\086\073\077\073\069\078\084\079", function (valor) _IlllIllIII.jumpPower = valor * 0xC8 end
 ) end
 if _lIlllIllll ~= _lIIIIlllIl then _lIIIIlIlII(_IIlllIllll, "\083\117\112\101\114\032\083\112\101\101\100", "\077\079\086\073\077\073\069\078\084\079", function (valor) _IlllIllIII.superSpeedActivado = valor if valor then _IlllIllIII.superSpeedActivado = true else _IlllIllIII.superSpeedActivado = false if _IllIlllIll.Character then if _IllIlllIll.Character.Humanoid then _IllIlllIll.Character.Humanoid.WalkSpeed = 0x10 end
 end
 end
 end
 ) end
 if _lIlllIllll ~= _lIIIIlllIl then _lIIIIlIlIl(_IIlllIllll, function () return string.format("\086\101\108\111\099\105\116\121\032\083\112\101\101\100\058\032\037\100", _IlllIllIII.velocitySpeed) end
 , 0x0, "\077\079\086\073\077\073\069\078\084\079", function (valor) _IlllIllIII.velocitySpeed = valor * 0x12C end
 ) end
 _lIIIIlIlII(_IIlllIllll, "\078\111\067\108\105\112", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _IlllIllIII.noClipEnable = true else _IlllIllIII.noClipEnable = false if _IllIlllIll.Character then local _lIIlIllIll = _IllIlllIll.Character for _, v in pairs(_lIIlIllIll:GetChildren()) do if v:IsA("\066\097\115\101\080\097\114\116") then v.CanCollide = true end
 end
 end
 end
 end
 ) if _llIllIIlII.Name == "\065\110\100\114\111\105\100" or _llIllIIlII.Name == "\073\079\083" then if _lIlllIllll ~= _llllIlIIII then _lIIIIlIlII(_IIlllIllll, "\070\108\121", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _IlllIllIII.flyEnable = true else _IlllIllIII.flyEnable = false if _IllIlllIll.Character then if _IllIlllIll.Character.Humanoid then _IllIlllIll.Character.Humanoid.PlatformStand = false end
 end
 if _llIIllllIl then _llIIllllIl:Destroy() _llIIllllIl = nil end
 if _IIlIlIIIll then _IIlIlIIIll:Destroy() _IIlIlIIIll = nil end
 end
 end
 ) end
 end
 _lIIIIlIlII(_IIlllIllll, "\103\114\097\118\105\116\121\032\048", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _IlllIllIII.GravityCeroActivado = true else _IlllIllIII.GravityCeroActivado = false workspace.Gravity = 196.2 end
 end
 ) if _lIlllIllll ~= _lIIIIlllIl then _lIIIIlIlII(_IIlllIllll, "\069\120\112\097\110\100\032\072\105\116\098\111\120", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) if valor then _IlllIllIII.expandHitboxEnable = true else _IlllIllIII.expandHitboxEnable = false for _, jugador in pairs(_llIIlIllII:GetPlayers()) do _IIIlllIIII(jugador.Character) end
 end
 end
 ) end
 if _lIlllIllll ~= _lIIIIlllIl then _lIIIIlIlIl(_IIlllIllll, function () return string.format("\072\105\116\032\066\111\120\032\083\105\122\101\058\032\037\100", _IlllIllIII.grandeDeLaHitBox) end
 , 0x0, "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) _IlllIllIII.grandeDeLaHitBox = valor * 0x64 end
 ) _IlllIIlIlI(_IIlllIllll, _IlllIllIII.modoHitboxExpandActual, "\069\078\069\077\089\032\067\079\078\070\073\071", function () if _IlllIllIII.modoHitboxExpandActual == _IlllIllIII.modosHitboxExpand[#_IlllIllIII.modosHitboxExpand] then _IlllIllIII.modoHitboxExpandActual = _IlllIllIII.modosHitboxExpand[0x1] else _IlllIllIII.modoHitboxExpandActual = _IlllIllIII.modosHitboxExpand[table.find(_IlllIllIII.modosHitboxExpand, _IlllIllIII.modoHitboxExpandActual) + 0x1] end
 return _IlllIllIII.modoHitboxExpandActual end
 ) end
 if _lIlllIllll == _IlllllIlII then _lIIIIlIlII(_IIlllIllll, "\065\105\109\032\069\120\112\032\040\068\117\101\108\105\115\116\041", "\067\079\077\066\065\084\069", function (valor) if valor then _IlllIllIII.aimExpDuelistEnable = true else _IlllIllIII.aimExpDuelistEnable = false end
 end
 ) end
 if _lIlllIllll == _IlllllIlII and (_llIllIIlII == Enum.Platform.IOS or _llIllIIlII == Enum.Platform.Android) then _lIIIIlIlII(_IIlllIllll, "\065\117\116\111\032\083\104\111\111\116", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) if valor then _IlllIllIII.autoShootEnable = true else _IlllIllIII.autoShootEnable = false end
 end
 ) end
 if _lIlllIllll ~= _lIIIIlllIl then _lIIIIlIlII(_IIlllIllll, "\065\105\109\098\111\116\032\066\111\100\121", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) if valor then _IlllIllIII.aimbotBodyEnable = true else _IlllIllIII.aimbotBodyEnable = false for _, jugador in pairs(_llIIlIllII:GetPlayers()) do if jugador.Character:FindFirstChild("\072\101\097\100") and jugador ~= _IllIlllIll then local _IIIIlIIIII = jugador.Character.Head _IIIIlIIIII.Size = Vector3.new(1.1961, 1.2029, 1.2002) _IIIIlIIIII.Transparency = 0x0 end
 end
 end
 end
 ) end
 if _lIlllIllll == _lIIIIlllIl then _lIIIIlIlII(_IIlllIllll, "\078\111\032\082\101\099\111\105\108", "\067\079\077\066\065\084\069", function (valor) if valor then for name, dato in pairs(_lIIlIlllll) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootRecoil then dato.ShootRecoil = 0x0 end
 if dato.ShootSpread then dato.ShootSpread = 0x0 end
 end
 end
 else for name, dato in pairs(_lIIlIlllll) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootRecoil then dato.ShootRecoil = _IIllIIIIIl[name].ShootRecoil end
 if dato.ShootSpread then dato.ShootSpread = _IIllIIIIIl[name].ShootSpread end
 end
 end
 end
 end
 ) end
 if _lIlllIllll == _lIIIIlllIl then _lIIIIlIlII(_IIlllIllll, "\082\097\112\105\100\032\070\105\114\101", "\067\079\077\066\065\084\069", function (valor) if valor then for name, dato in pairs(_lIIlIlllll) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootCooldown then dato.ShootCooldown = 0x0 end
 end
 end
 else for name, dato in pairs(_lIIlIlllll) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootCooldown then dato.ShootCooldown = _IIllIIIIIl[name].ShootCooldown end
 end
 end
 end
 end
 ) end
 _lIIIIlIlII(_IIlllIllll, "\066\121\112\097\115\115\032\080\114\111\116\111\099\111\108", "\066\089\080\065\083\083", function () return end
 ) _lIIIIlIlII(_IIlllIllll, "\083\121\115\116\101\109\032\069\120\112\108\111\105\116\115", "\066\089\080\065\083\083", function () return end
 ) _lIIIIlIlII(_IIlllIllll, "\083\105\108\101\110\116\032\073\110\106\101\099\116\105\111\110", "\066\089\080\065\083\083", function () return end
 ) _lIIIIlIlII(_IIlllIllll, "\082\111\111\116\032\065\099\099\101\115\115", "\066\089\080\065\083\083", function () return end
 ) _IIllllIIll(_IlIlIlIIII, "\067\111\109\098\097\116\032\55356\57263", function () _IllIlllIIl = "\067\079\077\066\065\084\069" end
 ) _IIllllIIll(_IlIlIlIIII, "\077\111\118\101\109\101\110\116\032\55356\57283", function () _IllIlllIIl = "\077\079\086\073\077\073\069\078\084\079" end
 ) _IIllllIIll(_IlIlIlIIII, "\086\105\115\117\097\108\115\032\55357\56385\65039", function () _IllIlllIIl = "\086\073\083\085\065\076\069\083" end
 ) if _lIlllIllll ~= _lIIIIlllIl then _IIllllIIll(_IlIlIlIIII, "\069\110\101\109\121\032\067\111\110\102\105\103\032\55357\56420", function () _IllIlllIIl = "\069\078\069\077\089\032\067\079\078\070\073\071" end
 ) end
 _IIllllIIll(_IlIlIlIIII, "\066\121\032\080\097\115\115\032\55357\56594", function () _IllIlllIIl = "\066\089\080\065\083\083" end
 ) _lllllllIlI:SetCore("\083\101\110\100\078\111\116\105\102\105\099\097\116\105\111\110", { Title = "\068\065\082\075\077\065\084\084\069\082\032\080\065\078\069\076", Text = "\073\078\073\067\073\065\068\079\032\067\079\078\032\069\088\073\084\079", Icon = _IIllllIIIl, Duration = 0x5 }) local _IlIlllIlII = game:GetService("\076\105\103\104\116\105\110\103") local function _IIlIllIlIl(objeto) if objeto:IsA("\084\101\120\116\117\114\101") or objeto:IsA("\068\101\099\097\108") or objeto:IsA("\066\097\115\101\080\097\114\116") or objeto:IsA("\080\097\114\116\105\099\108\101\069\109\105\116\116\101\114") or objeto:IsA("\083\109\111\107\101") or objeto:IsA("\070\105\114\101") or objeto:IsA("\083\112\097\114\107\108\101\115") or objeto:IsA("\080\111\105\110\116\076\105\103\104\116") or objeto:IsA("\083\112\111\116\076\105\103\104\116") or objeto:IsA("\083\117\114\102\097\099\101\076\105\103\104\116") or objeto:IsA("\066\101\097\109") or objeto:IsA("\084\114\097\105\108") then if not objeto:IsA("\066\097\115\101\080\097\114\116") and not objeto:IsA("\080\097\114\116\105\099\108\101\069\109\105\116\116\101\114") then objeto:Destroy() end
 if objeto:IsA("\066\097\115\101\080\097\114\116") then objeto.Material = Enum.Material.SmoothPlastic objeto.Reflectance = 0x0 end
 if objeto:IsA("\083\109\111\107\101") or objeto:IsA("\070\105\114\101") or objeto:IsA("\083\112\097\114\107\108\101\115") or objeto:IsA("\080\111\105\110\116\076\105\103\104\116") or objeto:IsA("\083\112\111\116\076\105\103\104\116") or objeto:IsA("\083\117\114\102\097\099\101\076\105\103\104\116") or objeto:IsA("\066\101\097\109") or objeto:IsA("\084\114\097\105\108") then objeto.Enabled = false end
 end
 end
 for _, objeto in pairs(game:GetDescendants()) do _IIlIllIlIl(objeto) end
 game.DescendantAdded:Connect( function (objeto) _IIlIllIlIl(objeto) end
 ) _IlIlllIlII.GlobalShadows = false _IlIlllIlII.Brightness = 0x1 _IlIlllIlII.FogEnd = 0x3B9ACA00 _IlIlllIlII.EnvironmentDiffuseScale = 0x0 _IlIlllIlII.EnvironmentSpecularScale = 0x0 for _, efecto in ipairs(_IlIlllIlII:GetChildren()) do if efecto:IsA("\066\108\111\111\109\069\102\102\101\099\116") or efecto:IsA("\066\108\117\114\069\102\102\101\099\116") or efecto:IsA("\067\111\108\111\114\067\111\114\114\101\099\116\105\111\110\069\102\102\101\099\116") or efecto:IsA("\083\117\110\082\097\121\115\069\102\101\099\116") or efecto:IsA("\068\101\112\116\104\079\102\070\105\101\108\100\069\102\102\101\099\116") or efecto:IsA("\065\116\109\111\115\112\104\101\114\101") then efecto:Destroy() end
 end
 end
 end
 )(...)
