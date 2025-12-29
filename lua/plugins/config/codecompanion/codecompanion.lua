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
            },
            inline = {
                adapter = "gpt51codexmedium",
            },
        },
    })
end
