-- plugins/config/telescope.lua

return function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
        defaults = {
            layout_strategy = "vertical",
            layout_config = {
                vertical = { width = 0.9, height = 0.95, preview_cutoff = 0 },
            },
            sorting_strategy = "ascending",
            winblend = 10,
            border = true,
            mappings = {
                i = {
                    ["<esc>"] = actions.close,
                },
            },
        },
    })

    -- Load extensions
    pcall(telescope.load_extension, "fzf")
end
