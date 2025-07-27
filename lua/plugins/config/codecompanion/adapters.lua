local api_keys = require("plugins.config.codecompanion.api-keys")
local M = {}

M.o3minilow = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "o3 mini low",
        formatted_name = "o3 mini low",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "o3-mini",
                choices = {
                    "o3-mini",
                },
            },
        },
    })
end

M.o3minimedium = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "o3 mini medium",
        formatted_name = "o3 mini medium",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "o3-mini",
                choices = {
                    ["o3-mini"] = { opts = { can_reason = true } },
                },
            },
        },
    })
end

M.o3minihigh = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "o3 mini high",
        formatted_name = "o3 mini high",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "o3-mini",
                choices = {
                    ["o3-mini"] = { opts = { can_reason = true } },
                },
            },
            reasoning_effort = {
                default = "high",
            },
        },
    })
end

M.o3 = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "o3",
        formatted_name = "o3",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "o3",
                choices = {
                    "o3",
                },
            },
        },
    })
end

M.o4mini = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "o4 mini",
        formatted_name = "o4 mini",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "o4-mini",
                choices = {
                    "o4-mini",
                },
            },
        },
    })
end

M.o4minihigh = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "o4 mini high",
        formatted_name = "o4 mini high",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "o4-mini",
                choices = {
                    ["o4-mini"] = { opts = { can_reason = true } },
                },
            },
            reasoning_effort = {
                default = "high",
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

M.gpt45 = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "GPT 4.5",
        formatted_name = "GPT 4.5",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-4.5-preview",
                choices = {
                    "gpt-4.5-preview",
                },
            },
        },
    })
end

M.gpt4o = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "GPT 4o",
        formatted_name = "GPT 4o",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-4o",
                choices = {
                    "gpt-4o",
                },
            },
        },
    })
end

M.claude35 = function()
    return require("codecompanion.adapters").extend("anthropic", {
        name = "Claude 3.5",
        formatted_name = "Claude 3.5",
        env = {
            api_key = api_keys.anthropic,
        },
        schema = {
            model = {
                default = "claude-3-5-sonnet-latest",
                choices = {
                    "claude-3-5-sonnet-latest",
                },
            },
        },
    })
end

M.claude37 = function()
    return require("codecompanion.adapters").extend("anthropic", {
        name = "Claude 3.7",
        formatted_name = "Claude 3.7",
        env = {
            api_key = api_keys.anthropic,
        },
        schema = {
            model = {
                default = "claude-3-7-sonnet-latest",
                choices = {
                    "claude-3-7-sonnet-latest",
                },
            },
        },
    })
end

M.claude37thinking = function()
    return require("codecompanion.adapters").extend("anthropic", {
        name = "Claude 3.7 (thinking)",
        formatted_name = "Claude 3.7 (thinking)",
        env = {
            api_key = api_keys.anthropic,
        },
        schema = {
            model = {
                default = "claude-3-7-sonnet-latest",
                choices = {
                    ["claude-3-7-sonnet-latest"] = { opts = { can_reason = true } },
                },
            },
        },
    })
end

M.deepseek = function()
    return require("codecompanion.adapters").extend("deepseek", {
        name = "Deepseek",
        formatted_name = "Deepseek",
        env = {
            api_key = api_keys.deepseek,
        },
    })
end

M.hyperbolicdeepseekr1 = function()
    return require("codecompanion.adapters").extend("openai_compatible", {
        name = "Deepseek (hyperbolic)",
        formatted_name = "Deepseek (hyperbolic)",
        env = {
            url = "https://api.hyperbolic.xyz/v1",
            chat_url = "/chat/completions",
            api_key = api_keys.hyperbolic,
        },
        schema = {
            model = {
                default = "deepseek-ai/DeepSeek-R1",
                choices = {
                    "deepseek-ai/DeepSeek-R1",
                },
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
                default = "google/gemini-2.5-pro-preview-03-25",
                choices = {
                    "google/gemini-2.5-pro-preview-03-25",
                },
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
                choices = {
                    "x-ai/grok-4",
                },
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
                choices = {
                    "openai/o3-pro",
                },
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
                choices = {
                    "sonar-pro",
                },
            },
        },
    })
end

return M
