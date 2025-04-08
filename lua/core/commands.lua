local opt = vim.opt
local g = vim.g
local M = {}

function M.setup()

    -- A cheatsheet for configuring neovim with Lua
    vim.api.nvim_create_user_command("Cheatsheet", function()
        require("core.functions.cheatsheet").open()
    end, {})

    -- Convert a vimL configuration line into Lua
    -- 
    -- Usage:
    -- :Luaform set tabstop=4
    vim.api.nvim_create_user_command("Luaform", function(opts)
        local line = opts.args
        local out = require("core.functions.luaform").luaform(line)
        print(out)
    end, { nargs = 1 })

end

return M
