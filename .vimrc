
" __  ___  __   __   _______   ______           ____    ____  __   ___  ___
"|  |/  / |  \ |  | |   __  \ |   _  \          \   \  /   / |  | |   \/   |
"|  '  /  |   \|  | |  |  |  ||  |_)  |  ______  \   \/   /  |  | |  \  /  |
"|    <   |  . `  | |  |  |  ||      /  |______|  \      /   |  | |  |\/|  |
"|  .  \  |  |\   | |  |__|  ||  |\  \             \    /    |  | |  |  |  |
"|__|\__\ |__| \__| |_______/ |__| \__|             \__/     |__| |__|  |__|
"Release 1.1
"ortep-vim fork by PowerTeddy
"custom vim config using vim-plug

syntax on
filetype plugin indent on

"sets tmux sessions to open on the right

set splitright

"Removing the follwing options is not recommended.

set nu
set relativenumber
set encoding=UTF-8
set smarttab
set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set re=0
set nowrap
set noswapfile
set incsearch
set scrolloff=8
set guicursor=

"These presets are only for colored terminal configs without the custom colrscheme.
"Removing this line shouldn't change anything.

:highlight Normal ctermbg=black ctermfg=white guibg=black guifg=white

"Plugins. Remove as you wish

call plug#begin()
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'preservim/nerdtree', { 'on': 'NERDTree' }
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'udalov/kotlin-vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
call plug#end()

"Hotkeys. Feel free to change them

nnoremap <c-n> :NERDTree<cr>
nnoremap <c-t> :vert term<cr>

"Aesthics. Check the vim-airline-themes repo for more themes for the bottom bar

let g:airline_theme='understated'

set clipboard=unnamedplus "Linux

set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

let g:NERDTreeWinPos = "left"

colorscheme tokyonight

"Autostart. Make sure Startify is the first entry or else it won't start up.

autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   NERDTree
            \ |   wincmd w
