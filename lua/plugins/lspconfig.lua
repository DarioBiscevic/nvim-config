vim.diagnostic.config({ virtual_text = true })

local opts = { noremap = true, silent = true }

vim.lsp.enable('clangd')
vim.lsp.enable('cmake')
vim.lsp.enable('ansiblels')

return {
    "neovim/nvim-lspconfig",
}
