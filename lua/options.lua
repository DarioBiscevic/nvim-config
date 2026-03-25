-- General Settings
vim.opt.showmatch = true          -- Show matching brackets
vim.opt.ignorecase = true         -- Case insensitive searching
vim.opt.hlsearch = true           -- Highlight search results
vim.opt.incsearch = true          -- Incremental search (show results while typing)
vim.opt.number = true             -- Show line numbers
vim.opt.cursorline = true         -- Highlight the current line
vim.opt.mouse = "a"               -- Enable mouse support (overrides your mouse=v)
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.wildmode = "longest,list" -- Bash-like tab completion

-- Tabs and Indentation
vim.opt.tabstop = 4               -- Number of columns occupied by a tab
vim.opt.softtabstop = 4           -- See multiple spaces as tabstops
vim.opt.expandtab = true          -- Convert tabs to spaces
vim.opt.shiftwidth = 4            -- Width for auto-indents
vim.opt.autoindent = true         -- Copy indent from current line when starting a new one

-- UI and Layout
vim.opt.colorcolumn = "128"       -- Vertical ruler at 128 characters
vim.opt.textwidth = 128
vim.o.number = true


