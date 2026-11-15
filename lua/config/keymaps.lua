-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"


--Map cut/copy/paste keybinds to clipboard(+) register
-- Visual mode
vim.keymap.set("v", "y", '"+y', { desc = "Copy highlighted to system clipboard" })
vim.keymap.set("v", "x", '"+x', { desc = "Copy highlighted to system clipboard" })

-- Normal mode
vim.keymap.set("n", "X", '"+x', { desc = "Copy highlighted to system clipboard" })
vim.keymap.set("n", "YY", '"+yy', { desc = "Copy  to system clipboard" })
vim.keymap.set("n", "DD", '"+dd', { desc = "Copy  to system clipboard" })
