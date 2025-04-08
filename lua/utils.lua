local M = {}

M.map = function(mode, lhs, rhs, desc, opts)
    local options = { noremap = true, silent = true, desc = desc }
    opts = opts or {}

    for k, v in pairs(opts) do
        options[k] = v
    end

    vim.keymap.set(mode, lhs, rhs, options)
end

M.feedkeys = function(command)
  return function()
    vim.api.nvim_feedkeys(command, 'n', false)
  end
end

return M
