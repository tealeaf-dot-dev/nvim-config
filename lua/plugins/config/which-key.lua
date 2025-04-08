-- plugins/config/which-key.lua

return function()
    local wk = require("which-key")

    wk.setup({
        plugins = {
            marks = true,
            registers = true,
            spelling = { enabled = true, suggestions = 20 },
        },
        win = {
            border = "rounded", -- single | double | shadow | none
            padding = { 1, 2, 1, 2 },
            wo = 10,
        },
        layout = {
            width = { min = 20, max = 50 },
            spacing = 4,
        },
    })

    wk.add({
        { "<leader>a", group = "AI" },
        { "<leader>ac", group = "CodeCompanion" },
        { "<leader>c", group = "Quickfix" },
        { "<leader>f", group = "Find" },
        { "<leader>g", group = "Git" },
        { "<leader>ga", group = "Actions" },
        { "<leader>gc", group = "Commits" },
        { "<leader>gd", group = "Diff" },
        { "<leader>gdh", group = "History" },
        { "<leader>gdp", group = "Project" },
        { "<leader>gl", group = "Blame" },
        { "<leader>i", group = "LSP" },
        { "<leader>id", group = "Diagnostics" },
        { "<leader>idl", group = "List" },
        { "<leader>is", group = "Symbol" },
        { "<leader>isr", group = "References" },
        { "<leader>l", group = "Local window" },
    })
end
