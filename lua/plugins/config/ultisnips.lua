-- plugins/config/ultisnips.lua

local g = vim.g

return function()
    g.UltiSnipsSnippetDirectories = { '~/.config/nvim/ultisnips', 'UltiSnips' }
    g.UltiSnipsExpandTrigger = "<Tab>"
    g.UltiSnipsJumpForwardTrigger = "<Tab>"
    g.UltiSnipsJumpBackwardTrigger = "<S-Tab>"
end
