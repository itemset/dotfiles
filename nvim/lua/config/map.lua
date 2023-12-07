vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.NERDTree)

-- Resize splits with arrow keys
vim.api.nvim_set_keymap('n', '<Up>',    ':resize +2<CR>',          { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>',  ':resize -2<CR>',          { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>',  ':vertical resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', ':vertical resize +2<CR>', { noremap = true, silent = true })

-- Vim command change
vim.api.nvim_set_keymap("n", "dl", "d$", { noremap = true, silent = true })

