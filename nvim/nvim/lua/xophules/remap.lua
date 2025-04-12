vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- C-p: FZF find files
vim.keymap.set("n", "<C-p>", "<cmd>Files<CR>")
-- C-g: FZF ('g'rep)/find in files
vim.keymap.set("n", "<C-g>", "<cmd>Rg<CR>")
