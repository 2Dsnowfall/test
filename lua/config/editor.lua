vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.scrolloff = 8

-- tabs
vim.opt.tabstop = 2 --changes the number of columns in a tab
vim.opt.softtabstop = 2 --changes the number of columns in a tab
vim.opt.shiftwidth = 2 --the number of columns for indented code
vim.opt.expandtab = true --insert multiple spaces instead of acutla tabs
vim.opt.autoindent = true --uses the same indentation when adding a new line(`o`)

-- search
vim.opt.ignorecase = true --case insensitive search, matches all
vim.opt.smartcase = true --matches all until query contains capitals
vim.opt.hlsearch = true --hilights all matches
vim.opt.incsearch = true --shows matches as the query is typed

-- text wrapping
vim.opt.wrap = false

-- cursor and movement
vim.opt.scrolloff = 6
vim.opt.cursorline = true

-- window split behavior
vim.opt.splitbelow = true -- new window opens below
vim.opt.splitright = true -- new window opens right

-- icons and visual help
vim.opt.signcolumn = "yes"
vim.opt.list = true
vim.opt.listchars = {
  tab = "» ",
  trail = "·",
  nbsp = "␣",
}

-- clipboard and mouse
vim.opt.clipboard = ''
vim.opt.mouse = ''

-- system
vim.opt.undofile = true
vim.opt.updatetime = 250
vim.opt.termguicolors = true

-- native completion
vim.o.completeopt = ""
