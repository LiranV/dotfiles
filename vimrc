" Liran's Vim configuration file
set nocompatible
colorscheme zenburn
syntax enable						" Syntax highlighting

" --------------------------------------------------
" -------------------- Plugins ---------------------
" --------------------------------------------------
filetype off

call plug#begin('~/.vim/plugged')

" Appearence
Plug 'jnurmine/Zenburn'
Plug 'sickill/vim-monokai'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

" Development
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive' " Git support
Plug 'mattn/emmet-vim' " Quick HTML/CSS coding
Plug 'tpope/vim-surround'
Plug 'nvie/vim-flake8'
Plug 'hynek/vim-python-pep8-indent'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

call plug#end()

" --------------------------------------------------

filetype plugin indent on

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_python_binary_path = '/usr/bin/python3'
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" vim-jsx
let g:jsx_ext_required = 0

" syntastic config
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" Tagbar
nmap <F8> :TagbarToggle<CR>

" enable doxygen syntax highlighting
let g:load_doxygen_syntax=1

" Stay in visual mode while shifting indent
vnoremap < <gv
vnoremap > >gv
"vnoremap <Space> I<Space><Esc>gv


" Easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Fix keycodes for HOME and END
map OH <Home>
map OF <End>
imap OH <Home>
imap OF <End>


" Force saving files that require root permission
cmap w!! %!sudo tee > /dev/null %

" toggle NerdTree
map <F3> :NERDTreeToggle<CR>

" Undo and redo in insert mode
inoremap <C-u> <C-o>u
inoremap <C-y> <C-o><C-R>


" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %


" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed


" Code folding
set foldmethod=syntax				" Fold based on syntax
set nofoldenable					" Don't fold by default
nnoremap <Space> za					" Space to toggle folds
vnoremap <Space> za


" History settings
set history=1000
set undolevels=1000


" For :W errors
command! W w
command! Wq wq
command! WQ wq
command! Q q


" Better scrolling
noremap <C-Y> 5<C-Y>
noremap <C-E> 5<C-E>


" RTL support
noremap <F9> :set invrl<CR>
noremap <F10> :set invrevins<CR>


" This lets escape clear the search highlights
map <F4> :noh<CR>:<backspace>

" Format JSON
com! FormatJSON %!python -m json.tool

" Store all swap files here
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set undodir=~/.vim/tmp
set viewdir=~/.vim/tmp

" tabs
set noexpandtab						" Use tabs
set smarttab
set softtabstop=4
set tabstop=4

" indenting
set autoindent						" Set automatic indentation
set smartindent



set backupcopy=yes
set shiftround
set autoread						" Refresh buffer if file has been changed externally
set backspace=indent,eol,start
set cursorline						" Highlight cursor line
set encoding=utf8
set hidden
set hlsearch						" Highlight search keyword
set ignorecase						" Make search case-insensitive
set incsearch						" Search as you type
set laststatus=2
set mouse=a
set number							" Show line numbers
set ruler							" Current cursor position in lower right corner
set scrolloff=5						" Keep at least 5 lines below the cursor
set shiftwidth=4
set showcmd							" Show incomplete commands
set showmatch						" Show matching [] and {}
set smartcase
set t_Co=256						" Enable 256-color mode
set wildmenu
set colorcolumn=100
set nowrap
set t_ut=							" Disable Background Color Erase for working with tmux
hi ColorColumn ctermbg=darkgrey

