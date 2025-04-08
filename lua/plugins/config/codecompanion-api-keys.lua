local api_keys = {
    openai = "",
    anthropic = "",
    deepseek = "",
    hyperbolic = "",
    openrouter = "",
    perplexity = "",
}

local ok, secrets = pcall(require, "secrets")
local notify = require("notify")

if ok then
    for k, v in pairs(secrets.api_keys) do
        api_keys[k] = v
    end
else
    notify("Secrets file not found. Some features may not work.", vim.log.levels.WARN, {
        title = "CodeCompanion",
        timeout = 3000,
    })
end

return api_keys
