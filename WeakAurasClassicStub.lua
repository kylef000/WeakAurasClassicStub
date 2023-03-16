if not WeakAuras.IsLibsOK() then return end
if WeakAuras.IsClassic ~= nil then return end

C_Timer.After(1, function()
    WeakAuras.prettyPrint("WeakAurasClassicStub loaded.")
  end)

local WeakAuras = WeakAuras

-- IsClassic was removed in WA 5.4.0 and this caused some WeakAuras to break
function WeakAuras.IsClassic()
    return WeakAuras.IsClassicEraOrWrath()
end