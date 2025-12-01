local api_keys = require("plugins.config.codecompanion.api-keys")
local M = {}

M.gpt51codexminihigh = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "GPT-5.1 Codex Mini (high)",
        formatted_name = "GPT-5.1 Codex Mini (high)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex-mini",
            },
            reasoning_effort = {
                default = "high",
            },
        },
    })
end

M.gpt51codexminimedium = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "GPT-5.1 Codex Mini (medium)",
        formatted_name = "GPT-5.1 Codex Mini (medium)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex-mini",
            },
            reasoning_effort = {
                default = "medium",
            },
        },
    })
end

M.gpt51codexminilow = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "GPT-5.1 Codex Mini (low)",
        formatted_name = "GPT-5.1 Codex Mini (low)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex-mini",
            },
            reasoning_effort = {
                default = "low",
            },
        },
    })
end

M.gpt51codexhigh = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "GPT-5.1 Codex (high)",
        formatted_name = "GPT-5.1 Codex (high)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex",
            },
            reasoning_effort = {
                default = "high",
            },
        },
    })
end

M.gpt51codexmedium = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "GPT-5.1 Codex (medium)",
        formatted_name = "GPT-5.1 Codex (medium)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex",
            },
            reasoning_effort = {
                default = "medium",
            },
        },
    })
end

M.gpt51codexlow = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "GPT-5.1 Codex (low)",
        formatted_name = "GPT-5.1 Codex (low)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex",
            },
            reasoning_effort = {
                default = "low",
            },
        },
    })
end

M.gpt51high = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "GPT-5.1 (high)",
        formatted_name = "GPT-5.1 (high)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1",
            },
            reasoning_effort = {
                default = "high",
            },
        },
    })
end

M.gpt51medium = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "GPT-5.1 (medium)",
        formatted_name = "GPT-5.1 (medium)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1",
            },
            reasoning_effort = {
                default = "medium",
            },
        },
    })
end

M.gpt51low = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "GPT-5.1 (low)",
        formatted_name = "GPT-5.1 (low)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1",
            },
            reasoning_effort = {
                default = "low",
            },
        },
    })
end

M.gpt51minimal = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "GPT-5.1 (minimal)",
        formatted_name = "GPT-5.1 (minimal)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1",
            },
            reasoning_effort = {
                default = "minimal",
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
