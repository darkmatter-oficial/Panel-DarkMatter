--[[ Protected by Lua Guard ]]

( function (...) if _G.keyValida and _G.textoAdvertenciaFirebase.Body == "\034\034" then local _lIIIIIlIll = 2.0 local _IIIIllllII = game:GetService("\080\108\097\121\101\114\115") local _lIIIlIlIIl = _IIIIllllII.LocalPlayer local _lIIlIIIIlI = _lIIIlIlIIl:WaitForChild("\080\108\097\121\101\114\071\117\105") local _IlIIlIIIll = Instance.new("\083\099\114\101\101\110\071\117\105") _IlIIlIIIll.Parent = _lIIlIIIIlI local _llIlIlIIII = game:GetService("\082\117\110\083\101\114\118\105\099\101") local _llIllIllIl = game:GetService("\084\119\101\101\110\083\101\114\118\105\099\101") local _lllIllllII = _lIIIlIlIIl.Character or _lIIIlIlIIl.CharacterAdded:Wait() local _lIIIlllIII = game:GetService("\083\116\097\114\116\101\114\071\117\105") _IlIIlIIIll.DisplayOrder = 0xF423F _IlIIlIIIll.ZIndexBehavior = Enum.ZIndexBehavior.Global local _lllIlIllIl = workspace.CurrentCamera local _IllllIIlII = _lllIlIllIl.ViewportSize local _IlIIlIIIlI = RaycastParams.new() _IlIIlIIIlI.FilterType = Enum.RaycastFilterType.Exclude _IlIIlIIIlI.FilterDescendantsInstances = {_lllIllllII} local _lllIIlIllI = game:GetService("\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101") local _IllIlIIlIl = tostring(game.PlaceId) print(_IllIlIIlIl) local _lIIIlIIlII = _lllIIlIllI:GetPlatform() local _llIllIIIIl = game:GetService("\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101") local _IlIlIIIlII = _lIIIlIlIIl:WaitForChild("\080\108\097\121\101\114\083\099\114\105\112\116\115") local _IIllIIlllI local _lIIIIllIIl local _llllIllIlI = "\114\098\120\097\115\115\101\116\105\100\058\047\047\049\048\051\049\057\057\056\051\057\054\052\050\048\050\056" local _llIIlIIlII = "\049\055\054\050\053\051\053\057\057\054\050" local _lllIIlIlII = "\049\050\050\051\049\048\050\055\048\056\054\055\049\051\051" local _llllIllIII = "\057\048\049\056\052\050\056\055\053\056\048\049\055\052" local _lllIlIIllI = "\050\056\054\048\057\048\052\050\057" local _IlllIIllll = "\055\049\054\048\048\052\053\057\056\051\049\051\051\051" if _lIIIlIIlII.Name == "\065\110\100\114\111\105\100" or _lIIIlIIlII.Name == "\073\079\083" then if _IllIlIIlIl ~= _lllIlIIllI then _IIllIIlllI = require(_IlIlIIIlII:WaitForChild("\080\108\097\121\101\114\077\111\100\117\108\101")) _lIIIIllIIl = _IIllIIlllI:GetControls() end
 end
 if _IllIlIIlIl == _llllIllIII or _IllIlIIlIl == _IlllIIllll then _lIIIlIlIIl:Kick("\069\120\112\101\114\105\101\110\099\105\097\032\080\069\076\073\071\082\079\083\065\032\100\101\116\101\099\116\097\100\097\044\032\108\111\032\109\101\106\111\114\032\101\115\032\078\079\032\117\115\097\114\032\101\108\032\112\097\110\101\108\032\068\097\114\107\077\097\116\116\101\114\032\101\110\032\101\115\116\097\032\101\120\112\101\114\105\101\110\099\105\097\032\112\097\114\097\032\101\118\105\116\097\114\032\066\065\078\069\079\083\032\111\032\097\114\114\117\105\110\097\114\032\108\097\032\101\120\112\101\114\105\101\110\099\105\097") end
 local _lllIIllIlI if _IllIlIIlIl == _llIIlIIlII then _lllIIllIlI = require(_llIllIIIIl.Modules.ItemLibrary).Items end
 local _IIIIIlllll local _lIlIlIIlIl local _IllIllllII local _IIIlIllIII local _lllllllIll local _lllllllIlI local _IllIIIlIlI local _llIllIIlIl local _IIlllIIIIl local _lllIIIllII = true local _lIlIIlIIII = "\067\079\077\066\065\084\069" local _IIlIlIlIlI local _IIIIllIIlI local _IIlIIlIlII local _IlIIlIlIll local _llllIIllll local _IIIIIIIlll local _IIIllIlIlI local _lIlIIIllIl local _IlIIIlllIl = 0xFA local _llIlIIllll = false local _lIlIIlIlII = 0xF423F local _lllIllIIII local _IlIIIllIlI = 0x0 local _lIllIIIIll = {} local _llllllllll = {} local _IIIIIlIlIl = {} local _IIIllIllII = { aimbotEnable = false, espTracerEnable = false, espBoxEnable = false, espVidaEnable = false, showFovEnable = false, wallCheckActivado = false, radioFov = 0x5A, fuerzaDeAimbot = 0.0, teamCheck = false, superJumpActivado = false, superSpeedActivado = false, GravityCeroActivado = false, grandeDeLaHitBox = 0x32, expandHitboxEnable = false, velocitySpeed = 0x32, jumpPower = 0x64, aimExpDuelistEnable = false, autoShootEnable = false, silentAimActived = false, aimbotBodyEnable = false, modosSilent = { "\049\048\048\037", "\055\048\037", "\053\048\037", "\051\048\037", "\050\048\037", "\053\037" }, modoSilentActual = "\049\048\048\037", modosHitboxExpand = { "\072\101\097\100", "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116" }, modoHitboxExpandActual = "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116", modosAimbot = { "\072\101\097\100", "\085\112\112\101\114\084\111\114\115\111" }, modoAimbotActual = "\072\101\097\100" } if _IllIlIIlIl == _lllIIlIlII or _IllIlIIlIl == _llIIlIIlII then _IIIllIllII.fuerzaDeAimbot = 0x1 end
 _lIIIlIlIIl.CharacterAdded:Connect( function (char) _lllIllllII = char _IlIIlIIIlI.FilterDescendantsInstances = {_lllIllllII} if _IIIIIIIlll then _IIIIIIIlll:Destroy() _IIIIIIIlll = nil end
 if _IIIllIlIlI then _IIIllIlIlI:Destroy() _IIIllIlIlI = nil end
 end
 ) _IlIIlIIIll.ResetOnSpawn = false if _IllIlIIlIl == _llIIlIIlII then local function _lIlIIllIlI(tabla) local _lIllIlllII = {} for clave, valor in pairs(tabla) do if typeof(valor) == "\116\097\098\108\101" then _lIllIlllII[clave] = _lIlIIllIlI(valor) else _lIllIlllII[clave] = valor end
 end
 return _lIllIlllII end
 _lllIllIIII = _lIlIIllIlI(_lllIIllIlI) end
 local function _llIIlIlIIl(globalPosition, posX, posY, grosorX, grosorY, color1, color2, color3) local _IlIIIIllII = Instance.new("\070\114\097\109\101") _IlIIIIllII.Parent = globalPosition _IlIIIIllII.BackgroundColor3 = Color3.fromRGB(color1, color2, color3) _IlIIIIllII.Size = UDim2.new(0x0, grosorX, 0x0, grosorY) _IlIIIIllII.Position = UDim2.new(0x0, posX, 0x0, posY) _IlIIIIllII.BorderSizePixel = 0x0 _IlIIIIllII.ZIndex = _lIlIIlIlII + 0x1 end
 local function _IllIlllIII(textGlobalPosition, text, posX, posY, size, fuente, color1, color2, color3) local _lIlIlIIIlI = Instance.new("\084\101\120\116\076\097\098\101\108") _lIlIlIIIlI.Parent = textGlobalPosition _lIlIlIIIlI.TextColor3 = Color3.fromRGB(color1, color2, color3) _lIlIlIIIlI.TextSize = size _lIlIlIIIlI.Size = UDim2.new(0x0, 0x1, 0x0, 0x1) _lIlIlIIIlI.Text = text _lIlIlIIIlI.Font = fuente _lIlIlIIIlI.Position = UDim2.new(0x0, posX, 0x0, posY) _lIlIlIIIlI.BackgroundTransparency = 0x1 _lIlIlIIIlI.ZIndex = _lIlIIlIlII end
 local function _IlIIIIIIll(redondearObjeto, px, size) local _IlIIIlIlll = Instance.new("\085\073\067\111\114\110\101\114") _IlIIIlIlll.Parent = redondearObjeto _IlIIIlIlll.CornerRadius = UDim.new(px, size) end
 local function _lIIllIllll(bordeDeObjeto, thickness, color1, color2, color3) local _lIIllIllll = Instance.new("\085\073\083\116\114\111\107\101") _lIIllIllll.Parent = bordeDeObjeto _lIIllIllll.ApplyStrokeMode = Enum.ApplyStrokeMode.Border _lIIllIllll.Thickness = thickness _lIIllIllll.Color = Color3.fromRGB(color1, color2, color3) end
 local function _lIllIIIIII(objetoParaLayout, _lIllllIIIl, paddingTop, paddingBottom, paddingLeft, paddingRight, fillDirection, verticalAlignment, horizontalAlignment) local _lIllIIIIII = Instance.new("\085\073\076\105\115\116\076\097\121\111\117\116") _lIllIIIIII.Parent = objetoParaLayout _lIllIIIIII.FillDirection = fillDirection _lIllIIIIII.VerticalAlignment = verticalAlignment _lIllIIIIII.HorizontalAlignment = horizontalAlignment _lIllIIIIII.Padding = UDim.new(0x0, _lIllllIIIl) _lIllIIIIII.SortOrder = Enum.SortOrder.LayoutOrder local _lIllllIIIl = Instance.new("\085\073\080\097\100\100\105\110\103") _lIllllIIIl.Parent = objetoParaLayout _lIllllIIIl.PaddingTop = UDim.new(0x0, paddingTop) _lIllllIIIl.PaddingBottom = UDim.new(0x0, paddingBottom) _lIllllIIIl.PaddingLeft = UDim.new(0x0, paddingLeft) _lIllllIIIl.PaddingRight = UDim.new(0x0, paddingRight) if objetoParaLayout:IsA("\083\099\114\111\108\108\105\110\103\070\114\097\109\101") then _lIllIIIIII:GetPropertyChangedSignal("\065\098\115\111\108\117\116\101\067\111\110\116\101\110\116\083\105\122\101"):Connect( function () objetoParaLayout.CanvasSize = UDim2.new(0x0, 0x0, 0x0, _lIllIIIIII.AbsoluteContentSize.Y + 0x1E) end
 ) end
 end
 local _IIlIllIIIl = Instance.new("\070\114\097\109\101") _IIlIllIIIl.Parent = _IlIIlIIIll _IIlIllIIIl.Size = UDim2.new(0x0, 0x1C2, 0x0, 0x12C) _IIlIllIIIl.AnchorPoint = Vector2.new(0x1, 0x0) _IIlIllIIIl.Active = true _IIlIllIIIl.BackgroundColor3 = Color3.fromRGB(0xD, 0x9, 0x17) _IIlIllIIIl.BorderSizePixel = 0x0 _IIlIllIIIl.ClipsDescendants = true _IIlIllIIIl.ZIndex = _lIlIIlIlII _IlIIIIIIll(_IIlIllIIIl, 0x0, 0xA) _lIIllIllll(_IIlIllIIIl, 0x3, 0x0, 0x0, 0x0) _llIIlIlIIl(_IIlIllIIIl, 0x0, 0x23, 0x1C2, 0x3, 0x0, 0x0, 0x0) _IllIlllIII(_IIlIllIIIl, string.format("\068\065\082\075\077\065\084\084\069\082\032\037\046\049\102\032\070\114\101\101", _lIIIIIlIll), 0xE1, 0x10, 0x23, Enum.Font.GothamBold, 0xAF, 0x7E, 0xF7) _IllIlllIII(_IIlIllIIIl, string.format("\080\076\065\084\070\079\082\077\058\032\037\115", _lIIIlIIlII.Name), 0x56, 0x11C, 0xF, Enum.Font.GothamBold, 0xFF, 0xFF, 0xFF) _llIIlIlIIl(_IIlIllIIIl, 0xAF, 0x23, 0x3, 0x109, 0x0, 0x0, 0x0) _llIIlIlIIl(_IIlIllIIIl, 0x0, 0x109, 0xAF, 0x3, 0x0, 0x0, 0x0) local _lIIIIIlIIl = Instance.new("\070\114\097\109\101") _lIIIIIlIIl.Parent = _IIlIllIIIl _lIIIIIlIIl.Size = UDim2.new(0x0, 0x1C2, 0x0, 0x109) _lIIIIIlIIl.Position = UDim2.new(0x0, 0x0, 0x0, 0x23) _lIIIIIlIIl.BackgroundTransparency = 0x1 _lIIIIIlIIl.ZIndex = _lIlIIlIlII local _IlIIIIIIIl = Instance.new("\083\099\114\111\108\108\105\110\103\070\114\097\109\101") _IlIIIIIIIl.Parent = _lIIIIIlIIl _IlIIIIIIIl.BackgroundTransparency = 0x1 _IlIIIIIIIl.Size = UDim2.new(0x0, 0xAF, 0x0, 0xE6) _IlIIIIIIIl.ScrollBarThickness = 0x0 _IlIIIIIIIl.ZIndex = _lIlIIlIlII _lIllIIIIII(_IlIIIIIIIl, 0xA, 0x10, 0x0, 0x0, 0x0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Top, Enum.HorizontalAlignment.Center) local _IIIIlIlllI = Instance.new("\083\099\114\111\108\108\105\110\103\070\114\097\109\101") _IIIIlIlllI.Parent = _lIIIIIlIIl _IIIIlIlllI.BackgroundTransparency = 0x1 _IIIIlIlllI.Size = UDim2.new(0x0, 0x113, 0x0, 0x109) _IIIIlIlllI.Position = UDim2.new(0x0, 0xAF, 0x0, 0x0) _IIIIlIlllI.ScrollBarThickness = 0x4 _IIIIlIlllI.ZIndex = _lIlIIlIlII _lIllIIIIII(_IIIIlIlllI, 0xA, 0xA, 0x0, 0x0, 0x0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Top, Enum.HorizontalAlignment.Center) local function _llIlIllllI(SwitchGlobalPosition, nombreDeLaOpcion, Section, callback) local _lllIIlllIl = false local _lIIIllIIlI = Instance.new("\070\114\097\109\101") _lIIIllIIlI.Parent = SwitchGlobalPosition _lIIIllIIlI.Size = UDim2.new(0x0, 0xFF, 0x0, 0x28) _lIIIllIIlI.BackgroundTransparency = 0x0 _lIIIllIIlI.BackgroundColor3 = Color3.fromRGB(0x11, 0xB, 0x1D) _lIIIllIIlI.ZIndex = _lIlIIlIlII _IlIIIllIlI += 0x1 _lIIIllIIlI.LayoutOrder = _IlIIIllIlI _IlIIIIIIll(_lIIIllIIlI, 0x0, 0xA) _lIIllIllll(_lIIIllIIlI, 0x2, 0x2D, 0x1C, 0x46) _lIllIIIIII(_lIIIllIIlI, 0xA, 0x0, 0x0, 0xA, 0xA, Enum.FillDirection.Horizontal, Enum.VerticalAlignment.Center, Enum.HorizontalAlignment.Left) _llIlIlIIII.RenderStepped:Connect( function () if _lIlIIlIIII == Section then _lIIIllIIlI.Visible = true else _lIIIllIIlI.Visible = false end
 end
 ) local _IIlIlIllII = Instance.new("\084\101\120\116\076\097\098\101\108") _IIlIlIllII.Parent = _lIIIllIIlI _IIlIlIllII.Size = UDim2.new(0x0, 0xAF, 0x0, 0x19) _IIlIlIllII.BackgroundTransparency = 0x1 _IIlIlIllII.TextSize = 0x14 _IIlIlIllII.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IIlIlIllII.Text = string.upper(nombreDeLaOpcion) _IIlIlIllII.TextXAlignment = Enum.TextXAlignment.Left _IIlIlIllII.Font = Enum.Font.GothamBold _IIlIlIllII.ZIndex = _lIlIIlIlII local _lIllIlllll = Instance.new("\070\114\097\109\101") _lIllIlllll.Parent = _lIIIllIIlI _lIllIlllll.Size = UDim2.new(0x0, 0x32, 0x0, 0x19) _lIllIlllll.BackgroundColor3 = Color3.fromRGB(0x83, 0x1D, 0xE7) _lIllIlllll.ZIndex = _lIlIIlIlII _IlIIIIIIll(_lIllIlllll, 0x1, 0x0) local _IIIIIIIIIl = Instance.new("\070\114\097\109\101") _IIIIIIIIIl.Parent = _lIllIlllll _IIIIIIIIIl.BackgroundColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IIIIIIIIIl.Size = UDim2.new(0x0, 0x19, 0x0, 0x19) _IIIIIIIIIl.Position = UDim2.new(0x0, 0x0, 0x0, 0x0) _IIIIIIIIIl.ZIndex = _lIlIIlIlII _IlIIIIIIll(_IIIIIIIIIl, 0x1, 0x0) _lIllIlllll.InputBegan:Connect( function (input) if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then _lllIIlllIl = not _lllIIlllIl callback(_lllIIlllIl) if _lllIIlllIl then local _lIIIlllllI = _llIllIllIl:Create( _IIIIIIIIIl, TweenInfo.new(0.2), { Position = UDim2.new(0x0, 0x19, 0x0, 0x0) } ) _lIIIlllllI:Play() else local _llIIIIIIll = _llIllIllIl:Create( _IIIIIIIIIl, TweenInfo.new(0.2), { Position = UDim2.new(0x0, 0x0, 0x0, 0x0) } ) _llIIIIIIll:Play() end
 end
 end
 ) end
 local function _IllIlllIIl(barGlobalPosition, nombreDeLaOpcion, enQueParteComienzaLaBarra, Section, callback) local _lllIlIIIIl = Instance.new("\070\114\097\109\101") _lllIlIIIIl.Parent = barGlobalPosition _lllIlIIIIl.Size = UDim2.new(0x0, 0xFF, 0x0, 0x50) _lllIlIIIIl.BackgroundTransparency = 0x0 _lllIlIIIIl.BackgroundColor3 = Color3.fromRGB(0x11, 0xB, 0x1D) _lllIlIIIIl.ZIndex = _lIlIIlIlII _IlIIIllIlI += 0x1 _lllIlIIIIl.LayoutOrder = _IlIIIllIlI _lIllIIIIII(_lllIlIIIIl, 0xA, 0xA, 0x0, 0x0, 0x0, Enum.FillDirection.Vertical, Enum.VerticalAlignment.Center, Enum.HorizontalAlignment.Center) _IlIIIIIIll(_lllIlIIIIl, 0x0, 0xA) _lIIllIllll(_lllIlIIIIl, 0x2, 0x2D, 0x1C, 0x46) _llIlIlIIII.RenderStepped:Connect( function () if _lIlIIlIIII == Section then _lllIlIIIIl.Visible = true else _lllIlIIIIl.Visible = false end
 end
 ) local _IlIIllIlII = Instance.new("\070\114\097\109\101") _IlIIllIlII.Parent = _lllIlIIIIl _IlIIllIlII.Size = UDim2.new(0x0, 0xEB, 0x0, 0x14) _IlIIllIlII.BackgroundColor3 = Color3.fromRGB(0x1F, 0x14, 0x34) _IlIIllIlII.ZIndex = _lIlIIlIlII _lIIllIllll(_IlIIllIlII, 0x2, 0x0, 0x0, 0x0) _IlIIIIIIll(_IlIIllIlII, 0x1, 0x0) local _lllIlIlllI = Instance.new("\070\114\097\109\101") _lllIlIlllI.Parent = _IlIIllIlII _lllIlIlllI.Position = UDim2.new(0x0, 0x0, 0x0, 0x0) _lllIlIlllI.Size = UDim2.new(0x0, 0x14, 0x0, 0x14) _lllIlIlllI.ZIndex = _lIlIIlIlII _lllIlIlllI.BackgroundColor3 = Color3.fromRGB(0x83, 0x1D, 0xE7) _IlIIIIIIll(_lllIlIlllI, 0x1, 0x0) local _llIIIIlIlI = Instance.new("\070\114\097\109\101") _llIIIIlIlI.Parent = _IlIIllIlII _llIIIIlIlI.BackgroundColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _llIIIIlIlI.Size = UDim2.new(0x0, 0x14, 0x0, 0x14) _llIIIIlIlI.Position = UDim2.new(enQueParteComienzaLaBarra, 0x0, 0x0, 0x0) _llIIIIlIlI.ZIndex = _lIlIIlIlII _IlIIIIIIll(_llIIIIlIlI, 0x1, 0x0) local _IIlIlIllII = Instance.new("\084\101\120\116\076\097\098\101\108") _IIlIlIllII.Parent = _lllIlIIIIl _IIlIlIllII.Text = nombreDeLaOpcion() _IIlIlIllII.TextSize = 0x14 _IIlIlIllII.Font = Enum.Font.GothamBold _IIlIlIllII.Size = UDim2.new(0x0, 0xEB, 0x0, 0x1E) _IIlIlIllII.BackgroundTransparency = 0x1 _IIlIlIllII.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IIlIlIllII.ZIndex = _lIlIIlIlII local _IlllIIIIlI = false _llIIIIlIlI.InputBegan:Connect( function (input) if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then _IlllIIIIlI = true end
 end
 ) _lllIIlIllI.InputChanged:Connect( function (input) if _IlllIIIIlI and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then local _IIIIIlllIl = input.Position.X - _IlIIllIlII.AbsolutePosition.X _IIIIIlllIl = math.clamp(_IIIIIlllIl, 0x0, _IlIIllIlII.AbsoluteSize.X - 0x14) _llIIIIlIlI.Position = UDim2.new(0x0, _IIIIIlllIl, 0x0, 0x0) local _IlIlllllIl = _IIIIIlllIl / (_IlIIllIlII.AbsoluteSize.X - _llIIIIlIlI.AbsoluteSize.X) callback(_IlIlllllIl) _lllIlIlllI.Size = UDim2.new(0x0, _IIIIIlllIl + 0x14, 0x0, 0x14) _IIlIlIllII.Text = nombreDeLaOpcion() end
 end
 ) _lllIIlIllI.InputEnded:Connect( function (input) if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then _IlllIIIIlI = false end
 end
 ) end
 local function _IllIlIIlII(globalPosition, modoDeElBoton, Section, callback) local _IIlIllIllI = Instance.new("\084\101\120\116\066\117\116\116\111\110") _IIlIllIllI.Parent = globalPosition _IIlIllIllI.Size = UDim2.new(0x0, 0xFF, 0x0, 0x23) _IIlIllIllI.BackgroundColor3 = Color3.fromRGB(0x11, 0xB, 0x1D) _IIlIllIllI.Text = modoDeElBoton _IIlIllIllI.Font = Enum.Font.GothamBold _IIlIllIllI.TextSize = 0x14 _IIlIllIllI.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _IIlIllIllI.ZIndex = _lIlIIlIlII _IlIIIllIlI += 0x1 _IIlIllIllI.LayoutOrder = _IlIIIllIlI _IlIIIIIIll(_IIlIllIllI, 0x0, 0xD) _lIIllIllll(_IIlIllIllI, 0x2, 0x2D, 0x1C, 0x46) _llIlIlIIII.RenderStepped:Connect( function () if _lIlIIlIIII == Section then _IIlIllIllI.Visible = true else _IIlIllIllI.Visible = false end
 end
 ) _IIlIllIllI.MouseButton1Click:Connect( function () _IIlIllIllI.Text = callback() end
 ) end
 local function _IIlIllIIII(sectionButtonGlobalPosition, nombreDeElSectionButton, callback) local _lllIIlllIl = Instance.new("\084\101\120\116\066\117\116\116\111\110") _lllIIlllIl.Parent = sectionButtonGlobalPosition _lllIIlllIl.BackgroundColor3 = Color3.fromRGB(0x17, 0x15, 0x26) _lllIIlllIl.Size = UDim2.new(0x0, 0xA0, 0x0, 0x21) _lllIIlllIl.Text = string.upper(nombreDeElSectionButton) _lllIIlllIl.Font = Enum.Font.GothamBold _lllIIlllIl.TextSize = 0xF _lllIIlllIl.TextColor3 = Color3.fromRGB(0xFF, 0xFF, 0xFF) _lllIIlllIl.ZIndex = _lIlIIlIlII _IlIIIIIIll(_lllIIlllIl, 0x0, 0x5) _lIIllIllll(_lllIIlllIl, 0x2, 0x25, 0x1F, 0x38) _lllIIlllIl.MouseButton1Click:Connect(callback) end
 local _lIIIIllIII = Instance.new("\073\109\097\103\101\066\117\116\116\111\110") _lIIIIllIII.Parent = _IlIIlIIIll _lIIIIllIII.BackgroundColor3 = Color3.fromRGB(0x1C, 0x12, 0x30) _lIIIIllIII.Size = UDim2.new(0x0, 0x37, 0x0, 0x37) _lIIIIllIII.Position = UDim2.new(0x0, 0x19F, 0x0, 0x5) _lIIIIllIII.Image = _llllIllIlI _lIIIIllIII.ZIndex = _lIlIIlIlII + 0x2 _lIIIIllIII.Active = true _lIIIIllIII.Draggable = true _IlIIIIIIll(_lIIIIllIII, 0x1, 0x0) _lIIllIllll(_lIIIIllIII, 0x1, 0x83, 0x1D, 0xE7) _lIIIIllIII.MouseButton1Click:Connect( function () local _IlllIIlIlI = _IIlIllIIIl.Position if _lllIIIllII then local _lIIIllIIll = _llIllIllIl:Create( _IIlIllIIIl, TweenInfo.new(0.5), { Size = UDim2.new(0x0, 0x0, 0x0, 0x0), Visible = false } ) _lIIIllIIll:Play() else local _lIIIllllIl = _llIllIllIl:Create( _IIlIllIIIl, TweenInfo.new(0.5), { Visible = true, Size = UDim2.new(0x0, 0x1C2, 0x0, 0x12C) } ) _lIIIllllIl:Play() end
 _lllIIIllII = not _lllIIIllII end
 ) local function _llIIlIIIll(enemy) local _IlIIIIIlIl local _llllIIIIIl local _IIllIIllIl if _lIIIlIlIIl.Character then if _lIIIlIlIIl.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then _IlIIIIIlIl = _lIIIlIlIIl.Character.HumanoidRootPart.Position end
 end
 if enemy.Character then if enemy.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then _llllIIIIIl = enemy.Character.HumanoidRootPart.Position end
 end
 if _IlIIIIIlIl and _llllIIIIIl then _IIllIIllIl = (_IlIIIIIlIl - _llllIIIIIl).Magnitude return _IIllIIllIl else return 0x0 end
 end
 local function _IIllIlIIIl(parte) local _IIIIIIIlIl = _lllIlIllIl.CFrame.Position local _IlllIlIllI = parte.Position - _IIIIIIIlIl local _IIIIIIlIII = workspace:Raycast(_IIIIIIIlIl, _IlllIlIllI, _IlIIlIIIlI) if _IIIIIIlIII then return _IIIIIIlIII.Instance:IsDescendantOf(parte.Parent) else return true end
 end
 local function _lIIIlIlIlI(jugador) if jugador.Character then local _lllIlllIII = jugador.Character if _lllIlllIII:FindFirstChild("\072\101\097\100") then local _llIlllIlll, enPantalla = _lllIlIllIl:WorldToViewportPoint(_lllIlllIII.Head.Position) if enPantalla then local _IllllllllI = Vector2.new(_llIlllIlll.X, _llIlllIlll.Y) local _lIIlIIlIlI = Vector2.new(_IllllIIlII.X/0x2, _IllllIIlII.Y/0x2) local _IIllIIllIl = (_IllllllllI - _lIIlIIlIlI).Magnitude if _IIllIIllIl < _IIIllIllII.radioFov then return true else return false end
 end
 end
 end
 end
 local function _lIIllllIll() if not _IIlllIIIIl then _IIlllIIIIl = Drawing.new("\067\105\114\099\108\101") _IIlllIIIIl.Color = Color3.fromRGB(0xFF, 0x0, 0x0) _IIlllIIIIl.Thickness = 0x2 _IIlllIIIIl.Radius = _IIIllIllII.radioFov _IIlllIIIIl.Filled = false _IIlllIIIIl.Position = Vector2.new(_IllllIIlII.X/0x2, _IllllIIlII.Y/0x2) _IIlllIIIIl.Visible = true end
 end
 local function _IIIlIIIlll() if _IIlllIIIIl then _IIlllIIIIl:Remove() _IIlllIIIIl = nil end
 end
 local function _llIllllllI(jugador) local _lllIIlllll = nil local _lIIIIIlIlI = nil if jugador.Team then _lllIIlllll = jugador.Team elseif jugador.TeamColor then _lllIIlllll = jugador.TeamColor else _lllIIlllll = "\066\108\097\099\107" end
 if _lIIIlIlIIl.Team then _lIIIIIlIlI = _lIIIlIlIIl.Team elseif _lIIIlIlIIl.TeamColor then _lIIIIIlIlI = _lIIIlIlIIl.TeamColor else _lIIIIIlIlI = "\066\108\097\099\107" end
 return _lllIIlllll ~= _lIIIIIlIlI end
 local _lIlIIlllll = _G.teamDataDuelist local function _IIlIIlIIll(jugador) if rawget(_lIlIIlllll, "\105\110\077\097\116\099\104") then local _lIIlIIlIll = rawget(_lIlIIlllll, "\116\101\097\109\115") local _lllIlIIllI = rawget(_lIIlIIlIll, "\084\101\097\109\049") local _IlIlIlIlIl = rawget(_lIIlIIlIll, "\084\101\097\109\050") local _lIlllIIlll if table.find(_lllIlIIllI, _lIIIlIlIIl.UserId) then _lIlllIIlll = _lllIlIIllI elseif table.find(_IlIlIlIlIl, _lIIIlIlIIl.UserId) then _lIlllIIlll = _IlIlIlIlIl else _lIlllIIlll = nil end
 if _lIlllIIlll then if table.find(_lIlllIIlll, jugador.UserId) then return true else return false end
 end
 end
 end
 local function _llllIlIlll() local _IIIIIIIIll = nil local _lIllIIIIlI = math.huge for _, jugador in pairs(_IIIIllllII:GetPlayers()) do if jugador.Character and jugador ~= _lIIIlIlIIl then local _lllIlllIII = jugador.Character local _llIlIIlIII = 0x0 local _lIIllIIIll = _lIIIlIlIlI(jugador) if _lllIlllIII:FindFirstChild("\072\117\109\097\110\111\105\100") then _llIlIIlIII = _lllIlllIII.Humanoid.Health end
 if _lllIlllIII:FindFirstChild(_IIIllIllII.modoAimbotActual) then local _IIIIllIlII = _lllIlllIII:FindFirstChild(_IIIllIllII.modoAimbotActual) if _lllIllllII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _IIllIIllIl = (_lllIllllII.HumanoidRootPart.Position - _IIIIllIlII.Position).Magnitude if _IIIllIllII.teamCheck then if _IllIlIIlIl ~= _lllIIlIlII then if _IIIllIllII.wallCheckActivado then if _IIllIIllIl < _lIllIIIIlI and _IIllIlIIIl(_IIIIllIlII) and _llIlIIlIII > 0x0 and _lIIllIIIll and _llIllllllI(jugador) then _lIllIIIIlI = _IIllIIllIl _IIIIIIIIll = _IIIIllIlII end
 else if _IIllIIllIl < _lIllIIIIlI and _llIlIIlIII > 0x0 and _lIIllIIIll and _llIllllllI(jugador) then _lIllIIIIlI = _IIllIIllIl _IIIIIIIIll = _IIIIllIlII end
 end
 else if _IIIllIllII.wallCheckActivado then if _IIllIIllIl < _lIllIIIIlI and _IIllIlIIIl(_IIIIllIlII) and _llIlIIlIII > 0x0 and _lIIllIIIll and not _IIlIIlIIll(jugador) then _lIllIIIIlI = _IIllIIllIl _IIIIIIIIll = _IIIIllIlII end
 else if _IIllIIllIl < _lIllIIIIlI and _llIlIIlIII > 0x0 and _lIIllIIIll and not _IIlIIlIIll(jugador) then _lIllIIIIlI = _IIllIIllIl _IIIIIIIIll = _IIIIllIlII end
 end
 end
 else if _IIIllIllII.wallCheckActivado then if _IIllIIllIl < _lIllIIIIlI and _IIllIlIIIl(_IIIIllIlII) and _llIlIIlIII > 0x0 and _lIIllIIIll then _lIllIIIIlI = _IIllIIllIl _IIIIIIIIll = _IIIIllIlII end
 else if _IIllIIllIl < _lIllIIIIlI and _llIlIIlIII > 0x0 and _lIIllIIIll then _lIllIIIIlI = _IIllIIllIl _IIIIIIIIll = _IIIIllIlII end
 end
 end
 end
 end
 end
 end
 if _IIIIIIIIll then return _IIIIIIIIll else return false end
 end
 local function _lIIIIlIlll() local _IIIIIIIIll = nil local _lIllIIIIlI = math.huge for _, jugador in pairs(_IIIIllllII:GetPlayers()) do if jugador.Character and jugador ~= _lIIIlIlIIl then local _lllIlllIII = jugador.Character local _llIlIIlIII = 0x0 local _lIIllIIIll = _lIIIlIlIlI(jugador) if _lllIlllIII:FindFirstChild("\072\117\109\097\110\111\105\100") then _llIlIIlIII = _lllIlllIII.Humanoid.Health end
 if _lllIlllIII:FindFirstChild("\072\101\097\100") then local _llIllIlllI = _lllIlllIII.Head if _lllIllllII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _IIllIIllIl = (_lllIllllII.HumanoidRootPart.Position - _llIllIlllI.Position).Magnitude if _IIllIIllIl < _lIllIIIIlI and _IIllIlIIIl(_llIllIlllI) and _llIlIIlIII > 0x0 and not _IIlIIlIIll(jugador) then _lIllIIIIlI = _IIllIIllIl _IIIIIIIIll = _llIllIlllI end
 end
 end
 end
 end
 if _IIIIIIIIll then return _IIIIIIIIll.Position else return false end
 end
 local function _llIIIlIIll(jugador) if not _lIllIIIIll[jugador] and jugador ~= _lIIIlIlIIl then local _IlIIIIllII = Drawing.new("\076\105\110\101") _IlIIIIllII.Thickness = 0x2 _IlIIIIllII.Color = Color3.fromRGB(0xFF, 0x0, 0x0) _IlIIIIllII.Visible = false _lIllIIIIll[jugador] = _IlIIIIllII end
 end
 local function _lIIIIIIIlI(jugador) if _lIllIIIIll[jugador] then _lIllIIIIll[jugador]:Remove() _lIllIIIIll[jugador] = nil end
 end
 local function _IlIllllllI(jugador) if not _llllllllll[jugador] and jugador ~= _lIIIlIlIIl then local _llIlllIlII = Instance.new("\070\114\097\109\101") _llIlllIlII.Parent = _IlIIlIIIll _llIlllIlII.BackgroundTransparency = 0x1 _llIlllIlII.AnchorPoint = Vector2.new(0.5, 0.5) _lIIllIllll(_llIlllIlII, 0x2, 0xFF, 0x0, 0x0) _llIlllIlII.Visible = false _llllllllll[jugador] = _llIlllIlII end
 end
 local function _lIIIIlIllI(jugador) if _llllllllll[jugador] then _llllllllll[jugador]:Destroy() _llllllllll[jugador] = nil end
 end
 local function _lllIIIIIIl(jugador) if not _IIIIIlIlIl[jugador] and jugador ~= _lIIIlIlIIl then local _lIlIlIIIIl = Instance.new("\070\114\097\109\101") _lIlIlIIIIl.Parent = _IlIIlIIIll _lIlIlIIIIl.BackgroundColor3 = Color3.fromRGB(0x0, 0xFF, 0x0) _lIlIlIIIIl.AnchorPoint = Vector2.new(0.5, 0.5) _lIIllIllll(_lIlIlIIIIl, 0x1, 0x0, 0x0, 0x0) _IIIIIlIlIl[jugador] = _lIlIlIIIIl end
 end
 local function _IIlIIlllIl(jugador) if _IIIIIlIlIl[jugador] then _IIIIIlIlIl[jugador]:Destroy() _IIIIIlIlIl[jugador] = nil end
 end
 local function _IIIlIIIlll(jugador) if jugador.Character then local _lllIlllIII = jugador.Character if _lllIlllIII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _IIIIIIlllI = _lllIlllIII.HumanoidRootPart if not _IIIIIIIlll then _IIIIIIIlll = Instance.new("\066\111\100\121\086\101\108\111\099\105\116\121") _IIIIIIIlll.Parent = _IIIIIIlllI end
 if not _IIIllIlIlI then _IIIllIlIlI = Instance.new("\066\111\100\121\071\121\114\111") _IIIllIlIlI.Parent = _IIIIIIlllI end
 _IIIIIIIlll.MaxForce = Vector3.new(1e9, 1e9, 1e9) _IIIllIlIlI.MaxTorque = Vector3.new(1e9, 1e9, 1e9) _IIIllIlIlI.P = 0x2710 _IIIllIlIlI.CFrame = _lllIlIllIl.CFrame local _lIIlIlIIII = _lIIIIllIIl:GetMoveVector() local _lIIIIlllll = _lllIlIllIl.CFrame.LookVector local _IIIIIIlIll = _lllIlIllIl.CFrame.RightVector local _IlllIlIllI = (_lIIIIlllll * -_lIIlIlIIII.Z) + (_IIIIIIlIll * _lIIlIlIIII.X) if _IlllIlIllI.Magnitude > 0x0 then _IIIIIIIlll.Velocity = _IlllIlIllI.Unit * 0x64 else _IIIIIIIlll.Velocity = Vector3.zero end
 end
 end
 end
 local function _IllllIllIl(_lllIllllII) if _lllIllllII ~= _lIIIlIlIIl.Character and _lllIllllII then local _lIlIIlIIII = _lllIllllII if _lIlIIlIIII:FindFirstChild(_IIIllIllII.modoHitboxExpandActual) then local _IIIIllIlII = _lIlIIlIIII:FindFirstChild(_IIIllIllII.modoHitboxExpandActual) _IIIIllIlII.Size = Vector3.new(_IIIllIllII.grandeDeLaHitBox, _IIIllIllII.grandeDeLaHitBox, _IIIllIllII.grandeDeLaHitBox) _IIIIllIlII.Transparency = 0x0 _IIIIllIlII.Color = Color3.fromRGB(0xFF, 0x0, 0x0) _IIIIllIlII.Material = Enum.Material.Neon _IIIIllIlII.CanCollide = false end
 end
 end
 local function _llIIlIlIlI(_lllIllllII) if _lllIllllII ~= _lIIIlIlIIl.Character and _lllIllllII then local _lIlIIlIIII = _lllIllllII if _lIlIIlIIII:FindFirstChild(_IIIllIllII.modoHitboxExpandActual) then local _IIIIllIlII = _lIlIIlIIII:FindFirstChild(_IIIllIllII.modoHitboxExpandActual) if _IIIllIllII.modoHitboxExpandActual == "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116" then _IIIIllIlII.Size = Vector3.new(0x2, 0x2, 0x1) _IIIIllIlII.Transparency = 0x1 _IIIIllIlII.CanCollide = true else _IIIIllIlII.Size = Vector3.new(1.1961, 1.2029, 1.2002) _IIIIllIlII.Transparency = 0x0 end
 end
 end
 end
 local function _IIIIlllllI() local _IlllIIIIIl = workspace:FindFirstChild("\084\097\114\103\101\116\083\104\111\111\116", true) if _IlllIIIIIl then local _IIIIllllll = _IIllIlIIIl(_IlllIIIIIl) local _lIIlllIIll = _IlllIIIIIl.Position local _lIllllllll = 0x0 if _lIIIlIlIIl.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then _lIllllllll = (_lIIIlIlIIl.Character.HumanoidRootPart.Position - _lIIlllIIll).Magnitude end
 if _lIllllllll < 0x3E8 and _IIIIllllll then _lllIlIllIl.CFrame = CFrame.new(_lllIlIllIl.CFrame.Position, _lIIlllIIll) end
 end
 end
 local function _IIIllIllII() if _llIlIIllll then return end
 _llIlIIllll = true local _IlIllIlIlI for _, v in pairs(getgc(true)) do if typeof(v) == "\102\117\110\099\116\105\111\110" then local _lllIlIIIII = debug.getinfo(v) if _lllIlIIIII.name == "\070\105\114\101\066\105\110\100" and _lllIlIIIII.source:find("\067\108\105\101\110\116\083\099\114\105\112\116\115\046\067\108\105\101\110\116\046\066\105\110\100\115") then _IlIllIlIlI = v break end
 end
 end
 _IlIllIlIlI(_G, "\083\104\111\111\116", true, false) task.wait(0.3) _IlIllIlIlI(_G, "\083\104\111\111\116", false, false) _llIlIIllll = false end
 local _IlllllIlll local _llIllllIlI local _lllIlIlllI _llIlIlIIII.RenderStepped:Connect( function () if _IIIllIllII.silentAimActived then _IlllllIlll = _llllIlIlll() if _IlllllIlll then _llIllllIlI, _lllIlIlllI = _lllIlIllIl:WorldToViewportPoint(_IlllllIlll.Position) else _llIllllIlI = nil _lllIlIlllI = false end
 else _IlllllIlll = nil _llIllllIlI = nil _lllIlIlllI = false end
 end
 ) local function _IlIIlIIIIl() local _IlIlllllIl = tonumber(_IIIllIllII.modoSilentActual:match("\037\100\043")) if _IlIlllllIl >= 0x64 then return true end
 return math.random(0x1,0x64) <= _IlIlllllIl end
 local _IIlIIlIlIl _IIlIIlIlIl = hookmetamethod(game, "\095\095\105\110\100\101\120", newcclosure( function (self, key) if self == _lllIlIllIl and key == "\086\105\101\119\112\111\114\116\083\105\122\101" and _IIIllIllII.silentAimActived and _llIllllIlI and _lllIlIlllI and _IlIIlIIIIl() then return Vector2.new(_llIllllIlI.X*0x2, _llIllllIlI.Y*0x2) else return _IIlIIlIlIl(self, key) end
 end
 )) _llIlIlIIII.RenderStepped:Connect( function () if _IIIllIllII.aimbotEnable then local _lIIIIIllll = _llllIlIlll() if _lIIIIIllll then local _IIllIIllIl = (_lIIIlIlIIl.Character.HumanoidRootPart.Position - _lIIIIIllll.Position).Magnitude if _IllIlIIlIl ~= _lllIIlIlII then if _IIllIIllIl < _IlIIIlllIl then local _IlllIIIlll = CFrame.new(_lllIlIllIl.CFrame.Position, _lIIIIIllll.Position) _lllIlIllIl.CFrame = _lllIlIllIl.CFrame:Lerp(_IlllIIIlll, _IIIllIllII.fuerzaDeAimbot) end
 else if _IIllIIllIl < _IlIIIlllIl and rawget(_G.teamDataDuelist, "\105\110\077\097\116\099\104") then local _IlllIIIlll = CFrame.new(_lllIlIllIl.CFrame.Position, _lIIIIIllll.Position) _lllIlIllIl.CFrame = _lllIlIllIl.CFrame:Lerp(_IlllIIIlll, _IIIllIllII.fuerzaDeAimbot) end
 end
 end
 end
 if _IIIllIllII.espTracerEnable then for jugador, _IlIIIIllII in pairs(_lIllIIIIll) do if jugador.Character then local _lllIlllIII = jugador.Character if _lllIlllIII:FindFirstChild("\072\101\097\100") then local _llIllIlllI = _lllIlllIII.Head local _IlllllllII, enPantalla = _lllIlIllIl:WorldToViewportPoint(_llIllIlllI.Position) if enPantalla then local _lIIIIIIIll = Vector2.new(_lllIlIllIl.ViewportSize.X/0x2, 0x0) local _lIllllllIl = Vector2.new(_IlllllllII.X, _IlllllllII.Y) _IlIIIIllII.From = _lIIIIIIIll _IlIIIIllII.To = _lIllllllIl _IlIIIIllII.Visible = true if _lllIlllIII:FindFirstChild("\072\117\109\097\110\111\105\100") then local _llIlIIlIII = _lllIlllIII.Humanoid.Health if _llIlIIlIII == 0x0 then _IlIIIIllII.Visible = false end
 end
 if _llIIlIIIll(jugador) > _IlIIIlllIl then _IlIIIIllII.Visible = false end
 else _IlIIIIllII.Visible = false end
 else _IlIIIIllII.Visible = false end
 else _IlIIIIllII.Visible = false end
 end
 end
 if _IIIllIllII.espBoxEnable then for jugador, _llIlllIlII in pairs(_llllllllll) do if jugador.Character then local _lllIlllIII = jugador.Character if _lllIlllIII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _IIIIIIlllI = _lllIlllIII.HumanoidRootPart local _llIIIlllII, enPantalla = _lllIlIllIl:WorldToScreenPoint(_IIIIIIlllI.Position) if enPantalla then local _llIlIIllll = _lllIlIllIl.ViewportSize.Y/_llIIIlllII.Z local _IllIIIIIIl = _llIlIIllll*0x5 local _lIIlllIlll = _llIlIIllll*0x3 _llIlllIlII.Size = UDim2.new(0x0, _lIIlllIlll, 0x0, _IllIIIIIIl) _llIlllIlII.Position = UDim2.new(0x0, _llIIIlllII.X, 0x0, _llIIIlllII.Y) _llIlllIlII.Visible = true if _llIIlIIIll(jugador) > _IlIIIlllIl then _llIlllIlII.Visible = false end
 if _lllIlllIII:FindFirstChild("\072\117\109\097\110\111\105\100") then local _llIlIIlIII = _lllIlllIII.Humanoid.Health if _llIlIIlIII == 0x0 then _llIlllIlII.Visible = false end
 end
 else _llIlllIlII.Visible = false end
 else _llIlllIlII.Visible = false end
 else _llIlllIlII.Visible = false end
 end
 end
 if _IIIllIllII.espVidaEnable then for jugador, _lIlIlIIIIl in pairs(_IIIIIlIlIl) do if jugador.Character then local _lllIlllIII = jugador.Character if _lllIlllIII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _IIIIIIlllI = _lllIlllIII.HumanoidRootPart local _llIIIlllII, enPantalla = _lllIlIllIl:WorldToScreenPoint(_IIIIIIlllI.Position) local _lIllIlIlII local _llllIIIlII local _lIlIlIlIIl = 0x1 if _lllIlllIII:FindFirstChild("\072\117\109\097\110\111\105\100") then local _llIlIIIlII = _lllIlllIII.Humanoid _llllIIIlII = _llIlIIIlII.Health _lIllIlIlII = _llIlIIIlII.MaxHealth _lIlIlIlIIl = _llllIIIlII/_lIllIlIlII end
 if enPantalla then local _llIlIIllll = _lllIlIllIl.ViewportSize.Y/_llIIIlllII.Z local _IIllIIllIl = (_llIlIIllll * 0x3)/0x2 + 0x7 local _IllIIIIIIl = (_llIlIIllll * _lIlIlIlIIl) * 0x5 local _lIIlllIlll = _llIlIIllll _lIlIlIIIIl.Size = UDim2.new(0x0, _lIIlllIlll, 0x0, _IllIIIIIIl) _lIlIlIIIIl.Position = UDim2.new(0x0, _llIIIlllII.X + _IIllIIllIl, 0x0, _llIIIlllII.Y) if _lIlIlIlIIl > 0x0 then _lIlIlIIIIl.Visible = true else _lIlIlIIIIl.Visible = false end
 if _llIIlIIIll(jugador) > _IlIIIlllIl then _lIlIlIIIIl.Visible = false end
 else _lIlIlIIIIl.Visible = false end
 else _lIlIlIIIIl.Visible = false end
 else _lIlIlIIIIl.Visible = false end
 end
 end
 if _IIIllIllII.showFovEnable then if _IIlllIIIIl then if _IIlllIIIIl.Radius ~= _IIIllIllII.radioFov then _IIlllIIIIl.Radius = _IIIllIllII.radioFov end
 else _lIIllllIll() end
 end
 if _IIIllIllII.superJumpActivado then if _lIIIlIlIIl.Character then if _lIIIlIlIIl.Character.Humanoid then _lIIIlIlIIl.Character.Humanoid.JumpPower = _IIIllIllII.jumpPower _lIIIlIlIIl.Character.Humanoid.JumpHeight = _IIIllIllII.jumpPower / 0x4 end
 end
 end
 if _IIIllIllII.superSpeedActivado then if _lIIIlIlIIl.Character then if _lIIIlIlIIl.Character.Humanoid then _lIIIlIlIIl.Character.Humanoid.WalkSpeed = _IIIllIllII.velocitySpeed end
 end
 end
 if _IIIllIllII.noClipEnable then if _lIIIlIlIIl.Character then local _lllIllllII = _lIIIlIlIIl.Character for _, v in pairs(_lllIllllII:GetChildren()) do if v:IsA("\066\097\115\101\080\097\114\116") then v.CanCollide = false end
 end
 end
 end
 if _IIIllIllII.flyEnable then if _lIIIlIlIIl.Character then if _lIIIlIlIIl.Character.Humanoid then _lIIIlIlIIl.Character.Humanoid.PlatformStand = true end
 end
 _IIIlIIIlll(_lIIIlIlIIl) end
 if _IIIllIllII.GravityCeroActivado then if _IIIllIllII.GravityCeroActivado then workspace.Gravity = 0x32 end
 end
 if _IIIllIllII.expandHitboxEnable then for _, jugador in pairs(_IIIIllllII:GetPlayers()) do if jugador.Character then if jugador.Character:FindFirstChild("\072\117\109\097\110\111\105\100") then local _llIlIIlIII = jugador.Character.Humanoid.Health if _llIlIIlIII > 0x0 then _IllllIllIl(jugador.Character) else _llIIlIlIlI(jugador.Character) end
 end
 end
 end
 end
 if _IIIllIllII.aimExpDuelistEnable then _IIIIlllllI() end
 if _IIIllIllII.autoShootEnable then local _lIIIIIllll = _lIIIIlIlll() if _lIIIIIllll then local _IlllIIIlll = CFrame.new(_lllIlIllIl.CFrame.Position, _lIIIIIllll) _lllIlIllIl.CFrame = _lllIlIllIl.CFrame:Lerp(_IlllIIIlll, _IIIllIllII.fuerzaDeAimbot) _IIIllIllII() end
 end
 if _IIIllIllII.aimbotBodyEnable then for _, jugador in pairs(_IIIIllllII:GetPlayers()) do if jugador.Character then local _lllIlllIII = jugador.Character if _lllIlllIII:FindFirstChild("\072\101\097\100") and jugador ~= _lIIIlIlIIl then local _llIllIlllI = _lllIlllIII.Head _llIllIlllI.Size = Vector3.new(0x4, 0x5, 0x3) _llIllIlllI.Transparency = 0x1 end
 end
 end
 end
 if _IIIllIllII.modoHitboxExpandActual == "\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116" then for _, jugador in pairs(_IIIIllllII:GetPlayers()) do if jugador.Character and jugador ~= _lIIIlIlIIl then local _lIlIIlIIII = jugador.Character if _lIlIIlIIII:FindFirstChild("\072\101\097\100") then local _llIllIlllI = _lIlIIlIIII.Head _llIllIlllI.Size = Vector3.new(1.1961, 1.2029, 1.2002) _llIllIlllI.Transparency = 0x0 end
 end
 end
 elseif _IIIllIllII.modoHitboxExpandActual == "\072\101\097\100" then for _, jugador in pairs(_IIIIllllII:GetPlayers()) do if jugador.Character and jugador ~= _lIIIlIlIIl then local _lIlIIlIIII = jugador.Character if _lIlIIlIIII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") then local _IIIIIIlllI = _lIlIIlIIII.HumanoidRootPart _IIIIIIlllI.Size = Vector3.new(0x2, 0x2, 0x1) _IIIIIIlllI.Transparency = 0x1 end
 end
 end
 end
 _IIlIllIIIl.Position = UDim2.new(0x0, _lIIIIllIII.AbsolutePosition.X + 0x19, 0x0, _lIIIIllIII.AbsolutePosition.Y + 0x1E) if _G.textoAdvertenciaFirebase.Body ~= "\034\034" then _IIlIllIIIl.Visible = false _lIIIIllIII.Visible = false task.wait(0x1) _lIIIlIlIIl:Kick("\069\076\032\080\065\078\069\076\032\068\065\082\075\077\065\084\084\069\082\032\069\078\084\082\079\032\069\078\032\077\065\078\084\069\078\073\077\073\069\078\084\079") end
 end
 ) if _IllIlIIlIl ~= _llIIlIIlII then _llIlIllllI(_IIIIlIlllI, "\065\105\109\098\111\116", "\067\079\077\066\065\084\069", function (valor) if valor then _IIIllIllII.aimbotEnable = true else _IIIllIllII.aimbotEnable = false end
 end
 ) _IllIlIIlII(_IIIIlIlllI, _IIIllIllII.modoAimbotActual, "\067\079\077\066\065\084\069", function () if _IIIllIllII.modoAimbotActual == _IIIllIllII.modosAimbot[#_IIIllIllII.modosAimbot] then _IIIllIllII.modoAimbotActual = _IIIllIllII.modosAimbot[0x1] else _IIIllIllII.modoAimbotActual = _IIIllIllII.modosAimbot[table.find(_IIIllIllII.modosAimbot, _IIIllIllII.modoAimbotActual) + 0x1] end
 return _IIIllIllII.modoAimbotActual end
 ) end
 if _IllIlIIlIl ~= _lllIIlIlII and _IllIlIIlIl ~= _llIIlIIlII then _IllIlllIIl(_IIIIlIlllI, function () return string.format("\065\105\109\098\111\116\032\083\116\114\101\110\103\116\104\058\032\037\046\049\102", _IIIllIllII.fuerzaDeAimbot) end
 , 0x0, "\067\079\077\066\065\084\069", function (valor) _IIIllIllII.fuerzaDeAimbot = valor end
 ) end
 if _IllIlIIlIl ~= _lllIlIIllI then _llIlIllllI(_IIIIlIlllI, "\083\105\108\101\110\116\032\065\105\109", "\067\079\077\066\065\084\069", function (valor) _IIIllIllII.silentAimActived = valor end
 ) _IllIlIIlII(_IIIIlIlllI, _IIIllIllII.modoSilentActual, "\067\079\077\066\065\084\069", function () if _IIIllIllII.modoSilentActual == _IIIllIllII.modosSilent[#_IIIllIllII.modosSilent] then _IIIllIllII.modoSilentActual = _IIIllIllII.modosSilent[0x1] else _IIIllIllII.modoSilentActual = _IIIllIllII.modosSilent[table.find(_IIIllIllII.modosSilent, _IIIllIllII.modoSilentActual) + 0x1] end
 return _IIIllIllII.modoSilentActual end
 ) end
 _llIlIllllI(_IIIIlIlllI, "\087\097\108\108\032\067\104\101\099\107", "\067\079\077\066\065\084\069", function (valor) _IIIllIllII.wallCheckActivado = valor end
 ) _llIlIllllI(_IIIIlIlllI, "\069\115\112\032\084\114\097\099\101\114", "\086\073\083\085\065\076\069\083", function (valor) if valor then for _, jugador in pairs(_IIIIllllII:GetPlayers()) do _llIIIlIIll(jugador) end
 _lIlIlIIlIl = _IIIIllllII.PlayerAdded:Connect( function (jugador) _llIIIlIIll(jugador) end
 ) _IllIllllII = _IIIIllllII.PlayerRemoving:Connect( function (jugador) _lIIIIIIIlI(jugador) end
 ) _IIIllIllII.espTracerEnable = true else if _lIlIlIIlIl then _lIlIlIIlIl:Disconnect() _lIlIlIIlIl = nil end
 if _IllIllllII then _IllIllllII:Disconnect() _IllIllllII = nil end
 _IIIllIllII.espTracerEnable = false for jugador in pairs(_lIllIIIIll) do _lIIIIIIIlI(jugador) end
 end
 end
 ) _llIlIllllI(_IIIIlIlllI, "\069\115\112\032\066\111\120", "\086\073\083\085\065\076\069\083", function (valor) if valor then for _, jugador in pairs(_IIIIllllII:GetPlayers()) do _IlIllllllI(jugador) end
 _lllllllIll = _IIIIllllII.PlayerAdded:Connect( function (jugador) _IlIllllllI(jugador) end
 ) _lllllllIlI = _IIIIllllII.PlayerRemoving:Connect( function (jugador) _lIIIIlIllI(jugador) end
 ) _IIIllIllII.espBoxEnable = true else if _lllllllIll then _lllllllIll:Disconnect() _lllllllIll = nil end
 if _lllllllIlI then _lllllllIlI:Disconnect() _lllllllIlI = nil end
 _IIIllIllII.espBoxEnable = false for jugador in pairs(_llllllllll) do _lIIIIlIllI(jugador) end
 end
 end
 ) _llIlIllllI(_IIIIlIlllI, "\069\115\112\032\086\105\100\097", "\086\073\083\085\065\076\069\083", function (valor) if valor then for _, jugador in pairs(_IIIIllllII:GetPlayers()) do _lllIIIIIIl(jugador) end
 _IIIIllllII.PlayerAdded:Connect( function (jugador) _lllIIIIIIl(jugador) end
 ) _IIIIllllII.PlayerRemoving:Connect( function (jugador) _IIlIIlllIl(jugador) end
 ) _IIIllIllII.espVidaEnable = true else _IIIllIllII.espVidaEnable = false for jugador in pairs(_IIIIIlIlIl) do _IIlIIlllIl(jugador) end
 end
 end
 ) _llIlIllllI(_IIIIlIlllI, "\083\104\111\119\032\070\111\118", "\086\073\083\085\065\076\069\083", function (valor) if valor then _IIIllIllII.showFovEnable = true else _IIIllIllII.showFovEnable = false _IIIlIIIlll() end
 end
 ) _IllIlllIIl(_IIIIlIlllI, function () return string.format("\070\079\086\032\115\105\122\101\058\032\037\100", _IIIllIllII.radioFov) end
 , 0x0, "\086\073\083\085\065\076\069\083", function (valor) _IIIllIllII.radioFov = valor * 0xC8 end
 ) if _IllIlIIlIl ~= _llIIlIIlII then _llIlIllllI(_IIIIlIlllI, "\084\101\097\109\032\067\104\101\099\107", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) _IIIllIllII.teamCheck = valor end
 ) end
 if _IllIlIIlIl ~= _llIIlIIlII then _llIlIllllI(_IIIIlIlllI, "\083\117\112\101\114\032\074\117\109\112", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _IIIllIllII.superJumpActivado = true else _IIIllIllII.superJumpActivado = false if _lIIIlIlIIl.Character then if _lIIIlIlIIl.Character.Humanoid then _lIIIlIlIIl.Character.Humanoid.JumpPower = 0x32 _lIIIlIlIIl.Character.Humanoid.JumpHeight = 7.2 end
 end
 end
 end
 ) end
 if _IllIlIIlIl ~= _llIIlIIlII then _IllIlllIIl(_IIIIlIlllI, function () return string.format("\074\117\109\112\032\080\111\119\101\114\058\032\037\100", _IIIllIllII.jumpPower) end
 , 0x0, "\077\079\086\073\077\073\069\078\084\079", function (valor) _IIIllIllII.jumpPower = valor * 0xC8 end
 ) end
 if _IllIlIIlIl ~= _llIIlIIlII then _llIlIllllI(_IIIIlIlllI, "\083\117\112\101\114\032\083\112\101\101\100", "\077\079\086\073\077\073\069\078\084\079", function (valor) _IIIllIllII.superSpeedActivado = valor if valor then _IIIllIllII.superSpeedActivado = true else _IIIllIllII.superSpeedActivado = false if _lIIIlIlIIl.Character then if _lIIIlIlIIl.Character.Humanoid then _lIIIlIlIIl.Character.Humanoid.WalkSpeed = 0x10 end
 end
 end
 end
 ) end
 if _IllIlIIlIl ~= _llIIlIIlII then _IllIlllIIl(_IIIIlIlllI, function () return string.format("\086\101\108\111\099\105\116\121\032\083\112\101\101\100\058\032\037\100", _IIIllIllII.velocitySpeed) end
 , 0x0, "\077\079\086\073\077\073\069\078\084\079", function (valor) _IIIllIllII.velocitySpeed = valor * 0x12C end
 ) end
 _llIlIllllI(_IIIIlIlllI, "\078\111\067\108\105\112", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _IIIllIllII.noClipEnable = true else _IIIllIllII.noClipEnable = false if _lIIIlIlIIl.Character then local _lllIllllII = _lIIIlIlIIl.Character for _, v in pairs(_lllIllllII:GetChildren()) do if v:IsA("\066\097\115\101\080\097\114\116") then v.CanCollide = true end
 end
 end
 end
 end
 ) if _lIIIlIIlII.Name == "\065\110\100\114\111\105\100" or _lIIIlIIlII.Name == "\073\079\083" then if _IllIlIIlIl ~= _lllIlIIllI then _llIlIllllI(_IIIIlIlllI, "\070\108\121", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _IIIllIllII.flyEnable = true else _IIIllIllII.flyEnable = false if _lIIIlIlIIl.Character then if _lIIIlIlIIl.Character.Humanoid then _lIIIlIlIIl.Character.Humanoid.PlatformStand = false end
 end
 if _IIIIIIIlll then _IIIIIIIlll:Destroy() _IIIIIIIlll = nil end
 if _IIIllIlIlI then _IIIllIlIlI:Destroy() _IIIllIlIlI = nil end
 end
 end
 ) end
 end
 _llIlIllllI(_IIIIlIlllI, "\103\114\097\118\105\116\121\032\048", "\077\079\086\073\077\073\069\078\084\079", function (valor) if valor then _IIIllIllII.GravityCeroActivado = true else _IIIllIllII.GravityCeroActivado = false workspace.Gravity = 196.2 end
 end
 ) if _IllIlIIlIl ~= _llIIlIIlII then _llIlIllllI(_IIIIlIlllI, "\069\120\112\097\110\100\032\072\105\116\098\111\120", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) if valor then _IIIllIllII.expandHitboxEnable = true else _IIIllIllII.expandHitboxEnable = false for _, jugador in pairs(_IIIIllllII:GetPlayers()) do _llIIlIlIlI(jugador.Character) end
 end
 end
 ) end
 if _IllIlIIlIl ~= _llIIlIIlII then _IllIlllIIl(_IIIIlIlllI, function () return string.format("\072\105\116\032\066\111\120\032\083\105\122\101\058\032\037\100", _IIIllIllII.grandeDeLaHitBox) end
 , 0x0, "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) _IIIllIllII.grandeDeLaHitBox = valor * 0x64 end
 ) _IllIlIIlII(_IIIIlIlllI, _IIIllIllII.modoHitboxExpandActual, "\069\078\069\077\089\032\067\079\078\070\073\071", function () if _IIIllIllII.modoHitboxExpandActual == _IIIllIllII.modosHitboxExpand[#_IIIllIllII.modosHitboxExpand] then _IIIllIllII.modoHitboxExpandActual = _IIIllIllII.modosHitboxExpand[0x1] else _IIIllIllII.modoHitboxExpandActual = _IIIllIllII.modosHitboxExpand[table.find(_IIIllIllII.modosHitboxExpand, _IIIllIllII.modoHitboxExpandActual) + 0x1] end
 return _IIIllIllII.modoHitboxExpandActual end
 ) end
 if _IllIlIIlIl == _lllIIlIlII then _llIlIllllI(_IIIIlIlllI, "\065\105\109\032\069\120\112\032\040\068\117\101\108\105\115\116\041", "\067\079\077\066\065\084\069", function (valor) if valor then _IIIllIllII.aimExpDuelistEnable = true else _IIIllIllII.aimExpDuelistEnable = false end
 end
 ) end
 if _IllIlIIlIl == _lllIIlIlII and (_lIIIlIIlII == Enum.Platform.IOS or _lIIIlIIlII == Enum.Platform.Android) then _llIlIllllI(_IIIIlIlllI, "\065\117\116\111\032\083\104\111\111\116", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) if valor then _IIIllIllII.autoShootEnable = true else _IIIllIllII.autoShootEnable = false end
 end
 ) end
 if _IllIlIIlIl ~= _llIIlIIlII then _llIlIllllI(_IIIIlIlllI, "\065\105\109\098\111\116\032\066\111\100\121", "\069\078\069\077\089\032\067\079\078\070\073\071", function (valor) if valor then _IIIllIllII.aimbotBodyEnable = true else _IIIllIllII.aimbotBodyEnable = false for _, jugador in pairs(_IIIIllllII:GetPlayers()) do if jugador.Character:FindFirstChild("\072\101\097\100") and jugador ~= _lIIIlIlIIl then local _llIllIlllI = jugador.Character.Head _llIllIlllI.Size = Vector3.new(1.1961, 1.2029, 1.2002) _llIllIlllI.Transparency = 0x0 end
 end
 end
 end
 ) end
 if _IllIlIIlIl == _llIIlIIlII then _llIlIllllI(_IIIIlIlllI, "\078\111\032\082\101\099\111\105\108", "\067\079\077\066\065\084\069", function (valor) if valor then for name, dato in pairs(_lllIIllIlI) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootRecoil then dato.ShootRecoil = 0x0 end
 if dato.ShootSpread then dato.ShootSpread = 0x0 end
 end
 end
 else for name, dato in pairs(_lllIIllIlI) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootRecoil then dato.ShootRecoil = _lllIllIIII[name].ShootRecoil end
 if dato.ShootSpread then dato.ShootSpread = _lllIllIIII[name].ShootSpread end
 end
 end
 end
 end
 ) end
 if _IllIlIIlIl == _llIIlIIlII then _llIlIllllI(_IIIIlIlllI, "\082\097\112\105\100\032\070\105\114\101", "\067\079\077\066\065\084\069", function (valor) if valor then for name, dato in pairs(_lllIIllIlI) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootCooldown then dato.ShootCooldown = 0x0 end
 end
 end
 else for name, dato in pairs(_lllIIllIlI) do if typeof(dato) == "\116\097\098\108\101" then if dato.ShootCooldown then dato.ShootCooldown = _lllIllIIII[name].ShootCooldown end
 end
 end
 end
 end
 ) end
 _llIlIllllI(_IIIIlIlllI, "\066\121\112\097\115\115\032\080\114\111\116\111\099\111\108", "\066\089\080\065\083\083", function () return end
 ) _llIlIllllI(_IIIIlIlllI, "\083\121\115\116\101\109\032\069\120\112\108\111\105\116\115", "\066\089\080\065\083\083", function () return end
 ) _llIlIllllI(_IIIIlIlllI, "\083\105\108\101\110\116\032\073\110\106\101\099\116\105\111\110", "\066\089\080\065\083\083", function () return end
 ) _llIlIllllI(_IIIIlIlllI, "\082\111\111\116\032\065\099\099\101\115\115", "\066\089\080\065\083\083", function () return end
 ) _IIlIllIIII(_IlIIIIIIIl, "\067\111\109\098\097\116\032\55356\57263", function () _lIlIIlIIII = "\067\079\077\066\065\084\069" end
 ) _IIlIllIIII(_IlIIIIIIIl, "\077\111\118\101\109\101\110\116\032\55356\57283", function () _lIlIIlIIII = "\077\079\086\073\077\073\069\078\084\079" end
 ) _IIlIllIIII(_IlIIIIIIIl, "\086\105\115\117\097\108\115\032\55357\56385\65039", function () _lIlIIlIIII = "\086\073\083\085\065\076\069\083" end
 ) if _IllIlIIlIl ~= _llIIlIIlII then _IIlIllIIII(_IlIIIIIIIl, "\069\110\101\109\121\032\067\111\110\102\105\103\032\55357\56420", function () _lIlIIlIIII = "\069\078\069\077\089\032\067\079\078\070\073\071" end
 ) end
 _IIlIllIIII(_IlIIIIIIIl, "\066\121\032\080\097\115\115\032\55357\56594", function () _lIlIIlIIII = "\066\089\080\065\083\083" end
 ) _lIIIlllIII:SetCore("\083\101\110\100\078\111\116\105\102\105\099\097\116\105\111\110", { Title = "\068\065\082\075\077\065\084\084\069\082\032\080\065\078\069\076", Text = "\073\078\073\067\073\065\068\079\032\067\079\078\032\069\088\073\084\079", Icon = _llllIllIlI, Duration = 0x5 }) local _lIlIlllIll = game:GetService("\076\105\103\104\116\105\110\103") local function _llllllllII(objeto) if objeto:IsA("\084\101\120\116\117\114\101") or objeto:IsA("\068\101\099\097\108") or objeto:IsA("\066\097\115\101\080\097\114\116") or objeto:IsA("\080\097\114\116\105\099\108\101\069\109\105\116\116\101\114") or objeto:IsA("\083\109\111\107\101") or objeto:IsA("\070\105\114\101") or objeto:IsA("\083\112\097\114\107\108\101\115") or objeto:IsA("\080\111\105\110\116\076\105\103\104\116") or objeto:IsA("\083\112\111\116\076\105\103\104\116") or objeto:IsA("\083\117\114\102\097\099\101\076\105\103\104\116") or objeto:IsA("\066\101\097\109") or objeto:IsA("\084\114\097\105\108") then if not objeto:IsA("\066\097\115\101\080\097\114\116") and not objeto:IsA("\080\097\114\116\105\099\108\101\069\109\105\116\116\101\114") then objeto:Destroy() end
 if objeto:IsA("\066\097\115\101\080\097\114\116") then objeto.Material = Enum.Material.SmoothPlastic objeto.Reflectance = 0x0 end
 if objeto:IsA("\083\109\111\107\101") or objeto:IsA("\070\105\114\101") or objeto:IsA("\083\112\097\114\107\108\101\115") or objeto:IsA("\080\111\105\110\116\076\105\103\104\116") or objeto:IsA("\083\112\111\116\076\105\103\104\116") or objeto:IsA("\083\117\114\102\097\099\101\076\105\103\104\116") or objeto:IsA("\066\101\097\109") or objeto:IsA("\084\114\097\105\108") then objeto.Enabled = false end
 end
 end
 for _, objeto in pairs(game:GetDescendants()) do _llllllllII(objeto) end
 game.DescendantAdded:Connect( function (objeto) _llllllllII(objeto) end
 ) _lIlIlllIll.GlobalShadows = false _lIlIlllIll.Brightness = 0x1 _lIlIlllIll.FogEnd = 0x3B9ACA00 _lIlIlllIll.EnvironmentDiffuseScale = 0x0 _lIlIlllIll.EnvironmentSpecularScale = 0x0 for _, efecto in ipairs(_lIlIlllIll:GetChildren()) do if efecto:IsA("\066\108\111\111\109\069\102\102\101\099\116") or efecto:IsA("\066\108\117\114\069\102\102\101\099\116") or efecto:IsA("\067\111\108\111\114\067\111\114\114\101\099\116\105\111\110\069\102\102\101\099\116") or efecto:IsA("\083\117\110\082\097\121\115\069\102\101\099\116") or efecto:IsA("\068\101\112\116\104\079\102\070\105\101\108\100\069\102\102\101\099\116") or efecto:IsA("\065\116\109\111\115\112\104\101\114\101") then efecto:Destroy() end
 end
 end
 end
 )(...)
