local component = require("component")
local computer = require("computer")

local function get_system_info()
    return {
        os = "Krul OS ♱",
        host = "NachtJäger",
        uptime = math.floor(computer.uptime() / 3600) .. " hours of suffering",
        memory = computer.freeMemory() .. "/" .. computer.totalMemory() .. " KB",
    }
end

local info = get_system_info()
print("┌──────────────────────┐")
print("│      \27[35mKRUL OS\27[37m       │")
print("├──────────────────────┤")
for k, v in pairs(info) do
    print("│ " .. k .. ": " .. v .. string.rep(" ", 15 - #tostring(v)) .. "│")
end
print("└──────────────────────┘")
