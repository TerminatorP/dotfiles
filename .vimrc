" Vim Plug
call plug#begin('~/.vim/plugged')
" Plugins
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/indentpython.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ap/vim-buftabline'
" Colors
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jnurmine/zenburn'
Plug 'dikiaap/minimalist'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'kaicataldo/material.vim'
""""""""""""""""""
" Initialize plugin system
call plug#end()

" Color settings
if (has("termguicolors"))
  set termguicolors
endif
set t_Co=256
syntax enable
set background=dark
color material
" material
let g:material_theme_style='dark'
let g:material_terminal_italics = 1


" for python
let python_hilight_all=1
let g:indent_guides_enable_on_vim_startup = 1

" Settings
syntax on
set number " show number
set smartindent
set sw=2 " no of spaces when shift indenting
set ts=2 " no of visual spaces per tab
set softtabstop=2 " no of spaces in tab when editing 
set expandtab " convert tab to spaces
set splitbelow
set splitright
set cursorline " hilight current line
set clipboard=unnamed " us os clipboard
set noswapfile
set encoding=utf-8

" Leader remap
let mapleader=","

" ctrlp
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_show_hidden=1

" fonts
set guifont=Fira\ Code\ Medium\ 12

" disable bell
set belloff=all

" Remove the menu bar, tool bar and scroll bars in guiVim
set go-=m
set go-=T
set go-=r
set go-=e
set go-=R
set go-=l
set go-=L
set sessionoptions+=tabpages,globals
set cc=120
set wrap
nnoremap <leader>p "+p
vnoremap <leader>p "+p
" Intelligent searching
set smartcase
set incsearch " Incremental search
set hlsearch " Hilight search results

" NERDTree mappings
map <Leader>n :NERDTreeToggle<CR>
" NERDTree on current directory
map <Leader>cd :NERDTreeToggle %<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinSize=20

" airline settings
let g:airline_theme = 'material'
let g:airline#extensions#branch#enabled = 1 
let g:airline_left_sep = ' 🕱 '
let g:airline_right_sep = ' ❤ '
let g:airline_section_warning = '' 
let g:airline_section_y = '' 
set laststatus=2 " for airline

" some more mappings

nnoremap <C-s> :w<cr>
vnoremap <C-s> :w<cr>
inoremap <C-s> <esc>:w<cr>

" ctrl-p plugin shortcut
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" move between buffers
map <C-Left> <Esc>:bprev<CR>
map <C-Right> <Esc>:bnext<CR>

" move lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" switch to left / right split (mostly for Nerd Tree)
map <C-h> <C-W>h
map <C-l> <C-W>l

" vim config reload and find
nnoremap <M-r> :source ~/.vimrc<CR>
nnoremap <M-f> :e ~/.vimrc<CR>

" cd to current file directory
nnoremap <leader>gh :cd %:p:h<CR>:pwd<CR>

" run python code
nnoremap <leader>rp :! python %<CR>

set noruler
set noshowmode
