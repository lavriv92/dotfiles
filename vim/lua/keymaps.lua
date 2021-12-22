local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

map('n', '<C-p>', ':Telescope find_files<CR>', default_opts)
map('n', '<C-b>', ':NvimTreeToggle<CR>', default_opts)
