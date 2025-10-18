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

    -- Auto create dir when saving a file, in case some intermediate directory does not exist
    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
        group = augroup("auto_create_dir"),
        callback = function(event)
            if event.match:match("^%w%w+:[\\/][\\/]") then
                return
            end
            local file = vim.uv.fs_realpath(event.match) or event.match
            vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
        end,
    })
end

return M
