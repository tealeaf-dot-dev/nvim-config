-- core/autocmds.lua

local M = {}

function M.setup()

    -- Auto-reload Lua config modules when saving them
    vim.api.nvim_create_autocmd("BufWritePost", {
        callback = function(args)
            local file = args.file
            local module = file:match( "*/nvim/lua/**/*.lua")
            if module then
                module = module:gsub("/", ".") -- path to Lua module
                package.loaded[module] = nil   -- unload old version
                local ok, mod = pcall(require, module)
                if ok and type(mod.setup) == "function" then
                    mod.setup()
                    vim.cmd("redraw!")
                    vim.notify("Reloaded full config", vim.log.levels.INFO, {
                        title = "Luaform",
                        timeout = 1500,
                    })
                end
            end
        end,
    })

end

return M
