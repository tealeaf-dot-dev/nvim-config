local api_keys = require("plugins.config.codecompanion.api-keys")
local M = {}

M.gpt51codexnone = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.1-codex-none",
        formatted_name = "GPT-5.1 Codex (none)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex",
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

M.gpt51codexlow = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.1-codex-low",
        formatted_name = "GPT-5.1 Codex (low)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex",
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

M.gpt51codexmedium = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.1-codex-medium",
        formatted_name = "GPT-5.1 Codex (medium)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex",
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

M.gpt51codexhigh = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.1-codex-high",
        formatted_name = "GPT-5.1 Codex (high)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex",
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

M.gpt51codexxhigh = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.1-codex-xhigh",
        formatted_name = "GPT-5.1 Codex (xhigh)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex",
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

M.gpt51codexmininone = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.1-codex-mini-none",
        formatted_name = "GPT-5.1 Codex Mini (none)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex-mini",
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

M.gpt51codexminilow = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.1-codex-mini-low",
        formatted_name = "GPT-5.1 Codex Mini (low)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex-mini",
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

M.gpt51codexminimedium = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.1-codex-mini-medium",
        formatted_name = "GPT-5.1 Codex Mini (medium)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex-mini",
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

M.gpt51codexminihigh = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.1-codex-mini-high",
        formatted_name = "GPT-5.1 Codex Mini (high)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex-mini",
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

M.gpt51codexminixhigh = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.1-codex-mini-xhigh",
        formatted_name = "GPT-5.1 Codex Mini (xhigh)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex-mini",
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

M.gpt51codexmaxnone = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.1-codex-max-none",
        formatted_name = "GPT-5.1 Codex Mini (none)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex-max",
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

M.gpt51codexmaxlow = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.1-codex-max-low",
        formatted_name = "GPT-5.1 Codex Mini (low)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex-max",
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

M.gpt51codexmaxmedium = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.1-codex-max-medium",
        formatted_name = "GPT-5.1 Codex Mini (medium)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex-max",
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

M.gpt51codexmaxhigh = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.1-codex-max-high",
        formatted_name = "GPT-5.1 Codex Mini (high)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex-max",
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

M.gpt51codexmaxxhigh = function()
    return require("codecompanion.adapters").extend("openai_responses", {
        name = "gpt-5.1-codex-max-xhigh",
        formatted_name = "GPT-5.1 Codex Mini (xhigh)",
        env = {
            api_key = api_keys.openai,
        },
        schema = {
            model = {
                default = "gpt-5.1-codex-max",
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

return M
