-- plugins/config/nvim-lspconfig.lua

return function()
    local lspconfig = require("lspconfig")

    lspconfig.ts_ls.setup {}
    lspconfig.pyright.setup {}
    lspconfig.lua_ls.setup {}
    lspconfig.eslint.setup {}
    lspconfig.twiggy_language_server.setup {}
end
