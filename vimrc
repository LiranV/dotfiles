" Liran's VIM configuration file
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" VIM 256 colors
set t_Co=256

" Set theme
colorscheme zenburn

" Easier moving of code blocks
vnoremap < <gv " Better indentation
vnoremap > >gv " Better indentation

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" Current cursor position in lower right corner
set ruler

" Show line numbers
set number

" Syntax highlighting
syntax on

" Set automatic indentation
set autoindent
set smartindent

" Code folding
set foldmethod=syntax   "fold based on syntax
set nofoldenable        "dont fold by default

" Set tabs as 4 spaces
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4
"set shiftround
"set expandtab

" Show matching [] and {}
set showmatch

" Set title of window to file name
set title

" Prevent vim from emulating vi
set nocompatible

" History settings
set history=700
set undolevels=700

" Relative line numbering
" absolute when in insert mode / relative when in normal mode
function! NumberToggle()
  if(&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

:au FocusLost * :set number
:au FocusGained * :set relativenumber

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
"***********************************************************


" Enable C.Vim Plugin
filetype plugin on

" Space to toggle folds
nnoremap <Space> za
vnoremap <Space> za

" Display incomplete commands
set showcmd

" vundle
Bundle 'gmarik/vundle'
