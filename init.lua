require 'options'
require 'keybindings'
require 'config.lazy'

vim.lsp.config["clangd"] = {
  cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
}

vim.cmd("colorscheme gruvbox")
