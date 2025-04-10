-- plugins/config/codecompanion.lua

local adapters = require("plugins.config.codecompanion.adapters")
local system_prompt = require("plugins.config.codecompanion.system-prompts.codecompanion-plus-claude-plus-cursor-tools")

return function()
    require("codecompanion").setup({
        opts = {
            log_level = "TRACE", -- "TRACE" or "DEBUG"
            system_prompt = function(opts)
                local language = opts.language or "English"
                return string.format(system_prompt, language)
            end,
        },
        adapters = {
            claude37 = adapters.claude37,
            claude37thinking = adapters.claude37thinking,
            deepseek = adapters.deepseek,
            gpt45 = adapters.gpt45,
            gpt4o = adapters.gpt4o,
            hyperbolicdeepseekr1 = adapters.hyperbolicdeepseekr1,
            o3mini = adapters.o3mini,
            o3minithinking = adapters.o3minithinking,
            o3minithinkingharder = adapters.o3minithinkingharder,
            openrouter_gemini25pro = adapters.openrouter_gemini25pro,
            openrouter_quasaralpha = adapters.openrouter_quasaralpha,
            perplexity = adapters.perplexity,
        },
        strategies = {
            chat = {
                adapter = "claude37",
                roles = {
                    llm = function(adapter)
                        return adapter.formatted_name
                    end,
                },
                tools = {
                    ["cmd_runner"] = {
                        opts = {
                            requires_approval = false,
                        },
                    },
                },
                slash_commands = {
                    ["file"] = {
                        -- Location to the slash command in CodeCompanion
                        callback = "strategies.chat.slash_commands.file",
                        description = "Select a file using FZF",
                        opts = {
                            provider = "fzf_lua", -- Other options include 'default', 'mini_pick', 'telescope', snacks
                            contains_code = true,
                        },
                    },
                    ["buffer"] = {
                        -- Location to the slash command in CodeCompanion
                        callback = "strategies.chat.slash_commands.buffer",
                        description = "Select a buffer using FZF",
                        opts = {
                            provider = "fzf_lua", -- Other options include 'default', 'mini_pick', 'telescope', snacks
                            contains_code = true,
                        },
                    },
                    ["help"] = {
                        -- Location to the slash command in CodeCompanion
                        callback = "strategies.chat.slash_commands.help",
                        description = "Select help using FZF",
                        opts = {
                            provider = "fzf_lua", -- Other options include 'default', 'mini_pick', 'telescope', snacks
                            contains_code = true,
                        },
                    },
                },
            },
            inline = {
                adapter = "claude37",
            },
        },
    })
end
