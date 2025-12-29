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
                claudesonnet45 = adapters.claudesonnet45,
                claudeopus45 = adapters.claudeopus45,
                gpt51codexxhigh = adapters.gpt51codexxhigh,
                gpt51codexhigh = adapters.gpt51codexhigh,
                gpt51codexmedium = adapters.gpt51codexmedium,
                gpt51codexlow = adapters.gpt51codexlow,
                gpt51codexnone = adapters.gpt51codexnone,
                gpt51codexminixhigh = adapters.gpt51codexminixhigh,
                gpt51codexminihigh = adapters.gpt51codexminihigh,
                gpt51codexminimedium = adapters.gpt51codexminimedium,
                gpt51codexminilow = adapters.gpt51codexminilow,
                gpt51codexmininone = adapters.gpt51codexmininone,
                gpt51codexmaxxhigh = adapters.gpt51codexmaxxhigh,
                gpt51codexmaxhigh = adapters.gpt51codexmaxhigh,
                gpt51codexmaxmedium = adapters.gpt51codexmaxmedium,
                gpt51codexmaxlow = adapters.gpt51codexmaxlow,
                gpt51codexmaxnone = adapters.gpt51codexmaxnone,
                gpt52xhigh = adapters.gpt52xhigh,
                gpt52high = adapters.gpt52high,
                gpt52medium = adapters.gpt52medium,
                gpt52low = adapters.gpt52low,
                gpt52none = adapters.gpt52none,
                gpt52proxhigh = adapters.gpt52proxhigh,
                gpt52prohigh = adapters.gpt52prohigh,
                gpt52promedium = adapters.gpt52promedium,
                gpt52prolow = adapters.gpt52prolow,
                gpt52pronone = adapters.gpt52pronone,
                grok41fast = adapters.grok41fast,
                gemini3propreview = adapters.gemini3propreview,
                gemini3flashpreview = adapters.gemini3flashpreview,
                nanobananapro = adapters.nanobananapro,
                perplexity = adapters.perplexity,
            },
        },
        interactions = {
            chat = {
                adapter = "gpt51codexmedium",
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
                adapter = "gpt51codexmedium",
            },
        },
    })
end
