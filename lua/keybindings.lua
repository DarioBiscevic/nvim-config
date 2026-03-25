-- Tabs
vim.keymap.set('n', '<A-h>', '<Cmd>BufferPrevious<CR>', opts)
vim.keymap.set('n', '<A-l>', '<Cmd>BufferNext<CR>', opts)
vim.keymap.set('n', '<A-H>', '<Cmd>BufferMovePrevious<CR>', opts)
vim.keymap.set('n', '<A-L>', '<Cmd>BufferMoveNext<CR>', opts)
vim.keymap.set('n', '<A-w>', '<Cmd>BufferClose<CR>', opts)
vim.keymap.set('n', '<A-W>', '<Cmd>BufferRestore<CR>', opts)

-- Lsp
vim.keymap.set('n', '<A-i>', '<Cmd>LspClangdShowSymbolInfo<CR>', opts)

-- Sidebar navigation
vim.keymap.set("n", "<M-E>", ":NvimTreeToggle<CR>")

vim.keymap.set('n', '<M-e>', function()
  if vim.fn.bufname():match 'NvimTree_' then
    vim.cmd.wincmd 'p'
  else
    vim.cmd('NvimTreeFocus')
  end
end, { desc = 'nvim-tree: toggle' })

vim.keymap.set('n', '<M-q>', function()
    vim.cmd('NvimTreeClose')
    vim.cmd('exit')   
end, {})      

local autocmds = vim.api.nvim_create_autocmd
local auto_group_exit = vim.api.nvim_create_augroup("ExitCommands", { clear = true })

autocmds("VimLeavePre", {
    pattern = "*",
    command = "NvimTreeClose",
    group = auto_group_exit,
})

-- Terminal
exitTerm = function()
  vim.cmd(":ToggleTerm");
end

vim.keymap.set("t", "<M-t>", exitTerm)
vim.keymap.set("n", "<M-t>", ":ToggleTerm direction=float<CR>")
