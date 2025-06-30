local function main()
    term.clear()
    print("[ MeteorOS CLI Shell ]\n")
    local input = read()
    
    if input == "update" then
        shell.run("wget", "https://raw.githubusercontent.com/Mag1cpunch/MeteorOS/refs/heads/main/setup.lua", "/setup.lua")
        shell.run("/setup.lua")
    elseif input == "reboot" then
        print("Rebooting...")
        os.reboot()
    elseif input == "shutdown" then
        print("Shutting down...")
        os.shutdown()
    elseif input == "help" then
        print("Available commands:")
        print(" - update: Update the system")
        print(" - reboot: Reboot the system")
        print(" - shutdown: Shut down the system")
    end
end

main()