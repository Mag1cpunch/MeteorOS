if fs.exists("/setup.lua") then
    fs.delete("/setup.lua")
end

shell.run("./MeteorOS/core/shell.lua")