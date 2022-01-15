call plug#begin('~/.vim/plugged')
if has('nvim')
      Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
Plug 'preservim/nerdtree'
Plug 'fatih/vim-go'
Plug 'davidhalter/jedi'
Plug 'lifepillar/vim-gruvbox8'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'dracula/vim', { 'as': 'dracula'}
Plug 'sheerun/vim-polyglot'
Plug 'tmsvg/pear-tree'
Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'deoplete-plugins/deoplete-jedi'
call plug#end()

nnoremap JK :w<cr>
inoremap jk <Esc>
nnoremap QQ :wq<cr>
nnoremap RR :!python %<cr>
"NerdTree keybinds
nnoremap > :bnext<CR>
nnoremap < :bprev<CR>
let g:user_emmet_leader_key=','

" DEOPLETE KEYBINDS 
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" BRACKET CLOSING 
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O}}}])

let g:indentLine_defaultGroup = 'SpecialKey'
set guifont 'yosevka'
set guioptions-=m
set guioptions-=T
colorscheme gruvbox8_hard
set bg=dark
set number
set encoding=utf-8
set softtabstop=0
set wrap
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
set term=screen-256color
set breakindent
