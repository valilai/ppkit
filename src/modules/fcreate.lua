-- modules/fcreate.lua
--[[
author: valentin.lairich@gmail.com
v: 0.1 alpha
date: 06.07.24
--]] --
local M = {}

local function file_exists(fdir)
    -- Try to open file read-only
    local file = io.open(fdir, "r")
    if file then
        file:close()
        return true
    else
        return false
    end
end

function M.new(os)
    local instance = {os = os}

    function instance:fcreate(ftype, name, project_tree)
        local fdir = "."
        -- Check file exists
        if file_exists(fdir) then
            return false, "-1" .. "Info: File already exists: " .. fdir
        end

        -- Create file
        local file, err = io.open(fdir, "w")
        if not file then
            return false, "-2" .. "Debug: Could not create file: " .. err
        end

        -- Write the contetn to the file
        local success, err = file:write()
    end

    return instance
end

return M
