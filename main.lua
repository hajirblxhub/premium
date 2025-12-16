-- Master Loader by [PAHAJI HUB] - Loads 3 Scripts Parallel (Bypass Cache Edition)
local urls = {
    "https://raw.githubusercontent.com/hajirblxhub/premium/refs/heads/main/pahaji/utama",  -- Ganti raw URL loader1 lu
    "https://raw.githubusercontent.com/hajirblxhub/premium/refs/heads/main/pahaji/speed2.lua",  -- loader2
    "https://raw.githubusercontent.com/hajirblxhub/premium/refs/heads/main/pahaji/speed3.lua"   -- loader3
}

for i, url in ipairs(urls) do
    spawn(function()
        local success, err = pcall(function()
            loadstring(game:HttpGet(url, true))()
        end)
        if not success then
            warn("Loader " .. i .. " error: " .. tostring(err))
        end
    end)
end

print("All 3 Loaders Executed w/ Bypass!")
