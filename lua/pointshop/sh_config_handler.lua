
-- okay this is the most 'beautiful' thing I've ever written.
-- Matt

local function LoadConfigFile(fileName)
    local CONFIG = { _G = _G } -- just incase they want it.

    local func = CompileFile(fileName)
    setfenv(func, CONFIG)
    func()

    return CONFIG
end

PS.Config = LoadConfigFile("sh_config.lua")
PS.Config.__index = LoadConfigFile("sh_config.default.lua")