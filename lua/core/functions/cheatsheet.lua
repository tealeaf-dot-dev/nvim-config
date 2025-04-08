-- core/cheatsheet.lua

local M = {}

function M.open()
    local buf = vim.api.nvim_create_buf(false, true) -- scratch, no file
    local width = math.floor(vim.o.columns * 0.8)
    local height = math.floor(vim.o.lines * 0.8)
    local row = math.floor((vim.o.lines - height) / 2)
    local col = math.floor((vim.o.columns - width) / 2)

    local opts = {
        style = "minimal",
        relative = "editor",
        width = width,
        height = height,
        row = row,
        col = col,
        border = "rounded",
    }

    local win = vim.api.nvim_open_win(buf, true, opts)

    local lines = {
        "╭──────────────────────────────────────────────────────────╮",
        "│                 VimL → Lua Migration Guide              │",
        "│             (for Neovim clean config builds)            │",
        "╰──────────────────────────────────────────────────────────╯",
        "",
        "✅ OPTIONS (vim.opt)",
        "---------------------",
        "vim.opt.number = true",
        "vim.opt.relativenumber = true",
        "vim.opt.expandtab = true",
        "vim.opt.shiftwidth = 4",
        "vim.opt.tabstop = 4",
        "vim.opt.smartindent = true",
        "vim.opt.wrap = false",
        "vim.opt.scrolloff = 8",
        "vim.opt.termguicolors = true",
        "vim.opt.clipboard = 'unnamedplus'",
        "vim.opt.wildmode = { 'longest', 'full' }",
        "",
        "🧠 TIP:",
        "- Append to list configuration options with :append('...')",
        "- e.g. vim.opt.wildmode:append('longest')",
        "- Similarly, :prepend('...') and :remove('...') will prepend and remove",
        "",
        "🧙‍♂️ COMMANDS (vim.cmd)",
        "------------------------",
        'vim.cmd("syntax enable")',
        'vim.cmd("filetype plugin indent on")',
        'vim.cmd("colorscheme gruvbox")',
        'vim.cmd("set iskeyword+=-")',
        "",
        "🧠 TIP:",
        "- Try vim.opt first. If it errors, it's a command.",
        "- Wrap commands in vim.cmd() or vim.cmd([[ ... ]])",
        "",
        "Press 'q' to close this window.",
    }

    vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

    -- Keymap to close window
    vim.api.nvim_buf_set_keymap(buf, "n", "q", "<cmd>bd!<CR>", { noremap = true, silent = true })
end

return M
