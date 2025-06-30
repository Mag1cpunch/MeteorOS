if fs.exists("/MeteorOS") then
    fs.delete("/MeteorOS")
end

if fs.exists("/startup.lua") then
    fs.delete("/startup.lua")
end

local manifest = 
{
    {"https://raw.githubusercontent.com/Mag1cpunch/MeteorOS/refs/heads/main/MeteorOS/boot/startup.lua?token=GHSAT0AAAAAADFWRQLUJGRDGBGFD3ZUBE542DCM63A", "/startup.lua"}
}

for _,v in ipairs(manifest) do
    shell.run("wget", v[1], v[2])
end

for i = 5, 1, -1 do
    print("Rebooting in " .. i .. " seconds")
    os.sleep(1)
end
os.reboot()