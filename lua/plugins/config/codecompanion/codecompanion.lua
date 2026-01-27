-- plugins/config/codecompanion.lua

local adapters = require("plugins.config.codecompanion.adapters")

return function()
    require("codecompanion").setup({
        opts = {
            log_level = "DEBUG", -- "TRACE" or "DEBUG"
        },
        adapters = {
            http = {
                opts = {
                    show_defaults = false,
                    show_presets = false,
                },
                claudehaiku45 = adapters.claudehaiku45,
                claudesonnet45 = adapters.claudesonnet45,
                claudeopus45 = adapters.claudeopus45,
                gpt52codexxhigh = adapters.gpt52codexxhigh,
                gpt52codexhigh = adapters.gpt52codexhigh,
                gpt52codexmedium = adapters.gpt52codexmedium,
                gpt52codexlow = adapters.gpt52codexlow,
                gpt52codexnone = adapters.gpt52codexnone,
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
                gpt52chat = adapters.gpt52chat,
                grok41fast = adapters.grok41fast,
                gemini3propreview = adapters.gemini3propreview,
                gemini3flashpreview = adapters.gemini3flashpreview,
                minimaxm21 = adapters.minimaxm21,
                nanobananapro = adapters.nanobananapro,
                perplexity = adapters.perplexity,
                tavily = adapters.tavily,
            },
        },
        interactions = {
            chat = {
                adapter = "gpt52medium",
            },
            inline = {
                adapter = "gpt52medium",
            },
        },
    })
end
