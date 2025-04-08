-- core/luaform.lua

local M = {}

local function quote(val)
    if val:match("^%d+$") then
        return val -- leave pure numbers unquoted
    else
        return '"' .. val .. '"'
    end
end

function M.luaform(line)
    local opt = "vim.opt"

    -- Match: set option=value
    local key_eq, val_eq = line:match("^set%s+([%w_]+)=([%w%-%.%*%+]+)$")
    if key_eq and val_eq then
        return string.format("%s.%s = %s", opt, key_eq, quote(val_eq))
    end

    -- Match: set option+=value
    local key_app, val_app = line:match("^set%s+([%w_]+)%+=([%w%-%.%*%+]+)$")
    if key_app and val_app then
        return string.format("%s.%s:append(%s)", opt, key_app, quote(val_app))
    end

    -- Match: set option-=value
    local key_rem, val_rem = line:match("^set%s+([%w_]+)%-=([%w%-%.%*%+]+)$")
    if key_rem and val_rem then
        return string.format("%s.%s:remove(%s)", opt, key_rem, quote(val_rem))
    end

    -- Match: set option (boolean true)
    local key_flag = line:match("^set%s+([%w_]+)$")
    if key_flag then
        return string.format("%s.%s = true", opt, key_flag)
    end

    return "-- Could not Luaform: " .. line
end

return M
