local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<leader>t', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>gg', ':Telescope live_grep<CR>', opts)
map('n', 'gd', ':OmniSharpGotoDefinition<CR>', opts)
map("n", "<leader>gb", ":Telescope git_branches<CR>", opts)

map('n', "<S-l>", ":bnext<CR>", opts)
map('n', "<S-h>", ":bprevious<CR>", opts)

map("i", "jk", "<ESC>", opts)

map("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
map("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
