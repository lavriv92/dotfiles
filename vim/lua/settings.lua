local cmd = vim.cmd
local g = vim.g
local fn = vim.fn
local opt = vim.opt
local o = vim.o

-------------------------
-- STARTUP
-------------------------

cmd('filetype plugin indent on')
cmd('syntax enable')

-------------------------
-- EDITOR
-------------------------
opt.number = true
opt.ts = 2
opt.autoindent = true
opt.smartindent = true
opt.expandtab = true
opt.shiftwidth = 2
opt.list = true
opt.encoding = "utf-8"
o.wrap = false

cmd('setglobal "utf-8"')
cmd('au FileType python,java,rust setl et ts=4 sw=4')

-------------------------
-- UI
-------------------------
opt.termguicolors = true
opt.background = 'dark'
opt.fillchars = 'vert:|'
opt.mouse = 'a'

cmd('colorscheme dante')
cmd('highlight SignColumn guibg=none')
cmd('highlight VertSplit cterm=none gui=none')

------------------------------------------------
-- SEARCH
------------------------------------------------

opt.showmatch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hidden = true
opt.autowrite = true
opt.ttyfast = true
opt.scrolloff = 5

------------------------------------------------
-- VARIABLES
------------------------------------------------

g.python3_host_prog='/usr/local/bin/python3'
opt.completeopt = 'menu,menuone,noselect'

--g.Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

------------------------------------------------
-- STARTUP
------------------------------------------------

require('complection').setup()
require('workbranch').setup()

cmd('autocmd FileType python,c,cpp TagbarOpen')
