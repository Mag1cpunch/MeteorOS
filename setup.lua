if fs.exists("/MeteorOS") then
    fs.delete("/MeteorOS")
end

if fs.exists("/startup.lua") then
    fs.delete("/startup.lua")
end

local manifest = 
{
    {"https://raw.githubusercontent.com/Mag1cpunch/MeteorOS/refs/heads/main/MeteorOS/boot/startup.lua?token=GHSAT0AAAAAADFWRQLVCRRKBO44SNELHE5S2DCN4MA", "/startup.lua"}
}

for _,v in ipairs(manifest) do
    local status = shell.run("wget", v[1], v[2])
    if not status then
        print("Failed to download " .. v[2])
        return
    end
end

for i = 5, 1, -1 do
    print("Rebooting in " .. i .. " seconds")
    os.sleep(1)
end
os.reboot()