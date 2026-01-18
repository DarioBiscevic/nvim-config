exitTerm = function()
  vim.cmd(":ToggleTerm");
end

vim.keymap.set("t", "<M-t>", exitTerm)
vim.keymap.set("n", "<M-t>", ":ToggleTerm direction=float<CR>")

return {
	'akinsho/toggleterm.nvim', version = "*", config = true
}
