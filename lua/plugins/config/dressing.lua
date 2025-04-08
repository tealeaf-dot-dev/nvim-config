-- plugins/config/dressing.lua

return function()
    require("dressing").setup({
        input = {
            enabled = true,
        },
        select = {
            enabled = true,
            backend = { "telescope", "builtin" },
        },
    })
end
