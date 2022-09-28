local set = vim.opt

set.expandtab = true
set.smarttab = true
set.shiftwidth = 2
set.tabstop = 2

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.autoindent = true
set.smartindent = true
set.title = true
set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 10
set.encoding = 'utf-8'
vim.scriptencoding = 'utf-8'
set.fileencoding = 'utf-8'
set.termguicolors = true
set.breakindent = true
set.wildignore:append { '*/node_modules/*' }

set.relativenumber = true
set.cursorline = true

set.hidden = true

vim.opt.formatoptions:append { 'r' }

vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'
