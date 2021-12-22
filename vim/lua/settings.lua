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

--python_highlight_all = 1
g.python3_host_prog='/usr/local/bin/python3'
g['deoplete#enable_at_startup'] = 1
opt.completeopt = 'menu,menuone,noselect'

--g.Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

------------------------------------------------
-- STARTUP
------------------------------------------------
--
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)


local lspconfig = require('lspconfig')

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'pyright' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end

require('lualine').setup{}
require('bufferline').setup()
require('nvim-tree').setup{
  view={
    width=30,
    side='left',
    auto_resize=false
  }
}
require'lspconfig'.pyright.setup{}
local cmp = require('cmp')

cmp.setup{
  mapping={
    ['<CR>'] = cmp.mapping.confirm({ select = true })
  },
  sources=cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'buffer' },
      { name = 'path' }
  })
}

cmd('autocmd FileType python,c,cpp TagbarOpen')
