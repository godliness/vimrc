set encoding=utf-8
set nocompatible              " be iMproved, required
set backspace=indent,eol,start
filetype off                  " required
syntax on
set rnu
set nu
set maxmempattern=4000
set paste
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" highlight Pmenu ctermfg=15 ctermbg=4 guifg=#ffffff guibg=#000000

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append  to update or just
" :PluginSearch foo - searches for foo; append  to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append  to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" Go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
let g:go_test_timeout= '300s'
let g:go_metalinter_deadline = "100s"
" Go
" NerdTree
map <F7> :NERDTreeToggle<CR>
" NerdTree
"
" TagBar
nmap <F8> :TagbarToggle<CR>
" TagBar
"
" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
" YouCompleteMe
"
" Python
let g:pymode = 0
" Python
" CtrlP
let g:ctrlp_map = '<c-p>'
" CtrlP
" AirLine
let g:airline_powerline_fonts = 1
let g:airline_theme='simple'
let g:airline_extensions = ['branch', 'tabline']
" AirLine
