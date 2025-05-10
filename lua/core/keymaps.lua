local g = vim.g
local M = {}
local map = require("utils").map
local feedkeys = require("utils").feedkeys

function M.setup()
    g.mapleader = ","

    -- -------- NAVIGATION --------

    -- Split navigation
    map("n", "<C-h>", "<C-w>h", "Switch to left split")
    map("n", "<C-l>", "<C-w>l", "Switch to right split")
    map("n", "<C-j>", "<C-w>j", "Switch to bottom split")
    map("n", "<C-k>", "<C-w>k", "Switch to top split")

    -- Quickfix navigation
    map("n", "[c", ":cprev<CR>", "Go back through quickfix list")
    map("n", "]c", ":cnext<CR>", "Go forward through quickfix list")
    map("n", "[C", ":cfirst<CR>", "Go to first item in quickfix list")
    map("n", "]C", ":clast<CR>", "Go to last item in quickfix list")
    map("n", "<leader>cq", ":cclose<CR>", "Close quickfix list")
    map("n", "<leader>co", ":copen<CR>", "Open quickfix list")

    -- Location window navigation
    map("n", "]l", ":lnext<CR>", "Go back through location window list")
    map("n", "[l", ":lprevious<CR>", "Go forward through location window list")
    map("n", "<leader>lq", ":lclose<CR>", "Close location window")
    map("n", "<leader>lo", ":lopen<CR>", "Open location window")

    -- Move up and down by screen lines instead of text lines
    map("n", "k", "gk", "Move up by one screen line")
    map("n", "j", "gj", "Move down by one screen line")

    -- Close window
    map("n", "<leader>q", ":q<CR>", "Close window")

    -- Switch buffer
    map({ "n", "v" }, "<TAB>", "<cmd>Telescope buffers<cr>", "Switch buffer")

    -- Search project
    map("n", "<leader>r", "<cmd>FzfLua grep_project<cr>", "Search project")

    -- Search buffer
    map("n", "<leader>s", "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Search buffer")

    -- Find file
    map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", "Files" )

    -- Find file in project
    map("n", "<leader>p", "<cmd>Telescope git_files<cr>", "Files")

    -- Find pattern
    map("n", "<leader>fp", "<cmd>Telescope live_grep<cr>", "Pattern" )

    -- Hop forward to word
    map({"n", "v"}, "<space>w", "<cmd>HopWordAC<cr>", "Files")

    -- Hop backward to word
    map({"n", "v"}, "<space>b", "<cmd>HopWordBC<cr>", "Files")

    -- Hop down to line
    map({"n", "v"}, "<space>j", "<cmd>HopLineAC<cr>", "Files")

    -- Hop up to line
    map({"n", "v"}, "<space>k", "<cmd>HopLineBC<cr>", "Files")

    -- Hop forward to character
    map({"n", "v"}, "<space>f", "<cmd>HopChar1AC<cr>", "Files")

    -- Hop backward to character
    map({"n", "v"}, "<space>F", "<cmd>HopChar1BC<cr>", "Files")



    -- -------- LSP --------

    -- LSP code actions menu
    map("n", "<leader>ia", vim.lsp.buf.code_action, "Code actions");

    -- LSP show all symbol info
    map("n", "<leader>ise", "<cmd>Trouble lsp toggle focus=true win.position=right<cr>", "Everything");

    -- LSP show info
    map("n", "<leader>isi", vim.lsp.buf.hover, "Info");

    -- LSP jump to definition
    map("n", "<leader>isd", vim.lsp.buf.definition, "Definition");

    -- LSP show references
    map("n", "<leader>isrs", "<cmd>Telescope lsp_references<CR>", "Search");
    map("n", "<leader>isrq", vim.lsp.buf.references, "Quickfix");

    -- LSP signature help
    map("n", "<leader>iss", vim.lsp.buf.signature_help, "Signature help");

    -- LSP rename
    map("n", "<leader>isn", vim.lsp.buf.rename, "Rename")

    -- LSP jump to implementation
    map("n", "<leader>ism", vim.lsp.buf.implementation, "Implementation")

    -- LSP jump to type definition
    map("n", "<leader>ist", vim.lsp.buf.type_definition, "Type definition")

    -- LSP show diagnostic
    map("n", "<leader>ide", vim.diagnostic.open_float, "This")

    -- LSP show diagnostics list for this buffer
    map("n", "<leader>idlb", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", "This buffer")

    -- LSP show diagnostics list for all buffers
    map("n", "<leader>idla", "<cmd>Trouble diagnostics toggle<cr>", "All buffers")

    -- LSP search diagnostics
    map("n", "<leader>ids", "<cmd>Telescope diagnostics<CR>", "Search")

    -- LSP jump to previous diagnostic
    map("n", "[d", vim.diagnostic.goto_prev, "Previous diagnostic")

    -- LSP jump to next diagnostic
    map("n", "]d", vim.diagnostic.goto_next, "Next diagnostic")



    -- -------- EDITING --------

    -- Indent whole file and return to original cursor position
    map("n", "<leader>=", "gg=G''", "Indent file")

    -- Insert an empty line above the current one
    map("n", "[<space>", "O<esc>j", "Insert blank line above")

    -- Insert an empty line below the current one
    map("n", "]<space>", "o<esc>k", "Insert blank line below")

    -- Write buffer
    map("n", "<leader>w", ":w<CR>", "Write buffer")

    -- Delete buffer
    map("n", "<leader>d", ":bd<CR>", "Delete buffer")

    -- Remove highlighting of search matches
    map("n", "<leader>nh", ":noh<CR>", "Remove highlighting of search matches")



    -- -------- GIT --------

    -- Stage buffer
    map("n", "<leader>gas", "<cmd>Git add %<CR>", "Stage buffer")

    -- Unstage buffer
    map("n", "<leader>gau", "<cmd>Git restore --staged %<CR>", "Unstage buffer")

    -- Revert buffer
    map("n", "<leader>gar", "<cmd>Git restore %<CR>", "Revert buffer")

    -- Branches
    map("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", "Branches")

    -- Buffer commits
    map("n", "<leader>gcb", "<cmd>FzfLua git_bcommits<cr>", "Buffer")

    -- Create commit
    map("n", "<leader>gcc", "<cmd>Git commit<cr>", "Create")

    -- Project commits
    map("n", "<leader>gcp", "<cmd>FzfLua git_commits<cr>", "Project")

    -- Files
    map("n", "<leader>gf", "<cmd>Telescope git_files<cr>", "Files")

    -- Blame buffer
    map("n", "<leader>glb", "<cmd>Git blame<CR>", "Buffer")

    -- Blame lins
    map("n", "<leader>gll", "<cmd>Gitsigns blame_line<CR>", "Line")

    -- Push
    map("n", "<leader>grp", "<cmd>Git push<CR>", "Push")

    -- Pull
    map("n", "<leader>grP", "<cmd>Git pull<CR>", "Pull")

    -- Fetch
    map("n", "<leader>grf", "<cmd>Git fetch<CR>", "Fetch")

    -- Stash
    map("n", "<leader>gs", "<cmd>Telescope git_stash<cr>", "Stash")

    -- Diff buffer
    map("n", "<leader>gdb", "<cmd>Gvdiffsplit<CR>", "Buffer")

    -- Diff project (Telescope)
    map("n", "<leader>gdpt", "<cmd>Telescope git_status<cr>", "Telescope (for overview)")

    -- Diff project (Diffview)
    map("n", "<leader>gdpd", ":DiffviewOpen<CR>", "Diffview (for changes)")

    -- Diff buffer history
    map("n", "<leader>gdhb", ":DiffviewFileHistory %<CR>", "Buffer")

    -- Diff project history
    map("n", "<leader>gdhp", ":DiffviewFileHistory<CR>", "Project")

    -- Status
    map("n", "<leader>gg", "<cmd>Git<CR>", "Status")

    -- Jump to previous hunk
    map("n", "[h", "<cmd>Gitsigns prev_hunk<CR>", "Jump to previous hunk")

    -- Jump to next hunk
    map("n", "]h", "<cmd>Gitsigns next_hunk<CR>", "Jump to next hunk")

    -- Stage hunk
    map({ 'n', 'v' }, '<leader>hs', "<cmd>Gitsigns stage_hunk<CR>", "Stage hunk")

    -- Unstage hunk
    map({ 'n', 'v' }, '<leader>hu', "<cmd>Gitsigns undo_stage_hunk<CR>", "Unstage hunk")

    -- Revert hunk
    map({ 'n', 'v' }, '<leader>hr', "<cmd>Gitsigns reset_hunk<CR>", "Reset hunk")



    -- -------- AI --------

    -- CodeCompanion include
    map({ "v" }, "<leader>ac+", "<cmd>CodeCompanionChat Add<CR>", "Add")

    -- CodeCompanion actions
    map({ "n", "v" }, "<leader>aca", "<cmd>CodeCompanionActions<CR>", "Actions")

    -- CodeCompanion chat
    map({ "n", "v" }, "<leader>acc", "<cmd>CodeCompanionChat<CR>", "Chat")

    -- CodeCompanion prompt
    map({ "n", "v" }, "<leader>aci", feedkeys(":CodeCompanion "), "Inline")

    -- CodeCompanion quick chat
    map({ "n", "v" }, "<leader>acq", feedkeys(":CodeCompanionChat "), "Quick Chat")

    -- CodeCompanion toggle chat
    map({ "n", "v" }, "<leader>act", "<cmd>CodeCompanionChat Toggle<CR>", "Toggle Chat")



    -- -------- MISC --------

    -- Change to the buffer working directory
    map("n", "<leader>~", ":cd %:p:h<CR>:pwd<CR>", "Change to the buffer working directory")

    -- Find key mapping
    map("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", "Keymaps")

    -- Find man page
    map("n", "<leader>fm", "<cmd>Telescope man_pages<cr>", "Man pages")
end

return M
