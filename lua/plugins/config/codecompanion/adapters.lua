local api_keys = require("plugins.config.codecompanion.api-keys")
local M = {}

M.gpt5high = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "GPT-5 (high)",
        formatted_name = "GPT-5 (high)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5",
            },
            reasoning_effort = {
                default = "high",
            },
        },
    })
end

M.gpt5medium = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "GPT-5 (medium)",
        formatted_name = "GPT-5 (medium)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5",
            },
            reasoning_effort = {
                default = "medium",
            },
        },
    })
end

M.gpt5low = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "GPT-5 (low)",
        formatted_name = "GPT-5 (low)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5",
            },
            reasoning_effort = {
                default = "low",
            },
        },
    })
end

M.gpt5minimal = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "GPT-5 (minimal)",
        formatted_name = "GPT-5 (minimal)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5",
            },
            reasoning_effort = {
                default = "minimal",
            },
        },
    })
end

M.gpt5minihigh = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "GPT-5 Mini (high)",
        formatted_name = "GPT-5 Mini (high)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5-mini",
            },
            reasoning_effort = {
                default = "high",
            },
        },
    })
end

M.gpt5minimedium = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "GPT-5 Mini (medium)",
        formatted_name = "GPT-5 Mini (medium)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5-mini",
            },
            reasoning_effort = {
                default = "medium",
            },
        },
    })
end

M.gpt5minilow = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "GPT-5 Mini (low)",
        formatted_name = "GPT-5 Mini (low)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5-mini",
            },
            reasoning_effort = {
                default = "low",
            },
        },
    })
end

M.gpt5miniminimal = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "GPT-5 Mini (minimal)",
        formatted_name = "GPT-5 Mini (minimal)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5-mini",
            },
            reasoning_effort = {
                default = "minimal",
            },
        },
    })
end

M.gpt5nanohigh = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "GPT-5 Nano (high)",
        formatted_name = "GPT-5 Nano (high)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5-nano",
            },
            reasoning_effort = {
                default = "high",
            },
        },
    })
end

M.gpt5nanomedium = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "GPT-5 Nano (medium)",
        formatted_name = "GPT-5 Nano (medium)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5-nano",
            },
            reasoning_effort = {
                default = "medium",
            },
        },
    })
end

M.gpt5nanolow = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "GPT-5 Nano (low)",
        formatted_name = "GPT-5 Nano (low)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5-nano",
            },
            reasoning_effort = {
                default = "low",
            },
        },
    })
end

M.gpt5nanominimal = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "GPT-5 Nano (minimal)",
        formatted_name = "GPT-5 Nano (minimal)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5-nano",
            },
            reasoning_effort = {
                default = "minimal",
            },
        },
    })
end

M.gpt41 = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "GPT 4.1",
        formatted_name = "GPT 4.1",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-4.1",
                choices = {
                    "gpt-4.1",
                },
            },
        },
    })
end

M.claudesonnet4 = function()
    return require("codecompanion.adapters").extend("anthropic", {
        name = "Claude Sonnet 4",
        formatted_name = "Claude Sonnet 4",
        env = {
            api_key = api_keys.anthropic,
        },
        schema = {
            model = {
                default = "claude-sonnet-4-20250514",
            },
        },
    })
end

M.claudeopus41 = function()
    return require("codecompanion.adapters").extend("anthropic", {
        name = "Claude Opus 4.1",
        formatted_name = "Claude Opus 4.1",
        env = {
            api_key = api_keys.anthropic,
        },
        schema = {
            model = {
                default = "claude-opus-4-1-20250805",
            },
        },
    })
end

M.openrouter_gemini25pro = function()
    return require("codecompanion.adapters").extend("openai_compatible", {
        name = "Gemini 2.5 Pro",
        formatted_name = "Gemini 2.5 Pro",
        env = {
            url = "https://openrouter.ai/api",
            api_key = api_keys.openrouter,
            chat_url = "/v1/chat/completions",
        },
        schema = {
            model = {
                default = "google/gemini-2.5-pro",
            },
        },
    })
end

M.openrouter_grok4 = function()
    return require("codecompanion.adapters").extend("openai_compatible", {
        name = "Grok 4",
        formatted_name = "Grok 4",
        env = {
            url = "https://openrouter.ai/api",
            api_key = api_keys.openrouter,
            chat_url = "/v1/chat/completions",
        },
        schema = {
            model = {
                default = "x-ai/grok-4",
            },
        },
    })
end

M.openrouter_o3pro = function()
    return require("codecompanion.adapters").extend("openai_compatible", {
        name = "o3 Pro",
        formatted_name = "o3 Pro",
        env = {
            url = "https://openrouter.ai/api",
            api_key = api_keys.openrouter,
            chat_url = "/v1/chat/completions",
        },
        schema = {
            model = {
                default = "openai/o3-pro",
            },
        },
    })
end

M.perplexity = function()
    return require("codecompanion.adapters").extend("openai_compatible", {
        name = "Perplexity",
        formatted_name = "Perplexity",
        env = {
            url = "https://api.perplexity.ai",
            chat_url = "/chat/completions",
            api_key = api_keys.perplexity,
        },
        schema = {
            model = {
                default = "sonar-pro",
            },
        },
    })
end

return M
