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
Plug 'mkitt/tabline.vim'
" Colors
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim', { 'as': 'dracula' }
""""""""""""""""""
" Initialize plugin system
call plug#end()

" Color settings
syntax enable
set background=light
color solarized
"color dracula

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
let g:tablineclosebutton=1

" airline settings
let g:airline_theme = 'solarized'
"let g:airline_powerline_fonts = 1 "adds arrows as separators
let g:airline#extensions#branch#enabled = 1 
let g:airline_left_sep = ' 🕱 '
let g:airline_right_sep = ' ❤ '
let g:airline_section_warning = '' 
let g:airline_section_y = '' 
let g:airline_section_x = '' 
set laststatus=2 " for airline
let g:tablineclosebutton=1

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

set noruler
set noshowmode
