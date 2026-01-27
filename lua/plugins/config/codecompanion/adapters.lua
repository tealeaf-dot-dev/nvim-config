local api_keys = require("plugins.config.codecompanion.api-keys")
local M = {}

M.gpt52codexnone = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.2-codex-none",
        formatted_name = "GPT-5.2 Codex (none)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.2-codex",
            },
            ["reasoning.effort"] = {
                order = 2,
                mapping = "parameters",
                type = "string",
                optional = true,
                default = "none",
                choices = {
                    "xhigh",
                    "high",
                    "medium",
                    "low",
                    "none",
                },

            },
        },
    })
end

M.gpt52codexlow = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.2-codex-low",
        formatted_name = "GPT-5.2 Codex (low)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.2-codex",
            },
            ["reasoning.effort"] = {
                order = 2,
                mapping = "parameters",
                type = "string",
                optional = true,
                default = "low",
                choices = {
                    "xhigh",
                    "high",
                    "medium",
                    "low",
                    "none",
                },

            },
        },
    })
end

M.gpt52codexmedium = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.2-codex-medium",
        formatted_name = "GPT-5.2 Codex (medium)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.2-codex",
            },
            ["reasoning.effort"] = {
                order = 2,
                mapping = "parameters",
                type = "string",
                optional = true,
                default = "medium",
                choices = {
                    "xhigh",
                    "high",
                    "medium",
                    "low",
                    "none",
                },
            },
        },
    })
end

M.gpt52codexhigh = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.2-codex-high",
        formatted_name = "GPT-5.2 Codex (high)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.2-codex",
            },
            ["reasoning.effort"] = {
                order = 2,
                mapping = "parameters",
                type = "string",
                optional = true,
                default = "high",
                choices = {
                    "xhigh",
                    "high",
                    "medium",
                    "low",
                    "none",
                },

            },
        },
    })
end

M.gpt52codexxhigh = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.2-codex-xhigh",
        formatted_name = "GPT-5.2 Codex (xhigh)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.2-codex",
            },
            ["reasoning.effort"] = {
                order = 2,
                mapping = "parameters",
                type = "string",
                optional = true,
                default = "xhigh",
                choices = {
                    "xhigh",
                    "high",
                    "medium",
                    "low",
                    "none",
                },

            },
        },
    })
end

M.gpt52none = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.2-none",
        formatted_name = "GPT-5.2 (none)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.2",
            },
            ["reasoning.effort"] = {
                order = 2,
                mapping = "parameters",
                type = "string",
                optional = true,
                default = "none",
                choices = {
                    "xhigh",
                    "high",
                    "medium",
                    "low",
                    "none",
                },

            },
        },
    })
end

M.gpt52low = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.2-low",
        formatted_name = "GPT-5.2 (low)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.2",
            },
            ["reasoning.effort"] = {
                order = 2,
                mapping = "parameters",
                type = "string",
                optional = true,
                default = "low",
                choices = {
                    "xhigh",
                    "high",
                    "medium",
                    "low",
                    "none",
                },

            },
        },
    })
end

M.gpt52medium = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.2-medium",
        formatted_name = "GPT-5.2 (medium)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.2",
            },
            ["reasoning.effort"] = {
                order = 2,
                mapping = "parameters",
                type = "string",
                optional = true,
                default = "medium",
                choices = {
                    "xhigh",
                    "high",
                    "medium",
                    "low",
                    "medium",
                },

            },
        },
    })
end

M.gpt52high = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.2-high",
        formatted_name = "GPT-5.2 (high)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.2",
            },
            ["reasoning.effort"] = {
                order = 2,
                mapping = "parameters",
                type = "string",
                optional = true,
                default = "high",
                choices = {
                    "xhigh",
                    "high",
                    "medium",
                    "low",
                    "none",
                },

            },
        },
    })
end

M.gpt52xhigh = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.2-xhigh",
        formatted_name = "GPT-5.2 (xhigh)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.2",
            },
            ["reasoning.effort"] = {
                order = 2,
                mapping = "parameters",
                type = "string",
                optional = true,
                default = "xhigh",
                choices = {
                    "xhigh",
                    "high",
                    "medium",
                    "low",
                    "none",
                },

            },
        },
    })
end

M.gpt52pronone = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.2-pro-none",
        formatted_name = "GPT-5.2 Pro (none)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.2-pro",
            },
            ["reasoning.effort"] = {
                order = 2,
                mapping = "parameters",
                type = "string",
                optional = true,
                default = "none",
                choices = {
                    "xhigh",
                    "high",
                    "medium",
                    "low",
                    "none",
                },

            },
        },
    })
end

M.gpt52prolow = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.2-pro-low",
        formatted_name = "GPT-5.2 Pro (low)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.2-pro",
            },
            ["reasoning.effort"] = {
                order = 2,
                mapping = "parameters",
                type = "string",
                optional = true,
                default = "low",
                choices = {
                    "xhigh",
                    "high",
                    "medium",
                    "low",
                    "none",
                },

            },
        },
    })
end

