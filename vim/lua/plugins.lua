vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    }
  }

  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use 'majutsushi/tagbar'
  use 'airblade/vim-gitgutter'
  use {
    'Shougo/deoplete.nvim',
    cmd=':UpdateRemotePlugins'
  }
  use 'roxma/nvim-yarp'
  use 'thaerkh/vim-indentguides'
  use 'roxma/vim-hug-neovim-rpc'
  use {
    'deoplete-plugins/deoplete-go',
    cmd='make'
  }
  use 'deoplete-plugins/deoplete-jedi'
  use 'deoplete-plugins/deoplete-docker'
  use {
    'nsf/gocode', 
    rtp='nvim',
    cmd='~/.config/nvim/plugged/gocode/nvim/symlink.sh'
  }
  use 'davidhalter/jedi-vim'
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-fugitive'
  use 'racer-rust/vim-racer'
  use 'fatih/vim-go'
  use 'Asheq/close-buffers.vim'
  use {
    'prettier/vim-prettier',
    cmd='yarn install',
  }
  use 'alvan/vim-closetag'
  use 'mattn/emmet-vim'
  use 'kchmck/vim-coffee-script'
  use 'mustache/vim-mustache-handlebars' 
  use 'ryanoasis/vim-devicons'
  use 'artur-shaik/vim-javacomplete2'
  use 'sheerun/vim-polyglot'
  use {
    'mg979/vim-visual-multi',
    branch='master'
  }
  use 'archSeer/elixir.nvim'
  use 'slashmili/alchemist.vim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'honza/vim-snippets'
  use 'psliwka/vim-smoothie'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'vim-scripts/dante.vim'
  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  }
end)
