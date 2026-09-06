-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.g.clipboard = "unnamedplus"
-- vim.g.lazyvim_python_lsp = "pylsp"
-- vim.g.autoformat = false
vim.g.python3_host_prog = vim.fn.expand("$HOME/venvs/nvim/bin/python")

-- Headless VPS: no remote-plugin host installed for these; silence checkhealth.
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
