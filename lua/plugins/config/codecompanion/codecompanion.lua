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
            claude35 = adapters.claude35,
            claude37 = adapters.claude37,
            claude37thinking = adapters.claude37thinking,
            deepseek = adapters.deepseek,
            gpt41 = adapters.gpt41,
            gpt45 = adapters.gpt45,
            gpt4o = adapters.gpt4o,
            hyperbolicdeepseekr1 = adapters.hyperbolicdeepseekr1,
            o3mini = adapters.o3mini,
            o3minimedium = adapters.o3minimedium,
            o3minihigh = adapters.o3minihigh,
            o3 = adapters.o3,
            o4mini = adapters.o4mini,
            o4minihigh = adapters.o4minihigh,
            openrouter_gemini25pro = adapters.openrouter_gemini25pro,
            perplexity = adapters.perplexity,
        },
        strategies = {
            chat = {
                adapter = "gpt41",
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
                    opts = {
                        system_prompt = [[## Tools Access and Execution Guidelines

### Overview
You now have access to specialized tools that empower you to assist users with specific tasks. Be proactive in using tools to help the user with their requests.

### General Rules
- **Strict Schema Compliance:** Follow the exact XML schema provided when invoking any tool.
- **XML Format:** Always wrap your responses in a markdown code block designated as XML and within the `<tools></tools>` tags.
- **Valid XML Required:** Ensure that the constructed XML is valid and well-formed.
- **Multiple Commands:**
  - If issuing commands of the same type, combine them within one `<tools></tools>` XML block with separate `<action></action>` entries.
  - If issuing commands for different tools, ensure they're wrapped in `<tool></tool>` tags within the `<tools></tools>` block.
- **No Side Effects:** Tool invocations should not alter your core tasks or the general conversation structure.]],
                    },
                },
                slash_commands = {
                    ["file"] = {
                        -- Location to the slash command in CodeCompanion
                        callback = "strategies.chat.slash_commands.file",
                        description = "Select a file",
                        opts = {
                            provider = "fzf_lua", -- Other options include 'default', 'mini_pick', 'telescope', snacks
                            contains_code = true,
                        },
                    },
                    ["buffer"] = {
                        -- Location to the slash command in CodeCompanion
                        callback = "strategies.chat.slash_commands.buffer",
                        description = "Select a buffer",
                        opts = {
                            provider = "fzf_lua", -- Other options include 'default', 'mini_pick', 'telescope', snacks
                            contains_code = true,
                        },
                    },
                    ["help"] = {
                        -- Location to the slash command in CodeCompanion
                        callback = "strategies.chat.slash_commands.help",
                        description = "Select help",
                        opts = {
                            provider = "fzf_lua", -- Other options include 'default', 'mini_pick', 'telescope', snacks
                            contains_code = true,
                        },
                    },
                },
            },
            inline = {
                adapter = "gpt41",
            },
        },
    })
end
