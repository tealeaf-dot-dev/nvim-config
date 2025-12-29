# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal Neovim configuration written in Lua, using the lazy.nvim plugin manager. The configuration is structured with a modular architecture separating core functionality, plugin definitions, and plugin configurations.

## Architecture

### Initialization Flow

The entry point is `init.lua`, which loads modules in this order:
1. `core.bootstrap` - Installs lazy.nvim if not present
2. `core.keymaps` - Sets up all keybindings
3. `lazy.setup("plugins")` - Loads plugin definitions from `lua/plugins/`
4. `core.options` - Configures Vim options
5. `core.autocmds` - Sets up autocommands
6. `core.commands` - Defines custom user commands

### Directory Structure

- `lua/core/` - Core Neovim configuration (options, keymaps, autocmds, commands)
- `lua/core/functions/` - Utility functions for custom commands
- `lua/plugins/` - Plugin definitions and configurations
- `lua/plugins/config/` - Individual plugin configuration files
- `lua/plugins/config/codecompanion/` - CodeCompanion AI plugin configuration with custom adapters
- `lua/utils.lua` - Shared utility functions (keymapping helpers)
- `lua/secrets.lua` - API keys (gitignored, copy from `secrets-example.lua`)

### Plugin Configuration Pattern

Plugins are defined in `lua/plugins/init.lua` as a table. Each plugin entry includes:
- Plugin name/repository
- Optional lazy-loading configuration
- `config` function that calls the corresponding config file from `lua/plugins/config/`

Example:
```lua
{
    "plugin-author/plugin-name",
    config = function()
        require("plugins.config.plugin-name")()
    end,
}
```

### Secrets Management

API keys are stored in `lua/secrets.lua` (gitignored). To set up:
1. Copy `lua/secrets-example.lua` to `lua/secrets.lua`
2. Add API keys for: openai, anthropic, deepseek, hyperbolic, openrouter, perplexity

These keys are used by CodeCompanion AI adapters in `lua/plugins/config/codecompanion/api-keys.lua`.

## Key Conventions

### Keymaps

- Leader key: `,` (comma)
- Keymaps are defined in `lua/core/keymaps.lua` using the `utils.map()` helper
- Keymap pattern: `map(mode, lhs, rhs, description, opts)`
- Major keymap prefixes:
  - `<leader>a` - AI/CodeCompanion actions
  - `<leader>g` - Git operations
  - `<leader>i` - LSP/code intelligence
  - `<leader>f` - Find/search operations
  - `<space>` - Navigation (Hop plugin)

### CodeCompanion Adapters

Custom AI model adapters are defined in `lua/plugins/config/codecompanion/adapters.lua`. Each adapter:
- Extends a base adapter type (e.g., `openai_responses`, `anthropic`, `openai_compatible`)
- Defines model name and formatted display name
- Retrieves API keys from `secrets.lua` via `api_keys` module
- Configures model-specific parameters (e.g., `reasoning.effort` for OpenAI models)

When adding new models:
1. Create adapter function in `adapters.lua`
2. Register in `codecompanion.lua` under `adapters.http`
3. Reference API key from `api_keys` module

### LSP Configuration

LSP servers are managed via Mason:
- `lua/plugins/config/mason.lua` - Mason setup
- `lua/plugins/config/mason-lspconfig.lua` - Auto-installed servers: lua_ls, pyright, ts_ls, eslint
- Rust uses rustaceanvim plugin instead of standard LSP setup

### Live Configuration Reloading

The config auto-reloads when saving Lua files in `lua/` (see `lua/core/autocmds.lua`):
- Unloads the modified module from package cache
- Requires it again
- Calls `.setup()` if available
- Shows notification on success

## Custom Commands

- `:Cheatsheet` - Opens a cheatsheet for configuring Neovim with Lua
- `:Luaform <vimL command>` - Converts VimL config to Lua syntax (e.g., `:Luaform set tabstop=4`)

## Common Development Tasks

### Testing Configuration Changes

Run `nvim` to test changes. Lua config files auto-reload on save.

### Adding a New Plugin

1. Add plugin spec to `lua/plugins/init.lua`
2. Create config file in `lua/plugins/config/` if needed
3. Reference config in plugin spec's `config` function

### Adding a New LSP Server

Add server name to `ensure_installed` in `lua/plugins/config/mason-lspconfig.lua`.

### Modifying Keymaps

Edit `lua/core/keymaps.lua` and save. Changes apply immediately due to auto-reload.

### Adding New AI Models

1. Add adapter function to `lua/plugins/config/codecompanion/adapters.lua`
2. Register adapter in `lua/plugins/config/codecompanion/codecompanion.lua`
3. Ensure API key exists in `lua/secrets.lua`
