for _, func in pairs(getgc(true)) do
    if typeof(func) == "function" then
      for i = 1, 30 do
        local ok, v = pcall(debug.getupvalue, func, i)
        if ok and typeof(v) == "table" then
          if typeof(rawget(v, "teams")) == "table" then
            _G.teamDataDuelist = v
            break
          end
        end
      end
      if teamDataDuelist then
        break
      end
    end
  end
