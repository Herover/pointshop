local IncludeSVLuaFile = function() end
local IncludeCSLuaFile = include
local IncludeSHLuaFile = include
if SERVER then
	IncludeSVLuaFile = include
	IncludeCSLuaFile = AddCSLuaFile
	IncludeSHLuaFile = function(...) AddCSLuaFile(...) include(...) end
end

IncludeSHLuaFile("sh_init.lua")
IncludeSHLuaFile("sh_confighandler.lua")
IncludeSHLuaFile("sh_player_extension.lua")

IncludeSVLuaFile("sv_init.lua")
IncludeSVLuaFile("sv_player_extension.lua")

IncludeCSLuaFile("cl_init.lua")
IncludeCSLuaFile("cl_player_extension.lua")

local function doFuncOnDirectory(dir, func)
    local files, folders = file.Find(dir .. "*", "LUA")
    for _, file_name in pairs(files) do func(dir .. file_name) end                
    for _, folder_name in pairs(folders) do add_files(dir .. folder_name .. "/", func) end
end

doFuncOnDirectory("pointshop/items/", IncludeSHLuaFile)
doFuncOnDirectroy("pointshop/vgui/", IncludeCSLuaFile)