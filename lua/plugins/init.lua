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
        "echasnovski/mini.completion",
        version = false,
        config = function()
            require("plugins.config.mini-completion")()
        end,
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
        config = function()
            require("plugins.config.nvim-lspconfig")()
        end,
    },



    -- -------- NAVIGATION --------

    {
        "ggandor/leap.nvim",
        event = "VeryLazy",
    },

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
            require("plugins.config.codecompanion")()
        end,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
    },



    -- -------- UTIL --------
    {
        "nvim-lua/plenary.nvim",
    }
}
