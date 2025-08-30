-- plugins/config/codecompanion.lua

local adapters = require("plugins.config.codecompanion.adapters")
local system_prompt = require("plugins.config.codecompanion.system-prompts.code-companion")

return function()
    require("codecompanion").setup({
        opts = {
            log_level = "DEBUG", -- "TRACE" or "DEBUG"
            system_prompt = function(opts)
                local language = opts.language or "English"
                return string.format(system_prompt, language)
            end,
        },
        adapters = {
            http = {
                opts = {
                    show_defaults = false,
                },
                claudesonnet4 = adapters.claudesonnet4,
                claudeopus41 = adapters.claudeopus41,
                gpt41 = adapters.gpt41,
                gpt5high = adapters.gpt5high,
                gpt5medium = adapters.gpt5medium,
                gpt5low = adapters.gpt5low,
                gpt5minimal = adapters.gpt5minimal,
                gpt5minihigh = adapters.gpt5minihigh,
                gpt5minimedium = adapters.gpt5minimedium,
                gpt5minilow = adapters.gpt5minilow,
                gpt5miniminimal = adapters.gpt5miniminimal,
                gpt5nanohigh = adapters.gpt5nanohigh,
                gpt5nanomedium = adapters.gpt5nanomedium,
                gpt5nanolow = adapters.gpt5nanolow,
                gpt5nanominimal = adapters.gpt5nanominimal,
                grok4 = adapters.openrouter_grok4,
                openrouter_o3pro = adapters.openrouter_o3pro,
                openrouter_gemini25pro = adapters.openrouter_gemini25pro,
                perplexity = adapters.perplexity,
            },
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
