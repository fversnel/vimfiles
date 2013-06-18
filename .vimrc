execute pathogen#infect()

set nocompatible      " We are not compatible with the old Vi
set autoread          " Watch for file changes by other programs
set autowrite         " Auto write when switching buffer
set ruler             " Show line number and column on the right bottom of the screen
set smartindent
set autoindent
"set nowrap            " Turn off word wrapping
set scrolloff=3       " Have n lines of offset when scrolling
set sidescroll=10     " Scroll vertically with n characters
set number            " Show line numbers
set expandtab         " Spaces instead of tabs
set tabstop=4         " Tabs are n characters long
set shiftwidth=4
set textwidth=100     " Maximum width of a line
set incsearch         " Search for text as you enter it
set history=1000      " Remember the last n commands
set ignorecase        " These two options (ignorecase, smartcase), when set together, will make /-style searches
set smartcase         " case-sensitive only if there is a capital letter in the search expression.
                      " *-style searches continue to be consistently case-sensitive.
set winminheight=0    " Set the minimum window height
set title             " Set the title of the window
set dir=~/.vim/swapdir " Set a directory to store swap files.
set undofile
set undodir=~/.vim/undodir
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload
set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files
syntax on             " Turn on syntax highlighting automatically
filetype plugin indent on    " Load filetype specific settings (in ~/.vim/ftplugin)
set formatprg=par\ -w100 " Sophisticated wrapping algorithm
colors github

" Disable help
nmap <F1> <nop>

" Window movement
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

" Firefox-like tab opening
map <C-T> :tabnew<CR>

" Easily open a new file with the Find function.
map <C-N> :CommandT<CR>

" File browser
map <C-M> :NERDTreeToggle<CR>

" Clojure settings
autocmd BufRead,BufNewFile *.clj :set expandtab
autocmd BufRead,BufNewFile *.clj :set shiftwidth=2
autocmd BufRead,BufNewFile *.clj :set tabstop=2
autocmd BufRead,BufNewFile *.clj :set textwidth=78
autocmd BufRead,BufNewFile *.dtm,*.edn :setf clojure
" Highlight Clojure's builtins
let vimclojure#HighlightBuiltins=1 
" Rainbow parentheses'
"let vimclojure#ParenRainbow=1

" Gradle settings
autocmd BufRead,BufNewFile *.gradle :set filetype=groovy

" Javascript settings
autocmd BufRead,BufNewFile *.js :set shiftwidth=2
autocmd BufRead,BufNewFile *.js :set tabstop=2

" Fsharp settings
autocmd BufRead,BufNewFile *.fs,*.fsx :set expandtab
autocmd BufRead,BufNewFile *.fs,*.fsx :set shiftwidth=4
autocmd BufRead,BufNewFile *.fs,*.fsx :set tabstop=4
