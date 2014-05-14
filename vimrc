" Liran's Vim configuration file
set nocompatible
colorscheme zenburn
filetype plugin indent on
syntax enable                       " Syntax highlighting

" --------------------------------------------------
" ----------------- Vundle config ------------------
" --------------------------------------------------
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" File explorer within Vim
Bundle 'scrooloose/nerdtree'

Bundle 'ervandew/supertab'

" Colorschemes
Bundle 'jnurmine/Zenburn'
Bundle 'sickill/vim-monokai'

" --------------------------------------------------

" Stay in visual mode while shifting indent
vnoremap < <gv 
vnoremap > >gv 
"vnoremap <Space> I<Space><Esc>gv

" Easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Force saving files that require root permission
cmap w!! %!sudo tee > /dev/null %

" Undo and redo in insert mode
inoremap <C-u> <C-o>u
inoremap <C-y> <C-o><C-R>

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" Code folding
set foldmethod=syntax               " Fold based on syntax
set nofoldenable                    " Don't fold by default
nnoremap <Space> za                 " Space to toggle folds
vnoremap <Space> za

" History settings
set history=700
set undolevels=700

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
noremap <F8> :set invrevins<CR>

set autoindent                      " Set automatic indentation
set shiftround
set autoread                        " Refresh buffer if file has been changed externally
set backspace=indent,eol,start
set cursorline                      " Highlight cursor line
set encoding=utf8
set expandtab                       " Use spaces instead of tabs
set hidden
set hlsearch                        " Highlight search keyword
set ignorecase                      " Make search case-insensitive
set incsearch                       " Search as you type
set laststatus=2
set mouse=a
set number                          " Show line numbers
set ruler                           " Current cursor position in lower right corner
set scrolloff=5                     " Keep at least 5 lines below the cursor
set shiftwidth=4
set showcmd                         " Show incomplete commands
set showmatch                       " Show matching [] and {}
set smartcase
set smarttab
set softtabstop=4
set t_Co=256                        " Enable 256-color mode
set tabstop=4
set noswapfile
set wildmenu
set colorcolumn=80
set nowrap
hi ColorColumn ctermbg=darkgrey
