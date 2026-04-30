-- core/compat.lua

local M = {}

function M.setup()
    if not (vim.lsp and vim.lsp.get_client_by_id) then
        return
    end

    -- Shim for plugins that still call the deprecated helper on Nvim 0.12+.
    vim.lsp.get_buffers_by_client_id = function(client_id)
        local client = vim.lsp.get_client_by_id(client_id)
        return client and vim.tbl_keys(client.attached_buffers or {}) or {}
    end
end

return M
