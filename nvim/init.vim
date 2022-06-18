
set nocompatible
runtime ./plugins.vim

filetype plugin indent on
syntax enable

set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
    \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
    \,sm:block-blinkwait175-blinkoff150-blinkon175
set number
set incsearch
set noshowmode
set showcmd
set shiftwidth=4
set tabstop=4
set expandtab
set wrap
set linebreak
set title
set clipboard=unnamedplus
set backspace=indent,eol,start
set complete+=kspell
set splitright
set splitbelow
set completeopt=menuone,noinsert,noselect
set cursorline
set foldmethod=marker
set path+=**
set wildignore+=*/node_modules/*
" Set variable below with your personal shell (bash, zsh, or fish)
set shell=fish

" Colorized
if exists("&termguicolors") && exists("&winblend")
    set termguicolors
    set winblend=0
    set wildoptions=pum
    set pumblend=5
    set background=dark
    colorscheme gruvbox

    " Uncomment this line below for background transperency
    "hi Normal guibg=NONE ctermbg=NONE
endif

" Wrap word helper keymap
nnoremap <Down> gj
nnoremap <Up> gk

" Move to window (on :split or :vsplit)
" A = Meta / Alternate
nnoremap <A-Left> <C-w>h
nnoremap <A-Right> <C-w>l
nnoremap <A-Up> <C-w>k
nnoremap <A-Down> <C-w>j

" keymap for popup
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


