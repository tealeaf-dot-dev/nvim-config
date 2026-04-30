-- plugins/config/treesitter.lua

local languages = {
    "lua", "vimdoc", "bash", "python", "javascript", "typescript",
    "html", "css", "json", "yaml", "markdown", "markdown_inline",
    "haskell", "tsx", "rust",
}

local enabled_filetypes = {
    bash = true,
    css = true,
    haskell = true,
    help = true,
    html = true,
    javascript = true,
    javascriptreact = true,
    json = true,
    lua = true,
    markdown = true,
    python = true,
    rust = true,
    sh = true,
    tsx = true,
    typescript = true,
    typescriptreact = true,
    vim = true,
    vimdoc = true,
    yaml = true,
}

return function()
    local treesitter = require("nvim-treesitter")

    treesitter.setup()
    treesitter.install(languages)

    local group = vim.api.nvim_create_augroup("UserTreesitter", { clear = true })
    vim.api.nvim_create_autocmd("FileType", {
        group = group,
        pattern = vim.tbl_keys(enabled_filetypes),
        callback = function(args)
            pcall(vim.treesitter.start, args.buf)
            vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
    })
end
