-- plugins/config/blink.lua

local M = {}

M.opts = {
    appearance = {
        -- sets the fallback highlight groups to nvim-cmp's highlight groups
        -- useful for when your theme doesn't support blink.cmp
        -- will be removed in a future release, assuming themes add support
        use_nvim_cmp_as_default = false,
        -- set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- adjusts spacing to ensure icons are aligned
        nerd_font_variant = "mono",
    },

    completion = {
        accept = {
            -- experimental auto-brackets support
            auto_brackets = {
                enabled = true,
            },
        },
        menu = {
            draw = {
                treesitter = { "lsp" },
            },
        },
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 200,
        },
        ghost_text = {
            enabled = vim.g.ai_cmp,
        },
    },

    -- experimental signature help support
    -- signature = { enabled = true },

    sources = {
        -- adding any nvim-cmp sources here will enable them
        -- with blink.compat
        compat = { "ultisnips" },
        default = { "lsp", "path", "snippets", "buffer" },
        providers = {
            -- create provider
            ultisnips = {
                -- IMPORTANT: use the same name as you would for nvim-cmp
                name = 'ultisnips',
                module = 'blink.compat.source',
                opts = {
                    -- any options from cmp-nvim-ultisnips
                },
            },
        },
    },

    cmdline = {
        enabled = true,
        keymap = {
            preset = "cmdline",
            ["<Right>"] = false,
            ["<Left>"] = false,
        },
        completion = {
            list = { selection = { preselect = false } },
            menu = {
                auto_show = function(ctx)
                    return vim.fn.getcmdtype() == ":"
                end,
            },
            ghost_text = { enabled = true },
        },
    },

    keymap = {
        preset = "enter",
        ["<C-y>"] = { "select_and_accept" },
    },
}

M.event = { "InsertEnter", "CmdlineEnter" }

---@module 'blink.cmp'
---@type blink.cmp.Config

---@param opts blink.cmp.Config | { sources: { compat: string[] } }
M.config = function(_, opts)
    -- setup compat sources
    local enabled = opts.sources.default
    for _, source in ipairs(opts.sources.compat or {}) do
        opts.sources.providers[source] = vim.tbl_deep_extend(
            "force",
            { name = source, module = "blink.compat.source" },
            opts.sources.providers[source] or {}
        )
        if type(enabled) == "table" and not vim.tbl_contains(enabled, source) then
            table.insert(enabled, source)
        end
    end

    -- Unset custom prop to pass blink.cmp validation
    opts.sources.compat = nil

    require("blink.cmp").setup(opts)
end

M.opts_extend = {
    "sources.completion.enabled_providers",
    "sources.compat",
    "sources.default",
}

return M
