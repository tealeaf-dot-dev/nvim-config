-- plugins/config/noice.lua

return function()
    require("noice").setup({
        lsp = {
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },
        },
        presets = {
            bottom_search = true,         -- classic bottom command line
            command_palette = true,       -- aligns : commands and search
            long_message_to_split = true, -- very long messages go to split
            inc_rename = false,
            lsp_doc_border = true,        -- border around LSP hover/signature
        },
    })

    vim.notify = require("notify")
end
