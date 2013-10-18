--[[
 * ========================================================================
 * Pointshop: sh_config.default.lua v1.0.0
 * This is the default configuration, follow the install instructions.
 * ========================================================================
 * Copyright (c) 2013 Adam Burton, Matt Stevens
 *
 * See the file LICENSE for copying permission.
 * ========================================================================
 ]]

-- probably gonna change.

local Config = {}

Config.CommunityName	= "My Community"
Config.CurrencyName		= "points"

Config.DataProvider		= "pdata"

Config.Permissions =
{
	["*"] 			= "*",
    ["ADMIN_MENU"] 	= "admin,superadmin",
}

Config.ShopKey = "F3"
Config.ShopConsoleCommand = "ps_shop"
Config.ShopChatCommand = "!shop"

return Config