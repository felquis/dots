set number
set mouse=a
set nowrap
set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

:au FocusLost * :set number
:au FocusGained * :set relativenumber

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'mattn/emmet-vim'
Plug 'bronson/vim-trailing-whitespace'

call plug#end()


