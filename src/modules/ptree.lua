local M = {}
local tablex = require("pl.tablex")
-- expected data type schema of a ptree table
local ptree_schema = {
    ['pName'] = 'string',
    ['rootDir'] = 'string',
    ['modules'] = 'table',
    ['git'] = 'boolean',
    ['lang'] = 'string',
    ['conan'] = 'boolean',
    ['extLibs'] = 'table',
    ['header'] = 'string',
    ['pubHeader'] = 'table',
    ['tests'] = 'table',
    ['docs'] = 'boolean',
    ['examples'] = 'table',
    ['tools'] = 'boolean',
    ['kitLvl'] = 'number',
    ['customKitDir'] = 'string',
    ['data'] = 'boolean'
}

-- expected keys of a ptree table
local ptree_keys = {
    "pName", "rootDir", "modules", "git", "lang", "conan", "extLibs", "header",
    "pubHeader", "tests", "docs", "examples", "kitLvl", "customKitDir", "tools",
    "data"
}

function M.create_default_c()
    return {
        ['pname'] = nil,
        ['rootdir'] = nil,
        ['modules'] = nil,
        ['git'] = true,
        ['lang'] = 'c',
        ['conan'] = false,
        ['extLibs'] = nil,
        ['header'] = 'private',
        ['pubHeader'] = nil,
        ['tests'] = nil,
        ['docs'] = false,
        ['examples'] = nil,
        ['tools'] = false,
        ['kitLvl'] = -1,
        ['customKitDir'] = nil,
        ['data'] = false
    }
end

function M.create_default_cpp()
    return {
        ['pname'] = nil,
        ['rootdir'] = nil,
        ['modules'] = nil,
        ['git'] = true,
        ['lang'] = 'cpp',
        ['conan'] = false,
        ['extLibs'] = nil,
        ['header'] = 'private',
        ['pubHeader'] = nil,
        ['tests'] = nil,
        ['docs'] = false,
        ['examples'] = nil,
        ['tools'] = false,
        ['kitLvl'] = -1,
        ['customKitDir'] = nil,
        ['data'] = false
    }
end

function M.set_ptree_keys(tbl, keys)
    -- Edit all key entries in tbl
    for key, value in pairs(keys) do
        -- Check if key is a valid ptree key
        if not tablex.find(ptree_keys, key) then
            return false, "-2" .. "Debug: Could not edit ptree. Key: " .. key ..
                       "not a valid ptree key"
        end
        -- Check if value of key has valid dtype
        local val_dtype = type(value)
        if val_dtype ~= ptree_schema[key] then
            return false,
                   "-2" .. "Debug: Could not edit ptree. Value: " .. value ..
                       "has wrong dtype: " .. val_dtype
        end
        tbl[key] = value
    end

    return true
end

return M
