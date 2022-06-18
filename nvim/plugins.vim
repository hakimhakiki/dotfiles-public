call plug#begin('~/.config/nvim/plugged')

" Gruvbox theme
Plug 'morhetz/gruvbox'

" LSP for vanilla neovim
Plug 'neovim/nvim-lspconfig'
" Completition based on LSP
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" NVIM Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Customizable line with lua
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

" Vim dashboard / greeting
Plug 'goolord/alpha-nvim'

" Minimal and fast lua modules
" Plug 'echasnovski/mini.nvim', { 'branch': 'stable' }

call plug#end()




