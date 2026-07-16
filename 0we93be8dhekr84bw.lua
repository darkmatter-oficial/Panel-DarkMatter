--[[ Protected by Lua Guard ]]

( function (...) if _G.keyValida and _G.textoAdvertenciaFirebase.Body == "\034\034" then local _lllIlIIIII = 2.0 local _lIllIIllII = game:GetService("\080\108\097\121\101\114\115") local _IIIlIIIllI = _lIllIIllII.LocalPlayer local _IllIlllIII = _IIIlIIIllI:WaitForChild("\080\108\097\121\101\114\071\117\105") local _lllllIIIIl = Instance.new("\083\099\114\101\101\110\071\117\105") _lllllIIIIl.Parent = _IllIlllIII local _lIlllllllI = game:GetService("\082\117\110\083\101\114\118\105\099\101") local _IIlllIIlIl = game:GetService("\084\119\101\101\110\083\101\114\118\105\099\101") local _lIIllIIIlI = _IIIlIIIllI.Character or _IIIlIIIllI.CharacterAdded:Wait() local _IllllIlIII = game:GetService("\083\116\097\114\116\101\114\071\117\105") _lllllIIIIl.DisplayOrder = 0xF423F _lllllIIIIl.ZIndexBehavior = Enum.ZIndexBehavior.Global local _lIIlIIllIl = workspace.CurrentCamera local _IlIIIIllll = _lIIlIIllIl.ViewportSize local _IlIllIlIII = RaycastParams.new() _IlIllIlIII.FilterType = Enum.RaycastFilterType.Exclude _IlIllIlIII.FilterDescendantsInstances = {_lIIllIIIlI} local _IIIIllIllI = game:GetService("\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101") local _lIIIIlIIlI = tostring(game.PlaceId) print(_lIIIIlIIlI) local _IlIIlIlIII = _IIIIllIllI:GetPlatform() local _IllIIIlllI = game:GetService("\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101") local _IlIIlIIlll = _IIIlIIIllI:WaitForChild("\080\108\097\121\101\114\083\099\114\105\112\116\115") local _lllIlllllI local _IIlIlllIll local _llIIIIIlll = "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\048\051\049\057\057\056\051\057\054\052\050\048\050\056" local _lllIlIIIIl = "\049\055\054\050\053\051\053\057\057\054\050" local _IIlllIllll = "\049\050\050\051\049\048\050\055\048\056\054\055\049\051\051" local _IIIIIlIllI = "\057\048\049\056\052\050\056\055\053\056\048\049\055\052" local _IlllllllII = "\050\056\054\048\057\048\052\050\057" local _lIllIIlIII = "\055\049\054\048\048\052\053\057\056\051\049\051\051\051" if _IlIIlIlIII.Name == "\065\110\100\114\111\105\100" or _IlIIlIlIII.Name == "\073\079\083" then if _lIIIIlIIlI ~= _IlllllllII then _lllIlllllI = require(_IlIIlIIlll:WaitForChild("\080\108\097\121\101\114\077\111\100\117\108\101")) _IIlIlllIll = _lllIlllllI:GetControls() end
 end
 if _lIIIIlIIlI == _IIIIIlIllI or _lIIIIlIIlI == _lIllIIlIII then _IIIlIIIllI:Kick("\069\120\112\101\114\105\101\110\099\105\097\032\080\069\076\073\071\082\079\083\065\032\100\101\116\101\099\116\097\100\097\044\032\108\111\032\109\101\106\111\114\032\101\115\032\078\079\032\117\115\097\114\032\101\108\032\112\097\110\101\108\032\068\097\114\107\077\097\116\116\101\114\032\101\110\032\101\115\116\097\032\101\120\112\101\114\105\101\110\099\105\097\032\112\097\114\097\032\101\118\105\116\097\114\032\066\065\078\069\079\083\032\111\032\097\114\114\117\105\110\097\114\032\108\097\032\101\120\112\101\114\105\101\110\099\105\097") end
 local _lIIIIlllII if _lIIIIlIIlI == _lllIlIIIIl then _lIIIIlllII = require(_IllIIIlllI.Modules.ItemLibrary).Items end
 local _IIIllIIlll local _IllllIllll local _IIlllllIll local _llllllllII local _llIIIlllll local _llllllIlIl local _IIlIlIlIll local _lIlIIIllll local _llIlIllIIl local _lIlllllIII = true local _IlllIIlIll = "\067\079\077\066\065\084\069" local _lIIIllIlII local _lIllllIlIl local _IlllIIIIll local _IlIIlIllll local _llIlIllIIl local _IIIlIIlIll local _lIIllIllll local _llIlIlIIlI local _lIlIlIIIll = 0xFA local _llIIIlllll = false local _IIIIIIIlIl = 0xF423F local _llllIlIlII local _IllIIIIIIl = 0x0 local _lIlIIIIIIl = {} local _lllIIlIlIl = {} local _lllllIIIlI = {} local _lllIIllIll = { aimbotEnable = false, espTracerEnable = false, espBoxEnable = false, espVidaEnable = false, showFovEnable = false, wallCheckActivado = false, radioFov = 0x5A, fuerzaDeAimbot = 0.0, teamCheck = false, superJumpActivado = false, superSpeedActivado = false, GravityCeroActivado = false, grandeDeLaHitBox = 0x32, expandHitboxEnable = false, velocitySpeed = 0x32, jumpPower = 0x64, aimExpDuelistEnable = false, autoShootEnable = false, silentAimActived = false, aimbotBodyEnable = false, modosSilent = { "\049\048\048\037", "\055\048\037", "\053\048\037", "\051\048\037", "\050\048\037", "\053\037" }, modoSilentActual = "\049\048\048\037", modosHitboxExpand = { "\072\101\097\100", "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116" }, modoHitboxExpandActual = "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116", modosAimbot = { "\072\101\097\100", "\085\112\112\101\114\084\111\114\115\111" }, modoAimbotActual = "\072\101\097\100" } if _lIIIIlIIlI == _IIlllIllll or _lIIIIlIIlI == _lllIlIIIIl then _lllIIllIll.fuerzaDeAimbot = 0x1 end
 _IIIlIIIllI.CharacterAdded:Connect( function (char) _lIIllIIIlI = char _IlIllIlIII.FilterDescendantsInstances = {_lIIllIIIlI} if _IIIlIIlIll then _IIIlIIlIll:Destroy() _IIIlIIlIll = nil end
 if _lIIllIllll then _lIIllIllll:Destroy() _lIIllIllll = nil end
 end
 ) _lllllIIIIl.ResetOnSpawn = false if _lIIIIlIIlI == _lllIlIIIIl then local function _llIIlIIIlI(tabla) local _lllllIIlIl = {} for clave, valor in pairs(tabla) do if typeof(valor) == "\116\097\098\108\101" then _lllllIIlIl[clave] = _llIIlIIIlI(valor) else _lllllIIlIl[clave] = valor end
 end
 return _lllllIIlIl end
 _llllIlIlII = _llIIlIIIlI(_lIIIIlllII) end
 local function _IIlIlIllII(globalPosition, posX, posY, grosorX, grosorY, color1, color2, color3) local _IlllllIIlI = Instance.new("\070\114\097\109\101") _IlllllIIlI.Parent = globalPosition _IlllllIIlI.BackgroundColor3 = Color3.fromRGB(color1, color2, color3) _IlllllIIlI.Size = UDim2.new(0x0, grosorX, 0x0, grosorY) _IlllllIIlI.Position = UDim2.new(0x0, posX, 0x0, posY) _IlllllIIlI.BorderSizePixel = 0x0 _IlllllIIlI.ZIndex = _IIIIIIIlIl + 0x1 end
 local function _IlIIlIlIll(textGlobalPosition, text, posX, posY, size, fuente, color1, color2, color3) local _IIlIIIIlIl = Instance.new("\084\101\120\116\076\097\098\101\108") _IIlIIIIlIl.Parent = textGlobalPosition _IIlIIIIlIl.TextColor3 = Color3.fromRGB(color1, color2, color3) _IIlIIIIlIl.TextSize = size _IIlIIIIlIl.Size = UDim2.new(0x0, 0x1, 0x0, 0x1) _IIlIIIIlIl.Text = text _IIlIIIIlIl.Font = fuente _IIlIIIIlIl.Position = UDim2.new(0x0, posX, 0x0, posY) _IIlIIIIlIl.BackgroundTransparency = 0x1 _IIlIIIIlIl.ZIndex = _IIIIIIIlIl end
 local function _IIIIlIIIII(redondearObjeto, px, size) local _lIllIIIIlI = Instance.new("\085\073\067\111\114\110\101\114") _lIllIIIIlI.Parent = redondearObjeto _lIllIIIIlI.CornerRadius = UDim.new(px, size) end
 local function _IIllIIlIII(bordeDeObjeto, thickness, color1, color2, color3) local _IIllIIlIII = Instance.new("\085\073\083\116\114\111\107\101") _IIllIIlIII.Parent = bordeDeObjeto _IIllIIlIII.ApplyStrokeMode = Enum.ApplyStrokeMode.Border _IIllIIlIII.Thickness = thickness _IIllIIlIII.Color = Color3.fromRGB(color1, color2, color3) end
 local function _llIIIllllI(objetoParaLayout, _llIlIlIlII, paddingTop, paddingBottom, paddingLeft, paddingRight, fillDirection, verticalAlignment, horizontalAlignment) local _llIIIllllI = Instance.new("\085\073\076\105\115\116\076\097\121\111\117\116") _llIIIllllI.Parent = objetoParaLayout _llIIIllllI.FillDirection = fillDirection _llIIIllllI.VerticalAlignment = verticalAlignment _llIIIllllI.HorizontalAlignment = horizontalAlignment _llIIIllllI.Padding = UDim.new(0x0, _llIlIlIlII) _llIIIllllI.SortOrder = Enum.SortOrder.LayoutOrder local _llIlIlIlII = Instance.new("\085\073\080\097\100\100\105\110\103") _llIlIlIlII.Parent = objetoParaLayout _llIlIlIlII.PaddingTop = UDim.new(0x0, paddingTop) _llIlIlIlII.PaddingBottom = UDim.new(0x0, paddingBottom) _llIlIlIlII.PaddingLeft = UDim.new(0x0, paddingLeft) _llIlIlIlII.PaddingRight = UDim.new(0x0, paddingRight) if objetoParaLayout:IsA("\083\099\114\111\108\108\105\110\103\070\114\097\109\101") then _llIIIllllI:GetPropertyChangedSignal("\065\098\115\111\108\117\116\101\067\111\110\116\101\110\116\083\105\122\101"):Connect( function () objetoParaLayout.CanvasSize = UDim2.new(0x0, 0x0, 0x0, _llIIIllllI.AbsoluteContentSize.Y + 0x1E) end
 ) end
 end
 local _IlllIllllI = Instance.new("\070\114\097\109\101") _IlllIllllI.Parent = _lllllIIIIl _IlllIllllI.Size = UDim2.new(0x0, 0x1C2, 0x0, 0x12C) _IlllIllllI.AnchorPoint = Vector2.new(0x1, 0x0) _IlllIllllI.Active = true _IlllIllllI.BackgroundColor3 = Color3.fromRGB(0xD, 0x9, 0x17) _IlllIllllI.BorderSizePixel = 0x0 _IlllIllllI.ClipsDescendants = true _IlllIllllI.ZIndex = _IIIIIIIlIl _IIIIlIIIII(_IlllIllllI, 0x0, 0xA) _IIllIIlIII(_IlllIllllI, 0x3, 0x0, 0x0, 0x0) _IIlIlIllII(_IlllIllllI, 0x0, 0x23, 0x1C2, 0x3, 0x0, 0x0, 0x0) _IlIIlIlIll(_IlllIllllI, string.format("\068\065\082\075\077\065\084\084\069\082\032\037\046\049\102\032\070\114\101\101", _lllIlIIIII), 0xE1, 0x10, 0x23, Enum.Font.GothamBold, 0xAF, 0x7E, 0xF7) _IlIIlIlIll(_IlllIllllI, string.format("\080\076\065\084\070\079\082\077\058\032\037\115", _IlIIlIlIII.Name), 0x56, 0x11C, 0xF, Enum.Font.GothamBold, 0xFF, 0xFF, 0xFF) _IIlIlIllII(_IlllIllllI, 0xAF, 0x23, 0x3, 0x109, 0x0, 0x0, 0x0) _IIlIlIllII(_IlllIllllI, 0x0, 0x109, 0xAF, 0x3, 0x0, 0x0, 0x0) local _IlIIIlIllI = Instance.new("\070\114\097\109\101") _IlIIIlIllI.Parent = _IlllIllllI _IlIIIlIllI.Size = UDim2.new(0x0, 0x1C2, 0x0, 0x109) _IlIIIlIllI.Position = UDim2.new(0x0, 0x0, 0x0, 0x23) _IlIIIlIllI.BackgroundTransparency = 0x1 _IlIIIlIllI.ZIndex = _IIIIIIIlIl local _IlIIIlIIll = Instance.new("\083\099\114\111\108\108\105\110\103\070\114\097\109\101") _IlIIIlIIll.Parent = _IlIIIlIllI _IlIIIlIIll.BackgroundTransparency = 0x1 _IlIIIlIIll.Size = UDim2.new(0x0, 0xAF, 0x0, 0xE6) _IlIIIlIIll.ScrollBarThickness = 0x0 _IlIIIlIIll.ZIndex = _IIIIIIIlIl _llIIIllllI(_IlIIIlIIll, 0xA, 0x10, 0x0, 0x0, 0x0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Top, Enum.HorizontalAlignment.Center) local _lIlllIlIII = Instance.new("\083\099\114\111\108\108\105\110\103\070\114\097\109\101") _lIlllIlIII.Parent = _IlIIIlIllI _lIlllIlIII.BackgroundTransparency = 0x1 _lIlllIlIII.Size = UDim2.new(0x0, 0x113, 0x0, 0x109) _lIlllIlIII.Position = UDim2.new(0x0, 0xAF, 0x0, 0x0) _lIlllIlIII.ScrollBarThickness = 0x4 _lIlllIlIII.ZIndex = _IIIIIIIlIl _llIIIllllI(_lIlllIlIII, 0xA, 0xA, 0x0, 0x0, 0x0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Top, Enum.HorizontalAlignment.Center) local function _lIIllIllII(SwitchGlobalPosition, nombreDeLaOpcion, Section, callback) local _lIIIlIIIII = false local _lIlIlIIllI = Instance.new("\070\114\097\109\101") _lIlIlIIllI.Parent = SwitchGlobalPosition _lIlIlIIllI.Size = UDim2.new(0x0, 0xFF, 0x0, 0x28) _lIlIlIIllI.BackgroundTransparency = 0x0 _lIlIlIIllI.BackgroundColor3 = Color3.fromRGB(0x11, 0xB, 0x1D) _lIlIlIIllI.ZIndex = _IIIIIIIlIl _IllIIIIIIl = _IllIIIIIIl + 0x1 _lIlIlIIllI.LayoutOrder = _IllIIIIIIl _IIIIlIIIII(_lIlIlIIllI, 0x0, 0xA) _IIllIIlIII(_lIlIlIIllI, 0x2, 0x2D, 0x1C, 0x46) _llIIIllllI(_lIlIlIIllI, 0xA, 0x0, 0x0, 0xA, 0xA, Enum.FillDirection.Horizontal, Enum.VerticalAlignment.Center, Enum.HorizontalAlignment.Left) _lIlllllllI.RenderStepped:Connect( function () if _IlllIIlIll == Section then _lIlIlIIllI.Visible = true else _lIlIlIIllI.Visible = false end
 end
 ) local _IIIlIIlllI = Instance.new("\084\101\120\116\076\097\098\101\108") _IIIlIIlllI.Parent = _lIlIlIIllI _IIIlIIlllI.Size = UDim2.new(0x0, 0xAF, 0x0, 0x19) _IIIlIIlllI.BackgroundTransparency = 0x1 _IIIlIIlllI.TextSize = 0x14 _IIIlIIlllI.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IIIlIIlllI.Text = string.upper(nombreDeLaOpcion) _IIIlIIlllI.TextXAlignment = Enum.TextXAlignment.Left _IIIlIIlllI.Font = Enum.Font.GothamBold _IIIlIIlllI.ZIndex = _IIIIIIIlIl local _llllllIIll = Instance.new("\070\114\097\109\101") _llllllIIll.Parent = _lIlIlIIllI _llllllIIll.Size = UDim2.new(0x0, 0x32, 0x0, 0x19) _llllllIIll.BackgroundColor3 = Color3.fromRGB(0x83, 0x1D, 0xE7) _llllllIIll.ZIndex = _IIIIIIIlIl _IIIIlIIIII(_llllllIIll, 0x1, 0x0) local _IlIllIIlIl = Instance.new("\070\114\097\109\101") _IlIllIIlIl.Parent = _llllllIIll _IlIllIIlIl.BackgroundColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IlIllIIlIl.Size = UDim2.new(0x0, 0x19, 0x0, 0x19) _IlIllIIlIl.Position = UDim2.new(0x0, 0x0, 0x0, 0x0) _IlIllIIlIl.ZIndex = _IIIIIIIlIl _IIIIlIIIII(_IlIllIIlIl, 0x1, 0x0) _llllllIIll.InputBegan:Connect( function (input) if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then _lIIIlIIIII = not _lIIIlIIIII callback(_lIIIlIIIII) if _lIIIlIIIII then local _IlIIIIIlII = _IIlllIIlIl:Create( _IlIllIIlIl, TweenInfo.new(0.2), { Position = UDim2.new(0x0, 0x19, 0x0, 0x0) } ) _IlIIIIIlII:Play() else local _IIIIllIlII = _IIlllIIlIl:Create( _IlIllIIlIl, TweenInfo.new(0.2), { Position = UDim2.new(0x0, 0x0, 0x0, 0x0) } ) _IIIIllIlII:Play() end
 end
 end
 ) end
 local function _IlIIllIIll(barGlobalPosition, nombreDeLaOpcion, enQueParteComienzaLaBarra, Section, callback) local _lIIlllIIll = Instance.new("\070\114\097\109\101") _lIIlllIIll.Parent = barGlobalPosition _lIIlllIIll.Size = UDim2.new(0x0, 0xFF, 0x0, 0x50) _lIIlllIIll.BackgroundTransparency = 0x0 _lIIlllIIll.BackgroundColor3 = Color3.fromRGB(0x11, 0xB, 0x1D) _lIIlllIIll.ZIndex = _IIIIIIIlIl _IllIIIIIIl = _IllIIIIIIl + 0x1 _lIIlllIIll.LayoutOrder = _IllIIIIIIl _llIIIllllI(_lIIlllIIll, 0xA, 0xA, 0x0, 0x0, 0x0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Center, Enum.HorizontalAlignment.Center) _IIIIlIIIII(_lIIlllIIll, 0x0, 0xA) _IIllIIlIII(_lIIlllIIll, 0x2, 0x2D, 0x1C, 0x46) _lIlllllllI.RenderStepped:Connect( function () if _IlllIIlIll == Section then _lIIlllIIll.Visible = true else _lIIlllIIll.Visible = false end
 end
 ) local _IIllIIlIII = Instance.new("\070\114\097\109\101") _IIllIIlIII.Parent = _lIIlllIIll _IIllIIlIII.Size = UDim2.new(0x0, 0xEB, 0x0, 0x14) _IIllIIlIII.BackgroundColor3 = Color3.fromRGB(0x1F, 0x14, 0x34) _IIllIIlIII.ZIndex = _IIIIIIIlIl _IIllIIlIII(_IIllIIlIII, 0x2, 0x0, 0x0, 0x0) _IIIIlIIIII(_IIllIIlIII, 0x1, 0x0) local _IIlIllIIII = Instance.new("\070\114\097\109\101") _IIlIllIIII.Parent = _IIllIIlIII _IIlIllIIII.Position = UDim2.new(0x0, 0x0, 0x0, 0x0) _IIlIllIIII.Size = UDim2.new(0x0, 0x14, 0x0, 0x14) _IIlIllIIII.ZIndex = _IIIIIIIlIl _IIlIllIIII.BackgroundColor3 = Color3.fromRGB(0x83, 0x1D, 0xE7) _IIIIlIIIII(_IIlIllIIII, 0x1, 0x0) local _IIIIlIIIIl = Instance.new("\070\114\097\109\101") _IIIIlIIIIl.Parent = _IIllIIlIII _IIIIlIIIIl.BackgroundColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IIIIlIIIIl.Size = UDim2.new(0x0, 0x14, 0x0, 0x14) _IIIIlIIIIl.Position = UDim2.new(enQueParteComienzaLaBarra, 0x0, 0x0, 0x0) _IIIIlIIIIl.ZIndex = _IIIIIIIlIl _IIIIlIIIII(_IIIIlIIIIl, 0x1, 0x0) local _IIIlIIlllI = Instance.new("\084\101\120\116\076\097\098\101\108") _IIIlIIlllI.Parent = _lIIlllIIll _IIIlIIlllI.Text = nombreDeLaOpcion() _IIIlIIlllI.TextSize = 0x14 _IIIlIIlllI.Font = Enum.Font.GothamBold _IIIlIIlllI.Size = UDim2.new(0x0, 0xEB, 0x0, 0x1E) _IIIlIIlllI.BackgroundTransparency = 0x1 _IIIlIIlllI.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IIIlIIlllI.ZIndex = _IIIIIIIlIl local _llIlIIIIlI = false _IIIIlIIIIl.InputBegan:Connect( function (input) if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then _llIlIIIIlI = true end
 end
 ) _IIIIllIllI.InputChanged:Connect( function (input) if _llIlIIIIlI and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then local _lIllIllIll = input.Position.X - _IIllIIlIII.AbsolutePosition.X _lIllIllIll = math.clamp(_lIllIllIll, 0x0, _IIllIIlIII.AbsoluteSize.X - 0x14) _IIIIlIIIIl.Position = UDim2.new(0x0, _lIllIllIll, 0x0, 0x0) local _lllllIIIlI = _lIllIllIll / (_IIllIIlIII.AbsoluteSize.X - _IIIIlIIIIl.AbsoluteSize.X) callback(_lllllIIIlI) _IIlIllIIII.Size = UDim2.new(0x0, _lIllIllIll + 0x14, 0x0, 0x14) _IIIlIIlllI.Text = nombreDeLaOpcion() end
 end
 ) _IIIIllIllI.InputEnded:Connect( function (input) if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then _llIlIIIIlI = false end
 end
 ) end
 local function _IlIllIIlll(globalPosition, modoDeElBoton, Section, callback) local _IlIlIllIlI = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IlIlIllIlI.Parent = globalPosition _IlIlIllIlI.Size = UDim2.new(0x0, 0xFF, 0x0, 0x23) _IlIlIllIlI.BackgroundColor3 = Color3.fromRGB(0x11, 0xB, 0x1D) _IlIlIllIlI.Text = modoDeElBoton _IlIlIllIlI.Font = Enum.Font.GothamBold _IlIlIllIlI.TextSize = 0x14 _IlIlIllIlI.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IlIlIllIlI.ZIndex = _IIIIIIIlIl _IllIIIIIIl = _IllIIIIIIl + 0x1 _IlIlIllIlI.LayoutOrder = _IllIIIIIIl _IIIIlIIIII(_IlIlIllIlI, 0x0, 0xD) _IIllIIlIII(_IlIlIllIlI, 0x2, 0x2D, 0x1C, 0x46) _lIlllllllI.RenderStepped:Connect( function () if _IlllIIlIll == Section then _IlIlIllIlI.Visible = true else _IlIlIllIlI.Visible = false end
 end
 ) _IlIlIllIlI.MouseButton1Click:Connect( function () _IlIlIllIlI.Text = callback() end
 ) end
 local function _IIIlIlllIl(sectionButtonGlobalPosition, nombreDeElSectionButton, callback) local _llIlllIIll = Instance.new("\084\101\120\116\066\117\116\116\111\110") _llIlllIIll.Parent = sectionButtonGlobalPosition _llIlllIIll.BackgroundColor3 = Color3.fromRGB(0x17, 0x15, 0x26) _llIlllIIll.Size = UDim2.new(0x0, 0xA0, 0x0, 0x21) _llIlllIIll.Text = string.upper(nombreDeElSectionButton) _llIlllIIll.Font = Enum.Font.GothamBold _llIlllIIll.TextSize = 0xF _llIlllIIll.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _llIlllIIll.ZIndex = _IIIIIIIlIl _IIIIlIIIII(_llIlllIIll, 0x0, 0x5) _IIllIIlIII(_llIlllIIll, 0x2, 0x25, 0x1F, 0x38) _llIlllIIll.MouseButton1Click:Connect(callback) end
 local _IIllIIlIIl = Instance.new("\073\109\097\103\101\066\117\116\116\111\110") _IIllIIlIIl.Parent = _lllllIIIIl _IIllIIlIIl.BackgroundColor3 = Color3.fromRGB(0x1C, 0x12, 0x30) _IIllIIlIIl.Size = UDim2.new(0x0, 0x37, 0x0, 0x37) _IIllIIlIIl.Position = UDim2.new(0x0, 0x19F, 0x0, 0x5) _IIllIIlIIl.Image = _llIIIIIlll _IIllIIlIIl.ZIndex = _IIIIIIIlIl + 0x2 _IIllIIlIIl.Active = true _IIllIIlIIl.Draggable = true _IIIIlIIIII(_IIllIIlIIl, 0x1, 0x0) _IIllIIlIII(_IIllIIlIIl, 0x1, 0x83, 0x1D, 0xE7) _IIllIIlIIl.MouseButton1Click:Connect( function () local _IlIIIllIlI = _IlllIllllI.Position if _lIlllllIII then local _lllIlllIlI = _IIlllIIlIl:Create( _IlllIllllI, TweenInfo.new(0.5), { Size = UDim2.new(0x0, 0x0, 0x0, 0x0), Visible = false } ) _lllIlllIlI:Play() else local _lllIIlIIIl = _IIlllIIlIl:Create( _IlllIllllI, TweenInfo.new(0.5), { Visible = true, Size = UDim2.new(0x0, 0x1C2, 0x0, 0x12C) } ) _lllIIlIIIl:Play() end
 _lIlllllIII = not _lIlllllIII end
 ) local function _IllllIIIll(enemy) local _llIlIlIIll local _lllllIllII local _lIlIlllIlI if _IIIlIIIllI.Character then if _IIIlIIIllI.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then _llIlIlIIll = _IIIlIIIllI.Character.HumanoidRootPart.Position end
 end
 if enemy.Character then if enemy.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then _lllllIllII = enemy.Character.HumanoidRootPart.Position end
 end
 if _llIlIlIIll and _lllllIllII then _lIlIlllIlI = (_llIlIlIIll - _lllllIllII).Magnitude return _lIlIlllIlI else return 0x0 end
 end
 local function _IIlIllllll(parte) local _llIIlllIII = _lIIlIIllIl.CFrame.Position local _IlIllllllI = parte.Position - _llIIlllIII local _IlIlIlllIl = workspace:Raycast(_llIIlllIII, _IlIllllllI, _IlIllIlIII) if _IlIlIlllIl then return _IlIlIlllIl.Instance:IsDescendantOf(parte.Parent) else return true end
 end
 local function _lIIIllllIl(jugador) if jugador.Character then local _lIIIlIIlII = jugador.Character if _lIIIlIIlII:FindFirstChild("\072\101\097\100") then local _lIlllIIlII, enPantalla = _lIIlIIllIl:WorldToViewportPoint(_lIIIlIIlII.Head.Position) if enPantalla then local _IIIlIIlllI = Vector2.new(_lIlllIIlII.X, _lIlllIIlII.Y) local _llIlIIlllI = Vector2.new(_IlIIIIllll.X/0x2, _IlIIIIllll.Y/0x2) local _lIlIlllIlI = (_IIIlIIlllI - _llIlIIlllI).Magnitude if _lIlIlllIlI < _lllIIllIll.radioFov then return true else return false end
 end
 end
 end
 end
 local function _lIlllllllI() if not _llIlIllIIl then _llIlIllIIl = Drawing.new("\067\105\114\099\108\101") _llIlIllIIl.Color = Color3.fromRGB(0xFF, 0x0, 0x0) _llIlIllIIl.Thickness = 0x2 _llIlIllIIl.Radius = _lllIIllIll.radioFov _llIlIllIIl.Filled = false _llIlIllIIl.Position = Vector2.new(_IlIIIIllll.X/0x2, _IlIIIIllll.Y/0x2) _llIlIllIIl.Visible = true end
 end
 local function _lllIlIlIIl() if _llIlIllIIl then _llIlIllIIl:Remove() _llIlIllIIl = nil end
 end
 local function _llIlIlllll(jugador) local _lIllIllIlI = nil local _IIlIIIIIlI = nil if jugador.Team then _lIllIllIlI = jugador.Team elseif jugador.TeamColor then _lIllIllIlI = jugador.TeamColor else _lIllIllIlI = "\066\108\097\099\107" end
 if _IIIlIIIllI.Team then _IIlIIIIIlI = _IIIlIIIllI.Team elseif _IIIlIIIllI.TeamColor then _IIlIIIIIlI = _IIIlIIIllI.TeamColor else _IIlIIIIIlI = "\066\108\097\099\107" end
 return _lIllIllIlI ~= _IIlIIIIIlI end
 local _llIllIIlll = _G.teamDataDuelist local function _llIIIlllII(jugador) if rawget(_llIllIIlll, "\105\110\077\097\116\099\104") then local _llllIlIlll = rawget(_llIllIIlll, "\116\101\097\109\115") local _llIllIIlII = rawget(_llllIlIlll, "\084\101\097\109\049") local _IIlllIIIII = rawget(_llllIlIlll, "\084\101\097\109\050") local _IllIlIIlII if table.find(_llIllIIlII, _IIIlIIIllI.UserId) then _IllIlIIlII = _llIllIIlII elseif table.find(_IIlllIIIII, _IIIlIIIllI.UserId) then _IllIlIIlII = _IIlllIIIII else _IllIlIIlII = nil end
 if _IllIlIIlII then if table.find(_IllIlIIlII, jugador.UserId) then return true else return false end
 end
 end
 end
 local function _IIIIIIIllI() local _IIllIIIlII = nil local _lIlIIlIIII = math.huge for _, jugador in pairs(_lIllIIllII:GetPlayers()) do if jugador.Character and jugador ~= _IIIlIIIllI then local _lIIIlIIlII = jugador.Character local _IllIlIlIlI = 0x0 local _lIllIlllIl = _lIIIllllIl(jugador) if _lIIIlIIlII:FindFirstChild("\072\117\109\097\110\111\105\100") then _IllIlIlIlI = _lIIIlIIlII.Humanoid.Health end
 if _lIIIlIIlII:FindFirstChild(_lllIIllIll.modoAimbotActual) then local _IlllIIIlII = _lIIIlIIlII:FindFirstChild(_lllIIllIll.modoAimbotActual) if _lIIllIIIlI:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _lIlIlllIlI = (_lIIllIIIlI.HumanoidRootPart.Position - _IlllIIIlII.Position).Magnitude if _lllIIllIll.teamCheck then if _lIIIIlIIlI ~= _IIlllIllll then if _lllIIllIll.wallCheckActivado then if _lIlIlllIlI < _lIlIIlIIII and _IIlIllllll(_IlllIIIlII) and _IllIlIlIlI > 0x0 and _lIllIlllIl and _llIlIlllll(jugador) then _lIlIIlIIII = _lIlIlllIlI _IIllIIIlII = _IlllIIIlII end
 else if _lIlIlllIlI < _lIlIIlIIII and _IllIlIlIlI > 0x0 and _lIllIlllIl and _llIlIlllll(jugador) then _lIlIIlIIII = _lIlIlllIlI _IIllIIIlII = _IlllIIIlII end
 end
 else if _lllIIllIll.wallCheckActivado then if _lIlIlllIlI < _lIlIIlIIII and _IIlIllllll(_IlllIIIlII) and _IllIlIlIlI > 0x0 and _lIllIlllIl and not _llIIIlllII(jugador) then _lIlIIlIIII = _lIlIlllIlI _IIllIIIlII = _IlllIIIlII end
 else if _lIlIlllIlI < _lIlIIlIIII and _IllIlIlIlI > 0x0 and _lIllIlllIl and not _llIIIlllII(jugador) then _lIlIIlIIII = _lIlIlllIlI _IIllIIIlII = _IlllIIIlII end
 end
 end
 else if _lllIIllIll.wallCheckActivado then if _lIlIlllIlI < _lIlIIlIIII and _IIlIllllll(_IlllIIIlII) and _IllIlIlIlI > 0x0 and _lIllIlllIl then _lIlIIlIIII = _lIlIlllIlI _IIllIIIlII = _IlllIIIlII end
 else if _lIlIlllIlI < _lIlIIlIIII and _IllIlIlIlI > 0x0 and _lIllIlllIl then _lIlIIlIIII = _lIlIlllIlI _IIllIIIlII = _IlllIIIlII end
 end
 end
 end
 end
 end
 end
 if _IIllIIIlII then return _IIllIIIlII else return false end
 end
 local function _llllIIIlll() local _IIllIIIlII = nil local _lIlIIlIIII = math.huge for _, jugador in pairs(_lIllIIllII:GetPlayers()) do if jugador.Character and jugador ~= _IIIlIIIllI then local _lIIIlIIlII = jugador.Character local _IllIlIlIlI = 0x0 local _lIllIlllIl = _lIIIllllIl(jugador) if _lIIIlIIlII:FindFirstChild("\072\117\109\097\110\111\105\100") then _IllIlIlIlI = _lIIIlIIlII.Humanoid.Health end
 if _lIIIlIIlII:FindFirstChild("\072\101\097\100") then local _IlIlllllII = _lIIIlIIlII.Head if _lIIllIIIlI:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _lIlIlllIlI = (_lIIllIIIlI.HumanoidRootPart.Position - _IlIlllllII.Position).Magnitude if _lIlIlllIlI < _lIlIIlIIII and _IIlIllllll(_IlIlllllII) and _IllIlIlIlI > 0x0 and not _llIIIlllII(jugador) then _lIlIIlIIII = _lIlIlllIlI _IIllIIIlII = _IlIlllllII end
 end
 end
 end
 end
 if _IIllIIIlII then return _IIllIIIlII.Position else return false end
 end
 local function _IIIIIIlIll(jugador) if not _lIlIIIIIIl[jugador] and jugador ~= _IIIlIIIllI then local _IlllllIIlI = Drawing.new("\076\105\110\101") _IlllllIIlI.Thickness = 0x2 _IlllllIIlI.Color = Color3.fromRGB(0xFF, 0x0, 0x0) _IlllllIIlI.Visible = false _lIlIIIIIIl[jugador] = _IlllllIIlI end
 end
 local function _IlIIIlIlII(jugador) if _lIlIIIIIIl[jugador] then _lIlIIIIIIl[jugador]:Remove() _lIlIIIIIIl[jugador] = nil end
 end
 local function _IIlIIlllIl(jugador) if not _lllIIlIlIl[jugador] and jugador ~= _IIIlIIIllI then local _IIlIIIIlII = Instance.new("\070\114\097\109\101") _IIlIIIIlII.Parent = _lllllIIIIl _IIlIIIIlII.BackgroundTransparency = 0x1 _IIlIIIIlII.AnchorPoint = Vector2.new(0.5, 0.5) _IIllIIlIII(_IIlIIIIlII, 0x2, 0xFF, 0x0, 0x0) _IIlIIIIlII.Visible = false _lllIIlIlIl[jugador] = _IIlIIIIlII end
 end
 local function _llIIIlIlII(jugador) if _lllIIlIlIl[jugador] then _lllIIlIlIl[jugador]:Destroy() _lllIIlIlIl[jugador] = nil end
 end
 local function _IIllIIllII(jugador) if not _lllllIIIlI[jugador] and jugador ~= _IIIlIIIllI then local _llIIlllIlI = Instance.new("\070\114\097\109\101") _llIIlllIlI.Parent = _lllllIIIIl _llIIlllIlI.BackgroundColor3 = Color3.fromRGB(0x0, 0xFF, 0x0) _llIIlllIlI.AnchorPoint = Vector2.new(0.5, 0.5) _IIllIIlIII(_llIIlllIlI, 0x1, 0x0, 0x0, 0x0) _lllllIIIlI[jugador] = _llIIlllIlI end
 end
 local function _lIIIlIllII(jugador) if _lllllIIIlI[jugador] then _lllllIIIlI[jugador]:Destroy() _lllllIIIlI[jugador] = nil end
 end
 local function _lIlIIlIlII(jugador) if jugador.Character then local _lIIIlIIlII = jugador.Character if _lIIIlIIlII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _lllIIIIlll = _lIIIlIIlII.HumanoidRootPart if not _IIIlIIlIll then _IIIlIIlIll = Instance.new("\066\111\100\121\086\101\108\111\099\105\116\121") _IIIlIIlIll.Parent = _lllIIIIlll end
 if not _lIIllIllll then _lIIllIllll = Instance.new("\066\111\100\121\071\121\114\111") _lIIllIllll.Parent = _lllIIIIlll end
 _IIIlIIlIll.MaxForce = Vector3.new(1e9, 1e9, 1e9) _lIIllIllll.MaxTorque = Vector3.new(1e9, 1e9, 1e9) _lIIllIllll.P = 0x2710 _lIIllIllll.CFrame = _lIIlIIllIl.CFrame local _IlllllIllI = _IIlIlllIll:GetMoveVector() local _IIlllllIII = _lIIlIIllIl.CFrame.LookVector local _lIllIIlIll = _lIIlIIllIl.CFrame.RightVector local _IlIllllllI = (_IIlllllIII * -_IlllllIllI.Z) + (_lIllIIlIll * _IlllllIllI.X) if _IlIllllllI.Magnitude > 0x0 then _IIIlIIlIll.Velocity = _IlIllllllI.Unit * 0x64 else _IIIlIIlIll.Velocity = Vector3.zero end
 end
 end
 end
 local function _IIIIllIlIl(_lIIllIIIlI) if _lIIllIIIlI ~= _IIIlIIIllI.Character and _lIIllIIIlI then local _lIIIlIIIll = _lIIllIIIlI if _lIIIlIIIll:FindFirstChild(_lllIIllIll.modoHitboxExpandActual) then local _IlllIIIlII = _lIIIlIIIll:FindFirstChild(_lllIIllIll.modoHitboxExpandActual) _IlllIIIlII.Size = Vector3.new(_lllIIllIll.grandeDeLaHitBox, _lllIIllIll.grandeDeLaHitBox, _lllIIllIll.grandeDeLaHitBox) _IlllIIIlII.Transparency = 0x0 _IlllIIIlII.Color = Color3.fromRGB(0xFF, 0x0, 0x0) _IlllIIIlII.Material = Enum.Material.Neon _IlllIIIlII.CanCollide = false end
 end
 end
 local function _IlIllIlIII(_lIIllIIIlI) if _lIIllIIIlI ~= _IIIlIIIllI.Character and _lIIllIIIlI then local _lIIIlIIIll = _lIIllIIIlI if _lIIIlIIIll:FindFirstChild(_lllIIllIll.modoHitboxExpandActual) then local _IlllIIIlII = _lIIIlIIIll:FindFirstChild(_lllIIllIll.modoHitboxExpandActual) if _lllIIllIll.modoHitboxExpandActual == "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116" then _IlllIIIlII.Size = Vector3.new(0x2, 0x2, 0x1) _IlllIIIlII.Transparency = 0x1 _IlllIIIlII.CanCollide = true else _IlllIIIlII.Size = Vector3.new(1.1961, 1.2029, 1.2002) _IlllIIIlII.Transparency = 0x0 end
 end
 end
 end
 local function _lIlIIlIllI() local _IIlIlIlllI = workspace:FindFirstChild("\084\097\114\103\101\116\083\104\111\111\116", true) if _IIlIlIlllI then local _IlIIIIllII = _IIlIllllll(_IIlIlIlllI) local _lIlllIIIII = _IIlIlIlllI.Position local _llIlllIIIl = 0x0 if _IIIlIIIllI.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then _llIlllIIIl = (_IIIlIIIllI.Character.HumanoidRootPart.Position - _lIlllIIIII).Magnitude end
 if _llIlllIIIl < 0x3E8 and _IlIIIIllII then _lIIlIIllIl.CFrame = CFrame.new(_lIIlIIllIl.CFrame.Position, _lIlllIIIII) end
 end
 end
 local function _IIllIIIIlI() if _llIIIlllll then return end
 _llIIIlllll = true local _IlIIIIlIII for _, v in pairs(getgc(true)) do if typeof(v) == "\102\117\110\099\116\105\111\110" then local _IIIIlIIIll = debug.getinfo(v) if _IIIIlIIIll.name == "\070\105\114\101\066\105\110\100" and _IIIIlIIIll.source:find("\067\108\105\101\110\116\083\099\114\105\112\116\115\046\067\108\105\101\110\116\046\066\105\110\100\115") then _IlIIIIlIII = v break end
 end
 end
 _IlIIIIlIII(_G, "\083\104\111\111\116", true, false) task.wait(0.3) _IlIIIIlIII(_G, "\083\104\111\111\116", false, false) _llIIIlllll = false end
 local _IlIlllIlll local _llllIIlllI local _llIIIlIIII _lIlllllllI.RenderStepped:Connect( function () if _lllIIllIll.silentAimActived then _IlIlllIlll = _IIIIIIIllI() if _IlIlllIlll then _llllIIlllI, _llIIIlIIII = _lIIlIIllIl:WorldToViewportPoint(_IlIlllIlll.Position) else _llllIIlllI = nil _llIIIlIIII = false end
 else _IlIlllIlll = nil _llllIIlllI = nil _llIIIlIIII = false end
 end
 ) local function _lIIlIIIIIl() local _lllllIIIlI = tonumber(_lllIIllIll.modoSilentActual:match("\037\100\043")) if _lllllIIIlI >= 0x64 then return true end
 return math.random(0x1,0x64) <= _lllllIIIlI end
 local _llIIIllIIl _llIIIllIIl = hookmetamethod(game, "\095\095\105\110\100\101\120", newcclosure( function (self, key) if self == _lIIlIIllIl and key == "\086\105\101\119\112\111\114\116\083\105\122\101" and _lllIIllIll.silentAimActived and _llllIIlllI and _llIIIlIIII and _lIIlIIIIIl() then return Vector2.new(_llllIIlllI.X*0x2, _llllIIlllI.Y*0x2) else return _llIIIllIIl(self, key) end
 end
 )) _lIlllllllI.RenderStepped:Connect( function () if _lllIIllIll.aimbotEnable then local _llllllIlIl = _IIIIIIIllI() if _llllllIlIl then local _lIlIlllIlI = (_IIIlIIIllI.Character.HumanoidRootPart.Position - _llllllIlIl.Position).Magnitude if _lIIIIlIIlI ~= _IIlllIllll then if _lIlIlllIlI < _lIlIlIIIll then local _IIllllIlII = CFrame.new(_lIIlIIllIl.CFrame.Position, _llllllIlIl.Position) _lIIlIIllIl.CFrame = _lIIlIIllIl.CFrame:Lerp(_IIllllIlII, _lllIIllIll.fuerzaDeAimbot) end
 else if _lIlIlllIlI < _lIlIlIIIll and rawget(_G.teamDataDuelist, "\105\110\077\097\116\099\104") then local _IIllllIlII = CFrame.new(_lIIlIIllIl.CFrame.Position, _llllllIlIl.Position) _lIIlIIllIl.CFrame = _lIIlIIllIl.CFrame:Lerp(_IIllllIlII, _lllIIllIll.fuerzaDeAimbot) end
 end
 end
 end
 if _lllIIllIll.espTracerEnable then for jugador, _IlllllIIlI in pairs(_lIlIIIIIIl) do if jugador.Character then local _lIIIlIIlII = jugador.Character if _lIIIlIIlII:FindFirstChild("\072\101\097\100") then local _IlIlllllII = _lIIIlIIlII.Head local _lIIlIIlIIl, enPantalla = _lIIlIIllIl:WorldToViewportPoint(_IlIlllllII.Position) if enPantalla then local _IIlllIllll = Vector2.new(_lIIlIIllIl.ViewportSize.X/0x2, 0x0) local _IIlIIIlIII = Vector2.new(_lIIlIIlIIl.X, _lIIlIIlIIl.Y) _IlllllIIlI.From = _IIlllIllll _IlllllIIlI.To = _IIlIIIlIII _IlllllIIlI.Visible = true if _lIIIlIIlII:FindFirstChild("\072\117\109\097\110\111\105\100") then local _IllIlIlIlI = _lIIIlIIlII.Humanoid.Health if _IllIlIlIlI == 0x0 then _IlllllIIlI.Visible = false end
 end
 if _IllllIIIll(jugador) > _lIlIlIIIll then _IlllllIIlI.Visible = false end
 else _IlllllIIlI.Visible = false end
 else _IlllllIIlI.Visible = false end
 else _IlllllIIlI.Visible = false end
 end
 end
 if _lllIIllIll.espBoxEnable then for jugador, _IIlIIIIlII in pairs(_lllIIlIlIl) do if jugador.Character then local _lIIIlIIlII = jugador.Character if _lIIIlIIlII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _lllIIIIlll = _lIIIlIIlII.HumanoidRootPart local _llllIIllll, enPantalla = _lIIlIIllIl:WorldToScreenPoint(_lllIIIIlll.Position) if enPantalla then local _llIIIlIIII = _lIIlIIllIl.ViewportSize.Y/_llllIIllll.Z local _lIIIlIlIIl = _llIIIlIIII*0x5 local _IlIllllIlI = _llIIIlIIII*0x3 _IIlIIIIlII.Size = UDim2.new(0x0, _IlIllllIlI, 0x0, _lIIIlIlIIl) _IIlIIIIlII.Position = UDim2.new(0x0, _llllIIllll.X, 0x0, _llllIIllll.Y) _IIlIIIIlII.Visible = true if _IllllIIIll(jugador) > _lIlIlIIIll then _IIlIIIIlII.Visible = false end
 if _lIIIlIIlII:FindFirstChild("\072\117\109\097\110\111\105\100") then local _IllIlIlIlI = _lIIIlIIlII.Humanoid.Health if _IllIlIlIlI == 0x0 then _IIlIIIIlII.Visible = false end
 end
 else _IIlIIIIlII.Visible = false end
 else _IIlIIIIlII.Visible = false end
 else _IIlIIIIlII.Visible = false end
 end
 end
 if _lllIIllIll.espVidaEnable then for jugador, _llIIlllIlI in pairs(_lllllIIIlI) do if jugador.Character then local _lIIIlIIlII = jugador.Character if _lIIIlIIlII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _lllIIIIlll = _lIIIlIIlII.HumanoidRootPart local _llllIIllll, enPantalla = _lIIlIIllIl:WorldToScreenPoint(_lllIIIIlll.Position) local _lIlIIIlIll local _llllllIlII local _lllIIIIIll = 0x1 if _lIIIlIIlII:FindFirstChild("\072\117\109\097\110\111\105\100") then local _lIllIIllll = _lIIIlIIlII.Humanoid _llllllIlII = _lIllIIllll.Health _lIlIIIlIll = _lIllIIllll.MaxHealth _lllIIIIIll = _llllllIlII/_lIlIIIlIll end
 if enPantalla then local _llIIIlIIII = _lIIlIIllIl.ViewportSize.Y/_llllIIllll.Z local _lIlIlllIlI = (_llIIIlIIII * 0x3)/0x2 + 0x7 local _lIIIlIlIIl = (_llIIIlIIII * _lllIIIIIll) * 0x5 local _IlIllllIlI = _llIIIlIIII _llIIlllIlI.Size = UDim2.new(0x0, _IlIllllIlI, 0x0, _lIIIlIlIIl) _llIIlllIlI.Position = UDim2.new(0x0, _llllIIllll.X + _lIlIlllIlI, 0x0, _llllIIllll.Y) if _lllIIIIIll > 0x0 then _llIIlllIlI.Visible = true else _llIIlllIlI.Visible = false end
 if _IllllIIIll(jugador) > _lIlIlIIIll then _llIIlllIlI.Visible = false end
 else _llIIlllIlI.Visible = false end
 else _llIIlllIlI.Visible = false end
 else _llIIlllIlI.Visible = false end
 end
 end
 if _lllIIllIll.showFovEnable then if _llIlIllIIl then if _llIlIllIIl.Radius ~= _lllIIllIll.radioFov then _llIlIllIIl.Radius = _lllIIllIll.radioFov end
 else _lIlllllllI() end
 end
 if _lllIIllIll.superJumpActivado then if _IIIlIIIllI.Character then if _IIIlIIIllI.Character.Humanoid then _IIIlIIIllI.Character.Humanoid.JumpPower = _lllIIllIll.jumpPower _IIIlIIIllI.Character.Humanoid.JumpHeight = _lllIIllIll.jumpPower / 0x4 end
 end
 end
 if _lllIIllIll.superSpeedActivado then if _IIIlIIIllI.Character then if _IIIlIIIllI.Character.Humanoid then _IIIlIIIllI.Character.Humanoid.WalkSpeed = _lllIIllIll.velocitySpeed end
 end
 end
 if _lllIIllIll.noClipEnable then if _IIIlIIIllI.Character then local _lIIllIIIlI = _IIIlIIIllI.Character for _, v in pairs(_lIIllIIIlI:GetChildren()) do if v:IsA("\066\097\115\101\080\097\114\116") then v.CanCollide = false end
 end
 end
 end
 if _lllIIllIll.flyEnable then if _IIIlIIIllI.Character then if _IIIlIIIllI.Character.Humanoid then _IIIlIIIllI.Character.Humanoid.PlatformStand = true end
 end
 _lIlIIlIlII(_IIIlIIIllI) end
 if _lllIIllIll.GravityCeroActivado then if _lllIIllIll.GravityCeroActivado then workspace.Gravity = 0x32 end
 end
 if _lllIIllIll.expandHitboxEnable then for _, jugador in pairs(_lIllIIllII:GetPlayers()) do if jugador.Character then if jugador.Character:FindFirstChild("\072\117\109\097\110\111\105\100") then local _IllIlIlIlI = jugador.Character.Humanoid.Health if _IllIlIlIlI > 0x0 then _IIIIllIlIl(jugador.Character) else _IlIllIlIII(jugador.Character) end
 end
 end
 end
 end
 if _lllIIllIll.aimExpDuelistEnable then _lIlIIlIllI() end
 if _lllIIllIll.autoShootEnable then local _llllllIlIl = _llllIIIlll() if _llllllIlIl then local _IIllllIlII = CFrame.new(_lIIlIIllIl.CFrame.Position, _llllllIlIl) _lIIlIIllIl.CFrame = _lIIlIIllIl.CFrame:Lerp(_IIllllIlII, _lllIIllIll.fuerzaDeAimbot) _IIllIIIIlI() end
 end
 if _lllIIllIll.aimbotBodyEnable then for _, jugador in pairs(_lIllIIllII:GetPlayers()) do if jugador.Character then local _lIIIlIIlII = jugador.Character if _lIIIlIIlII:FindFirstChild("\072\101\097\100") and jugador ~= _IIIlIIIllI then local _IlIlllllII = _lIIIlIIlII.Head _IlIlllllII.Size = Vector3.new(0x4, 0x5, 0x3) _IlIlllllII.Transparency = 0x1 end
 end
 end
 end
 if _lllIIllIll.modoHitboxExpandActual == "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116" then for _, jugador in pairs(_lIllIIllII:GetPlayers()) do if jugador.Character and jugador ~= _IIIlIIIllI then local _lIIIlIIIll = jugador.Character if _lIIIlIIIll:FindFirstChild("\072\101\097\100") then local _IlIlllllII = _lIIIlIIIll.Head _IlIlllllII.Size = Vector3.new(1.1961, 1.2029, 1.2002) _IlIlllllII.Transparency = 0x0 end
 end
 end
 elseif _lllIIllIll.modoHitboxExpandActual == "\072\101\097\100" then for _, jugador in pairs(_lIllIIllII:GetPlayers()) do if jugador.Character and jugador ~= _IIIlIIIllI then local _lIIIlIIIll = jugador.Character if _lIIIlIIIll:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _lllIIIIlll = _lIIIlIIIll.HumanoidRootPart _lllIIIIlll.Size = Vector3.new(0x2, 0x2, 0x1) _lllIIIIlll.Transparency = 0x1 end
 end
 end
 end
 _IlllIllllI.Position = UDim2.new(0x0, _IIllIIlIIl.AbsolutePosition.X + 0x19, 0x0, _IIllIIlIIl.AbsolutePosition.Y + 0x1E) if _G.textoAdvertenciaFirebase.Body ~= "\034\034" then _IlllIllllI.Visible = false _IIllIIlIIl.Visible = false task.wait(0x1) _IIIlIIIllI:Kick("\069\076\032\080\065\078\069\076\032\068\065\082\075\077\065\084\084\069\082\032\069\078\084\082\079\032\069\078\032\077\065\078\084\069\078\073\077\073\069\078\084\079") end
 end
 ) if _lIIIIlIIlI ~= _lllIlIIIIl then _lIIllIllII(_lIlllIlIII, "\065\105\109\098\111\116", "\067\079\077\066\065\084\069", function (valor) if valor then _lllIIllIll.aimbotEnable = true else _lllIIllIll.aimbotEnable = false end
 end
 ) _IlIllIIlll(_lIlllIlIII, _lllIIllIll.modoAimbotActual, "\067\079\077\066\065\084\069", function () if _lllIIllIll.modoAimbotActual == _lllIIllIll.modosAimbot[#_lllIIllIll.modosAimbot] then _lllIIllIll.modoAimbotActual = _lllIIllIll.modosAimbot[0x1] else _lllIIllIll.modoAimbotActual = _lllIIllIll.modosAimbot[table.find(_lllIIllIll.modosAimbot, _lllIIllIll.modoAimbotActual) + 0x1] end
 return _lllIIllIll.modoAimbotActual end
 ) end
 if _lIIIIlIIlI ~= _IIlllIllll and _lIIIIlIIlI ~= _lllIlIIIIl then _IlIIllIIll(_lIlllIlIII, function () return string.format("\065\105\109\098\111\116\032\083\116\114\101\110\103\116\104\058\032\037\046\049\102", _lllIIllIll.fuerzaDeAimbot) end
 , 0x0, "\067\079\077\066\065\084\069", function (valor) _lllIIllIll.fuerzaDeAimbot = valor end
 ) end
 if _lIIIIlIIlI ~= _IlllllllII then _lIIllIllII(_lIlllIlIII, "\083\105\108\101\110\116\032\065\105\109", "\067\079\077\066\065\084\069", function (valor) _lllIIllIll.silentAimActived = valor end
 ) _IlIllIIlll(_lIlllIlIII, _lllIIllIll.modoSilentActual, "\067\079\077\066\065\084\069", function () if _lllIIllIll.modoSilentActual == _lllIIllIll.modosSilent[#_lllIIllIll.modosSilent] then _lllIIllIll.modoSilentActual = _lllIIllIll.modosSilent[0x1] else _lllIIllIll.modoSilentActual = _lllIIllIll.modosSilent[table.find(_lllIIllIll.modosSilent, _lllIIllIll.modoSilentActual) + 0x1] end
 return _lllIIllIll.modoSilentActual end
 ) end
 _lIIllIllII(_lIlllIlIII, "\087\097\108\108\032\067\104\101\099\107", "\067\079\077\066\065\084\069", function (valor) _lllIIllIll.wallCheckActivado = valor end
 ) _lIIllIllII(_lIlllIlIII, "\069\115\112\032\084\114\097\099\101\114", "\086\073\083\085\065\076\069\083", function (valor) if valor then for _, jugador in pairs(_lIllIIllII:GetPlayers()) do _IIIIIIlIll(jugador) end
 _IllllIllll = _lIllIIllII.PlayerAdded:Connect( function (jugador) _IIIIIIlIll(jugador) end
 ) _IIlllllIll = _lIllIIllII.PlayerRemoving:Connect( function (jugador) _IlIIIlIlII(jugador) end
 ) _lllIIllIll.espTracerEnable = true else if _IllllIllll then _IllllIllll:Disconnect() _IllllIllll = nil end
 if _IIlllllIll then _IIlllllIll:Disconnect() _IIlllllIll = nil end
 _lllIIllIll.espTracerEnable = false for jugador in pairs(_lIlIIIIIIl) do _IlIIIlIlII(jugador) end
 end
 end
 ) _lIIllIllII(_lIlllIlIII, "\069\115\112\032\066\111\120", "\086\073\083\085\065\076\069\083", function (valor) if valor then for _, jugador in pairs(_lIllIIllII:GetPlayers()) do _IIlIIlllIl(jugador) end
 _llIIIlllll = _lIllIIllII.PlayerAdded:Connect( function (jugador) _IIlIIlllIl(jugador) end
 ) _llllllIlIl = _lIllIIllII.PlayerRemoving:Connect( function (jugador) _llIIIlIlII(jugador) end
 ) _lllIIllIll.espBoxEnable = true else if _llIIIlllll then _llIIIlllll:Disconnect() _llIIIlllll = nil end
 if _llllllIlIl then _llllllIlIl:Disconnect() _llllllIlIl = nil end
 _lllIIllIll.espBoxEnable = false for jugador in pairs(_lllIIlIlIl) do _llIIIlIlII(jugador) end
 end
 end
 ) _lIIllIllII(_lIlllIlIII, "\069\115\112\032\086\105\100\097", "\086\073\083\085\065\076\069\083", function (valor) if valor then for _, jugador in pairs(_lIllIIllII:GetPlayers()) do _IIllIIllII(jugador) end
 _lIllIIllII.PlayerAdded:Connect( function (jugador) _IIllIIllII(jugador) end
 ) _lIllIIllII.PlayerRemoving:Connect( function (jugador) _lIIIlIllII(jugador) end
 ) _lllIIllIll.espVidaEnable = true else _lllIIllIll.espVidaEnable = false for jugador in pairs(_lllllIIIlI) do _lIIIlIllII(jugador) end
 end
 end
 ) _lIIllIllII(_lIlllIlIII, "\083\104\111\119\032\070\111\118", "\086\073\083\085\065\076\069\083", function (valor) if valor then _lllIIllIll.showFovEnable = true else _lllIIllIll.showFovEnable = false _lllIlIlIIl() end
 end
 ) _IlIIllIIll(_lIlllIlIII, function () return string.format("\070\079\086\032\115\105\122\101\058\032\037\100", _lllIIllIll.radioFov) end
 , 0x0, "\086\073\083\085\065\076\069\083", function (valor) _lllIIllIll.radioFov = valor * 0xC8 end
 ) if _lIIIIlIIlI ~= _lllIlIIIIl then _lIIllIllII(_lIlllIlIII, "\084\101\097\109\032\067\104\101\099\107", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) _lllIIllIll.teamCheck = valor end
 ) end
 if _lIIIIlIIlI ~= _lllIlIIIIl then _lIIllIllII(_lIlllIlIII, "\083\117\112\101\114\032\074\117\109\112", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _lllIIllIll.superJumpActivado = true else _lllIIllIll.superJumpActivado = false if _IIIlIIIllI.Character then if _IIIlIIIllI.Character.Humanoid then _IIIlIIIllI.Character.Humanoid.JumpPower = 0x32 _IIIlIIIllI.Character.Humanoid.JumpHeight = 7.2 end
 end
 end
 end
 ) end
 if _lIIIIlIIlI ~= _lllIlIIIIl then _IlIIllIIll(_lIlllIlIII, function () return string.format("\074\117\109\112\032\080\111\119\101\114\058\032\037\100", _lllIIllIll.jumpPower) end
 , 0x0, "\077\079\086\073\077\073\069\078\084\079", function (valor) _lllIIllIll.jumpPower = valor * 0xC8 end
 ) end
 if _lIIIIlIIlI ~= _lllIlIIIIl then _lIIllIllII(_lIlllIlIII, "\083\117\112\101\114\032\083\112\101\101\100", "\077\079\086\073\077\073\069\078\084\079", function (valor) _lllIIllIll.superSpeedActivado = valor if valor then _lllIIllIll.superSpeedActivado = true else _lllIIllIll.superSpeedActivado = false if _IIIlIIIllI.Character then if _IIIlIIIllI.Character.Humanoid then _IIIlIIIllI.Character.Humanoid.WalkSpeed = 0x10 end
 end
 end
 end
 ) end
 if _lIIIIlIIlI ~= _lllIlIIIIl then _IlIIllIIll(_lIlllIlIII, function () return string.format("\086\101\108\111\099\105\116\121\032\083\112\101\101\100\058\032\037\100", _lllIIllIll.velocitySpeed) end
 , 0x0, "\077\079\086\073\077\073\069\078\084\079", function (valor) _lllIIllIll.velocitySpeed = valor * 0x12C end
 ) end
 _lIIllIllII(_lIlllIlIII, "\078\111\067\108\105\112", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _lllIIllIll.noClipEnable = true else _lllIIllIll.noClipEnable = false if _IIIlIIIllI.Character then local _lIIllIIIlI = _IIIlIIIllI.Character for _, v in pairs(_lIIllIIIlI:GetChildren()) do if v:IsA("\066\097\115\101\080\097\114\116") then v.CanCollide = true end
 end
 end
 end
 end
 ) if _IlIIlIlIII.Name == "\065\110\100\114\111\105\100" or _IlIIlIlIII.Name == "\073\079\083" then if _lIIIIlIIlI ~= _IlllllllII then _lIIllIllII(_lIlllIlIII, "\070\108\121", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _lllIIllIll.flyEnable = true else _lllIIllIll.flyEnable = false if _IIIlIIIllI.Character then if _IIIlIIIllI.Character.Humanoid then _IIIlIIIllI.Character.Humanoid.PlatformStand = false end
 end
 if _IIIlIIlIll then _IIIlIIlIll:Destroy() _IIIlIIlIll = nil end
 if _lIIllIllll then _lIIllIllll:Destroy() _lIIllIllll = nil end
 end
 end
 ) end
 end
 _lIIllIllII(_lIlllIlIII, "\103\114\097\118\105\116\121\032\048", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _lllIIllIll.GravityCeroActivado = true else _lllIIllIll.GravityCeroActivado = false workspace.Gravity = 196.2 end
 end
 ) if _lIIIIlIIlI ~= _lllIlIIIIl then _lIIllIllII(_lIlllIlIII, "\069\120\112\097\110\100\032\072\105\116\098\111\120", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) if valor then _lllIIllIll.expandHitboxEnable = true else _lllIIllIll.expandHitboxEnable = false for _, jugador in pairs(_lIllIIllII:GetPlayers()) do _IlIllIlIII(jugador.Character) end
 end
 end
 ) end
 if _lIIIIlIIlI ~= _lllIlIIIIl then _IlIIllIIll(_lIlllIlIII, function () return string.format("\072\105\116\032\066\111\120\032\083\105\122\101\058\032\037\100", _lllIIllIll.grandeDeLaHitBox) end
 , 0x0, "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) _lllIIllIll.grandeDeLaHitBox = valor * 0x64 end
 ) _IlIllIIlll(_lIlllIlIII, _lllIIllIll.modoHitboxExpandActual, "\069\078\069\077\089\032\067\079\078\070\073\071", function () if _lllIIllIll.modoHitboxExpandActual == _lllIIllIll.modosHitboxExpand[#_lllIIllIll.modosHitboxExpand] then _lllIIllIll.modoHitboxExpandActual = _lllIIllIll.modosHitboxExpand[0x1] else _lllIIllIll.modoHitboxExpandActual = _lllIIllIll.modosHitboxExpand[table.find(_lllIIllIll.modosHitboxExpand, _lllIIllIll.modoHitboxExpandActual) + 0x1] end
 return _lllIIllIll.modoHitboxExpandActual end
 ) end
 if _lIIIIlIIlI == _IIlllIllll then _lIIllIllII(_lIlllIlIII, "\065\105\109\032\069\120\112\032\040\068\117\101\108\105\115\116\041", "\067\079\077\066\065\084\069", function (valor) if valor then _lllIIllIll.aimExpDuelistEnable = true else _lllIIllIll.aimExpDuelistEnable = false end
 end
 ) end
 if _lIIIIlIIlI == _IIlllIllll and (_IlIIlIlIII == Enum.Platform.IOS or _IlIIlIlIII == Enum.Platform.Android) then _lIIllIllII(_lIlllIlIII, "\065\117\116\111\032\083\104\111\111\116", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) if valor then _lllIIllIll.autoShootEnable = true else _lllIIllIll.autoShootEnable = false end
 end
 ) end
 if _lIIIIlIIlI ~= _lllIlIIIIl then _lIIllIllII(_lIlllIlIII, "\065\105\109\098\111\116\032\066\111\100\121", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) if valor then _lllIIllIll.aimbotBodyEnable = true else _lllIIllIll.aimbotBodyEnable = false for _, jugador in pairs(_lIllIIllII:GetPlayers()) do if jugador.Character:FindFirstChild("\072\101\097\100") and jugador ~= _IIIlIIIllI then local _IlIlllllII = jugador.Character.Head _IlIlllllII.Size = Vector3.new(1.1961, 1.2029, 1.2002) _IlIlllllII.Transparency = 0x0 end
 end
 end
 end
 ) end
 if _lIIIIlIIlI == _lllIlIIIIl then _lIIllIllII(_lIlllIlIII, "\078\111\032\082\101\099\111\105\108", "\067\079\077\066\065\084\069", function (valor) if valor then for name, dato in pairs(_lIIIIlllII) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootRecoil then dato.ShootRecoil = 0x0 end
 if dato.ShootSpread then dato.ShootSpread = 0x0 end
 end
 end
 else for name, dato in pairs(_lIIIIlllII) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootRecoil then dato.ShootRecoil = _llllIlIlII[name].ShootRecoil end
 if dato.ShootSpread then dato.ShootSpread = _llllIlIlII[name].ShootSpread end
 end
 end
 end
 end
 ) end
 if _lIIIIlIIlI == _lllIlIIIIl then _lIIllIllII(_lIlllIlIII, "\082\097\112\105\100\032\070\105\114\101", "\067\079\077\066\065\084\069", function (valor) if valor then for name, dato in pairs(_lIIIIlllII) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootCooldown then dato.ShootCooldown = 0x0 end
 end
 end
 else for name, dato in pairs(_lIIIIlllII) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootCooldown then dato.ShootCooldown = _llllIlIlII[name].ShootCooldown end
 end
 end
 end
 end
 ) end
 _lIIllIllII(_lIlllIlIII, "\066\121\112\097\115\115\032\080\114\111\116\111\099\111\108", "\066\089\080\065\083\083", function () return end
 ) _lIIllIllII(_lIlllIlIII, "\083\121\115\116\101\109\032\069\120\112\108\111\105\116\115", "\066\089\080\065\083\083", function () return end
 ) _lIIllIllII(_lIlllIlIII, "\083\105\108\101\110\116\032\073\110\106\101\099\116\105\111\110", "\066\089\080\065\083\083", function () return end
 ) _lIIllIllII(_lIlllIlIII, "\082\111\111\116\032\065\099\099\101\115\115", "\066\089\080\065\083\083", function () return end
 ) _IIIlIlllIl(_IlIIIlIIll, "\067\111\109\098\097\116\032\55356\57263", function () _IlllIIlIll = "\067\079\077\066\065\084\069" end
 ) _IIIlIlllIl(_IlIIIlIIll, "\077\111\118\101\109\101\110\116\032\55356\57283", function () _IlllIIlIll = "\077\079\086\073\077\073\069\078\084\079" end
 ) _IIIlIlllIl(_IlIIIlIIll, "\086\105\115\117\097\108\115\032\55357\56385\65039", function () _IlllIIlIll = "\086\073\083\085\065\076\069\083" end
 ) if _lIIIIlIIlI ~= _lllIlIIIIl then _IIIlIlllIl(_IlIIIlIIll, "\069\110\101\109\121\032\067\111\110\102\105\103\032\55357\56420", function () _IlllIIlIll = "\069\078\069\077\089\032\067\079\078\070\073\071" end
 ) end
 _IIIlIlllIl(_IlIIIlIIll, "\066\121\032\080\097\115\115\032\55357\56594", function () _IlllIIlIll = "\066\089\080\065\083\083" end
 ) _IllllIlIII:SetCore("\083\101\110\100\078\111\116\105\102\105\099\097\116\105\111\110", { Title = "\068\065\082\075\077\065\084\084\069\082\032\080\065\078\069\076", Text = "\073\078\073\067\073\065\068\079\032\067\079\078\032\069\088\073\084\079", Icon = _llIIIIIlll, Duration = 0x5 }) local _lIllIllIII = game:GetService("\076\105\103\104\116\105\110\103") local function _IIllIIIIll(objeto) if objeto:IsA("\084\101\120\116\117\114\101") or objeto:IsA("\068\101\099\097\108") or objeto:IsA("\066\097\115\101\080\097\114\116") or objeto:IsA("\080\097\114\116\105\099\108\101\069\109\105\116\116\101\114") or objeto:IsA("\083\109\111\107\101") or objeto:IsA("\070\105\114\101") or objeto:IsA("\083\112\097\114\107\108\101\115") or objeto:IsA("\080\111\105\110\116\076\105\103\104\116") or objeto:IsA("\083\112\111\116\076\105\103\104\116") or objeto:IsA("\083\117\114\102\097\099\101\076\105\103\104\116") or objeto:IsA("\066\101\097\109") or objeto:IsA("\084\114\097\105\108") then if not objeto:IsA("\066\097\115\101\080\097\114\116") and not objeto:IsA("\080\097\114\116\105\099\108\101\069\109\105\116\116\101\114") then objeto:Destroy() end
 if objeto:IsA("\066\097\115\101\080\097\114\116") then objeto.Material = Enum.Material.SmoothPlastic objeto.Reflectance = 0x0 end
 if objeto:IsA("\083\109\111\107\101") or objeto:IsA("\070\105\114\101") or objeto:IsA("\083\112\097\114\107\108\101\115") or objeto:IsA("\080\111\105\110\116\076\105\103\104\116") or objeto:IsA("\083\112\111\116\076\105\103\104\116") or objeto:IsA("\083\117\114\102\097\099\101\076\105\103\104\116") or objeto:IsA("\066\101\097\109") or objeto:IsA("\084\114\097\105\108") then objeto.Enabled = false end
 end
 end
 for _, objeto in pairs(game:GetDescendants()) do _IIllIIIIll(objeto) end
 game.DescendantAdded:Connect( function (objeto) _IIllIIIIll(objeto) end
 ) _lIllIllIII.GlobalShadows = false _lIllIllIII.Brightness = 0x1 _lIllIllIII.FogEnd = 0x3B9ACA00 _lIllIllIII.EnvironmentDiffuseScale = 0x0 _lIllIllIII.EnvironmentSpecularScale = 0x0 for _, efecto in ipairs(_lIllIllIII:GetChildren()) do if efecto:IsA("\066\108\111\111\109\069\102\102\101\099\116") or efecto:IsA("\066\108\117\114\069\102\102\101\099\116") or efecto:IsA("\067\111\108\111\114\067\111\114\114\101\099\116\105\111\110\069\102\102\101\099\116") or efecto:IsA("\083\117\110\082\097\121\115\069\102\101\099\116") or efecto:IsA("\068\101\112\116\104\079\102\070\105\101\108\100\069\102\102\101\099\116") or efecto:IsA("\065\116\109\111\115\112\104\101\114\101") then efecto:Destroy() end
 end
 end
 end
 )(...)
