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
set tabstop=2         " Tabs are n characters long
set shiftwidth=2
set textwidth=100     " Maximum width of a line
set incsearch         " Search for text as you enter it
set history=1000      " Remember the last n commands
set ignorecase        " These two options (ignorecase, smartcase), when set together, will make /-style searches
set smartcase         " case-sensitive only if there is a capital letter in the search expression.
                      " *-style searches continue to be consistently case-sensitive.
set winminheight=0    " Set the minimum window height
set title             " Set the title of the window
set dir=~/.vimswap   " Set a directory to store swap files.
syntax on             " Turn on syntax highlighting automatically
filetype plugin indent on    " Load filetype specific settings (in ~/.vim/ftplugin)
set formatprg=par\ -w100 " Sophisticated wrapping algorithm
colors github

" Window movement
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

" Firefox-like tab opening
map <C-T> :tabnew<CR>

" Easily open a new file with the Find function.
map <C-N> :CommandT<CR>

" File browser
map <C-M> :NERDTree<CR>

" Function to clean up whitespace
nnoremap <silent> <F3> :call <SID>StripTrailingWhitespaces()<CR>
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" Clojure settings
autocmd BufRead,BufNewFile *.cjl :set expandtab
autocmd BufRead,BufNewFile *.cjl :set shiftwidth=2
autocmd BufRead,BufNewFile *.cjl :set tabstop=2
autocmd BufRead,BufNewFile *.cjl :set textwidth=78
" Highlight Clojure's builtins
"let vimclojure#HighlightBuiltins=1 
" Rainbow parentheses'
"let vimclojure#ParenRainbow=1

" Fsharp settings
autocmd BufRead,BufNewFile *.fs,*.fsx :set expandtab
autocmd BufRead,BufNewFile *.fs,*.fsx :set shiftwidth=4
autocmd BufRead,BufNewFile *.fs,*.fsx :set tabstop=4

" Automatically clean whitespace on these files:
autocmd BufWritePre *.java,*.rb,*.r,*.py,*.cjl,*.fs,*.fsx :call <SID>StripTrailingWhitespaces()
