" Liran's Vim configuration file
set nocompatible
colorscheme zenburn
syntax enable						" Syntax highlighting

" --------------------------------------------------
" ----------------- Vundle config ------------------
" --------------------------------------------------
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" File explorer within Vim
Plugin 'scrooloose/nerdtree'

"Plugin 'ervandew/supertab'

Plugin 'kien/ctrlp.vim'

Plugin 'scrooloose/syntastic'

Plugin 'Valloric/YouCompleteMe'

" Git support
Plugin 'tpope/vim-fugitive'

" Colorschemes
Plugin 'jnurmine/Zenburn'
Plugin 'sickill/vim-monokai'

" vim-javascript
Plugin 'pangloss/vim-javascript'

Plugin 'tpope/vim-surround'

call vundle#end()

" --------------------------------------------------

filetype plugin indent on

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"


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


" This lets escape clear the search highlights
map <F4> :noh<CR>:<backspace>


" tabs
set noexpandtab						" Use tabs
set smarttab
set softtabstop=4
set tabstop=4

" indenting
set autoindent						" Set automatic indentation
set smartindent



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
set noswapfile
set wildmenu
set colorcolumn=100
set nowrap
set t_ut=							" Disable Background Color Erase for working with tmux
hi ColorColumn ctermbg=darkgrey

