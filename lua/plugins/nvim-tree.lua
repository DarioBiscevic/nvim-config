--vim.keymap.set("n", "<M-e>", ":NvimTreeToggle<CR>")
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

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}
