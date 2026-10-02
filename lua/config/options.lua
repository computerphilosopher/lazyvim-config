-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.opt.wrap = true

-- Keep the .NET SDK available to Neovim even when launched outside a shell.
local dotnet_root = vim.fn.expand("~/.local/share/dotnet")
vim.env.DOTNET_ROOT = dotnet_root
vim.env.PATH = dotnet_root .. ":" .. vim.env.PATH
