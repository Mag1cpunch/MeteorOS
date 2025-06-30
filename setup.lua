if disk.exists("/MeteorOS") then
    disk.delete("/MeteorOS")
end

if disk.exists("/startup.lua") then
    disk.delete("/startup.lua")
end

local manifest = 
{
    {"https://raw.githubusercontent.com/Mag1cpunch/MeteorOS/refs/heads/main/MeteorOS/boot/startup.lua?token=GHSAT0AAAAAADFWRQLUJGRDGBGFD3ZUBE542DCM63A", "/startup.lua"}
}

for _,v in ipairs(manifest) do
    shell.execute("wget", v[1], v[2])
end

for i = 5,5 do
    print("Rebooting in "..i.." seconds")
    sleep(1)
    i = i - 1

    if i <= 0 then
        os.reboot()
    end
end