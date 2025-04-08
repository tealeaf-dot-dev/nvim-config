-- plugins/config/mason-lspconfig.lua

return function()
    require("mason-lspconfig").setup({
        ensure_installed = {
            "lua_ls",
            "pyright",
            "ts_ls",
            "eslint",
        },
    })
end
