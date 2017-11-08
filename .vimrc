call plug#begin()

Plug 'junegunn/vim-easy-align'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'mswift42/vim-themes'
Plug 'vim-syntastic/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'mxw/vim-jsx'
Plug 'roxma/nvim-completion-manager'
Plug 'othree/csscomplete.vim'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'

Plug 'Shougo/unite.vim'
Plug 'devjoe/vim-codequery'
Plug 'tpope/vim-dispatch'
Plug 'mileszs/ack.vim'
Plug 'vim-syntastic/syntastic'
Plug 'mbbill/undotree'
Plug 'bling/vim-bufferline'
Plug 'mhinz/vim-signify'
Plug 'majutsushi/tagbar'

" Better whitespace highlighting for Vim
Plug 'ntpeters/vim-better-whitespace'

" Dark powered asynchronous completion framework for neovim
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Asynchronous linting and make framework for Neovim/Vim
Plug 'neomake/neomake'

Plug 'terryma/vim-multiple-cursors'

call plug#end()

colorscheme ron

syntax on
filetype plugin indent on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn)|node_modules)$'
let g:ctrlp_max_height = 30

filetype plugin indent on

set expandtab
set tabstop=2
set shiftwidth=2

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:ackprg = 'ag --vimgrep'

set number

set ruler

map <C-Space> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

let g:jsx_ext_required = 0

" Folding with space
nnoremap <Space> za

" Resize Panels with Shift
nnoremap <S-down> <c-w>-
nnoremap <S-left> <c-w><
nnoremap <S-up> <c-w>+
nnoremap <S-right> <c-w>>

" Smart ignore case when searching
set ignorecase
set smartcase

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Allow me to navigate buffers without saving all the time
set hidden

" status bar airlines configs
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set foldmethod=indent
set foldlevelstart=50

set wildmenu

let javaScript_fold=0

set directory=$HOME/.vim/tmp//,.

set nowrap

set clipboard=unnamedplus

" Make neomake work
augroup neomake_save_linter
  autocmd!
  autocmd BufWritePost,BufReadPost * Neomake
augroup end

let g:neomake_place_signs = 1
let g:neomake_javascript_standard_maker = { 'errorformat': '%E %f:%l:%c: %m' }
let g:neomake_puppet_enabled_makers = ['puppet', 'puppetlint']

" Airline config
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'
let g:airline_section_warning = ''
let g:airline#extensions#tabline#enabled = 1

" let g:airline_left_sep=' 👩'
let g:airline_detect_paste=1
let g:airline_detect_spelllang=1

" Dont override my bg :)
hi Normal ctermbg=none

" 80 columns helper
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%79v.\+/                                                    

" Turn on JSX syntax for .js files
let g:jsx_ext_required = 0

" enable mouse usage
set mouse=a

" Reemap window changing
nnoremap <c-up> <c-w>k
nnoremap <c-left> <c-w>h
nnoremap <c-down> <c-w>j
nnoremap <c-right> <c-w>l

" Easier config reload
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :vsp $MYVIMRC<cr>

set inccommand=split
