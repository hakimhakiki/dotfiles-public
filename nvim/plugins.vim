call plug#begin('~/.config/nvim/plugged')

" Gruvbox theme
Plug 'morhetz/gruvbox'

" Customizable line with lua
Plug 'nvim-lualine/lualine.nvim'

" Treesitter for nvim
" Plug 'nvim-treesitter/nvim-treesitter'

" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

" IDE like file tree
Plug 'kyazdani42/nvim-tree.lua'

" Nvim native LSP
Plug 'neovim/nvim-lspconfig'

" Autocomplete cmp for LSP
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
"Plug 'onsails/lspkind-nvim'

" Vim dashboard / greeting
Plug 'goolord/alpha-nvim'

call plug#end()




