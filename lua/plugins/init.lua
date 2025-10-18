-- plugins/init.lua

return {
    -- -------- BOOTSTRAP --------

    { "folke/lazy.nvim" },



    -- -------- COLOR SCHEMES --------

    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("plugins.config.gruvbox")()
        end,
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

    {
        "zanloy/vim-colors-sunburst",
    },



    -- -------- UI --------

    -- UI for messages, cmdline and the popupmenu
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            require("plugins.config.noice")()
        end,
    },

    {
        "stevearc/dressing.nvim",
        event = "VeryLazy",
        config = function()
            require("plugins.config.dressing")()
        end,
    },

    {
        "rcarriga/nvim-notify",
        event = "VeryLazy",
        config = function()
            require("plugins.config.notify")()
        end,
    },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = function()
            require("plugins.config.which-key")()
        end,
    },

    {
        "echasnovski/mini.icons",
        event = "VeryLazy",
        version = false,
    },

    {

        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("plugins.config.lualine")()
        end,
    },



    -- -------- SEARCH --------

    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = vim.fn.executable("make") == 1,
    },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("plugins.config.telescope")()
        end,
    },

    {
        "ibhagwan/fzf-lua",
        dependencies = { "echasnovski/mini.icons" },
        opts = {},
    },



    -- -------- SNIPPETS --------

    {
        "honza/vim-snippets",
        event = "VeryLazy",
    },

    {
        "SirVer/ultisnips",
        event = "VeryLazy",
        init = function()
            require("plugins.config.ultisnips")()
        end,
    },



    -- -------- COMPLETION --------

    {
        'hrsh7th/nvim-cmp',
        event = "VeryLazy",
        init = function()
            require("plugins.config.nvim-cmp")()
        end,
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'quangnguyen30192/cmp-nvim-ultisnips',
        },
    },



    -- -------- GENERAL CODING --------

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("plugins.config.treesitter")()
        end,
    },

    {
        "tpope/vim-fugitive",
        event = "VeryLazy",
    },

    {
        "sindrets/diffview.nvim",
        event = "VeryLazy",
    },

    {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        config = function()
            require("plugins.config.gitsigns")()
        end,
    },

    {
        "folke/trouble.nvim",
        opts = {},
        cmd = "Trouble",
    },



    -- -------- LANGUAGES --------

    {
        "ledger/vim-ledger",
        event = "VeryLazy",
    },



    -- -------- LSP --------

    {
        "williamboman/mason.nvim",
        config = function()
            require("plugins.config.mason")()
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("plugins.config.mason-lspconfig")()
        end,
    },

    {
        "neovim/nvim-lspconfig",
    },



    -- -------- NAVIGATION --------

    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
            "TmuxNavigatorProcessList",
        },
        keys = {
            { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
    },

    {
        'smoka7/hop.nvim',
        version = "*",
        opts = {
            keys = 'etovxqpdygfblzhckisuran'
        }
    },



    -- -------- EDITING --------

    {
        "tpope/vim-surround",
        event = "VeryLazy",
    },

    {
        "tpope/vim-repeat",
        event = "VeryLazy",
    },

    {
        "echasnovski/mini.pairs",
        version = false,
        config = function()
            require("plugins.config.mini-pairs")()
        end,
    },

    {
        "windwp/nvim-ts-autotag",
        version = false,
        config = function()
            require("plugins.config.nvim-ts-autotag")()

        end,
    },



    -- -------- AI --------

    {
        "olimorris/codecompanion.nvim",
        config = function()
            require("plugins.config.codecompanion.codecompanion")()
        end,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
    },

    {
        "coder/claudecode.nvim",
        dependencies = { "folke/snacks.nvim" },
        config = true,
    },



    -- -------- UTIL --------
    {
        "nvim-lua/plenary.nvim",
    },



    -- -------- FILES --------
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        lazy = false,
    },



    -- -------- IMAGES --------
    {
        "HakonHarnes/img-clip.nvim",
        opts = {
            filetypes = {
                codecompanion = {
                    prompt_for_file_name = false,
                    template = "[Image]($FILE_PATH)",
                    dir_path = "/home/ren/Downloads",
                    use_absolute_path = true,
                    relative_to_current_file = false,
                    relative_template_path = false,
                },
            },
        },
    },
}