M.gpt52promedium = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.2-pro-medium",
        formatted_name = "GPT-5.2 Pro (medium)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.2-pro",
            },
            ["reasoning.effort"] = {
                order = 2,
                mapping = "parameters",
                type = "string",
                optional = true,
                default = "medium",
                choices = {
                    "xhigh",
                    "high",
                    "medium",
                    "low",
                    "medium",
                },

            },
        },
    })
end

M.gpt52prohigh = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.2-pro-high",
        formatted_name = "GPT-5.2 Pro (high)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.2-pro",
            },
            ["reasoning.effort"] = {
                order = 2,
                mapping = "parameters",
                type = "string",
                optional = true,
                default = "high",
                choices = {
                    "xhigh",
                    "high",
                    "medium",
                    "low",
                    "none",
                },

            },
        },
    })
end

M.gpt52proxhigh = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.2-pro-xhigh",
        formatted_name = "GPT-5.2 Pro (xhigh)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.2-pro",
            },
            ["reasoning.effort"] = {
                order = 2,
                mapping = "parameters",
                type = "string",
                optional = true,
                default = "xhigh",
                choices = {
                    "xhigh",
                    "high",
                    "medium",
                    "low",
                    "none",
                },

            },
        },
    })
end

M.gpt52chat = function()
    return require("codecompanion.adapters").extend("openai", {
        name = "gpt-5.2-chat",
        formatted_name = "GPT-5.2 Chat",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.2-chat-latest",
            },
        },
    })
end

M.claudesonnet45 = function()
    return require("codecompanion.adapters").extend("anthropic", {
        name = "claude-sonnet-4.5",
        formatted_name = "Claude Sonnet 4.5",
        env = {
            api_key = api_keys.anthropic,
        },
        schema = {
            model = {
                default = "claude-sonnet-4-5-20250929",
            },
        },
    })
end

M.claudehaiku45 = function()
    return require("codecompanion.adapters").extend("anthropic", {
        name = "claude-haiku-4.5",
        formatted_name = "Claude Haiku 4.5",
        env = {
            api_key = api_keys.anthropic,
        },
        schema = {
            model = {
                default = "claude-haiku-4-5-20251001",
            },
        },
    })
end

M.claudeopus45 = function()
    return require("codecompanion.adapters").extend("anthropic", {
        name = "claude-opus-4.5",
        formatted_name = "Claude Opus 4.5",
        env = {
            api_key = api_keys.anthropic,
        },
        schema = {
            model = {
                default = "claude-opus-4-5-20251101",
            },
        },
    })
end

M.minimaxm21 = function()
    return require("codecompanion.adapters").extend("openai_compatible", {
        name = "minimax-m2.1",
        formatted_name = "MiniMax M2.1",
        env = {
            url = "https://openrouter.ai/api",
            api_key = api_keys.openrouter,
            chat_url = "/v1/chat/completions",
        },
        schema = {
            model = {
                default = "minimax/minimax-m2.1",
            },
        },
    })
end

M.gemini3propreview = function()
    return require("codecompanion.adapters").extend("openai_compatible", {
        name = "gemini-3-pro-preview",
        formatted_name = "Gemini 3 Pro Preview",
        env = {
            url = "https://openrouter.ai/api",
            api_key = api_keys.openrouter,
            chat_url = "/v1/chat/completions",
        },
        schema = {
            model = {
                default = "google/gemini-3-pro-preview",
            },
        },
    })
end

M.nanobananapro = function()
    return require("codecompanion.adapters").extend("openai_compatible", {
        name = "nano-banana-pro",
        formatted_name = "Nano Banana Pro",
        env = {
            url = "https://openrouter.ai/api",
            api_key = api_keys.openrouter,
            chat_url = "/v1/chat/completions",
        },
        schema = {
            model = {
                default = "google/gemini-3-pro-image-preview",
            },
        },
    })
end

M.gemini3flashpreview = function()
    return require("codecompanion.adapters").extend("openai_compatible", {
        name = "gemini-3-flash-preview",
        formatted_name = "Gemini 3 Flash Preview",
        env = {
            url = "https://openrouter.ai/api",
            api_key = api_keys.openrouter,
            chat_url = "/v1/chat/completions",
        },
        schema = {
            model = {
                default = "google/gemini-3-flash-preview",
            },
        },
    })
end

M.grok41fast = function()
    return require("codecompanion.adapters").extend("openai_compatible", {
        name = "grok-4.1-fast",
        formatted_name = "Grok 4.1 Fast",
        env = {
            url = "https://openrouter.ai/api",
            api_key = api_keys.openrouter,
            chat_url = "/v1/chat/completions",
        },
        schema = {
            model = {
                default = "x-ai/grok-4.1-fast",
            },
        },
    })
end

M.perplexity = function()
    return require("codecompanion.adapters").extend("openai_compatible", {
        name = "perplexity",
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

M.tavily = function()
    return require("codecompanion.adapters").extend("tavily", {
        env = {
            api_key = api_keys.tavily,
        },
    })
end

return M
