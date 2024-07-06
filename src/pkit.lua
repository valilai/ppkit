--[[
author: valentin.lairich@gmail.com
v: 0.1 alpha
date: 06.07.24
--]] --
local function main(args)
    for key, value in pairs(args) do
        local last_key = key
        local last_value = value

        print(last_value, last_key)
    end
end
-- main(arg)
print(#arg)

-- detect operating system
local function detectOS()
    local dir_separator = package.config:sub(1, 1)
    if dir_separator == '\\' then
        return "windows"
    else
        return "unix"
    end

end

local os = detectOS()
local Parser = require("pkit.modules.parser")
print(os)
--
-- local arg_pars = Parser.new(os) -- create os specific cmd parser
-- local action = arg_pars(arg) -- get action to performe
