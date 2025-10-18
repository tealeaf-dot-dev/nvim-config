-- core/autocmds.lua

local M = {}

local function augroup(name)
  return vim.api.nvim_create_augroup("custom_" .. name, { clear = true })
end

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

    -- Highlight on yank
    vim.api.nvim_create_autocmd("TextYankPost", {
      group = augroup("highlight_yank"),
      callback = function()
        (vim.hl or vim.highlight).on_yank()
      end,
    })

end

return M
