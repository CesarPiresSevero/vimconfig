""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   

"
" This file was based on the freeCodeCamp example
"

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Change colorscheme and customize colors to match Manjaro's
let g:onedark_color_overrides = {
\ "background": {"gui": "#1c1c1c", "cterm": "234", "cterm16": "0" },
\ "foreground": {"gui": "#e4e4e4", "cterm": "254", "cterm16": "NONE" },
\ "green": {"gui": "#5faf00", "cterm": "70", "cterm16": "2" },
\ "red": {"gui": "#ff005f", "cterm": "197", "cterm16": "1" },
\ "dark_red": {"gui": "#af0000", "cterm": "124", "cterm16": "9" },
\ "blue": {"gui": "#0087d7", "cterm": "32", "cterm16": "4" },
\ "white": {"gui": "#e4e4e4", "cterm": "254", "cterm16": "15" },
\ "yellow": {"gui": "#ffd700", "cterm": "220", "cterm16": "11" },
\ "dark_yellow": {"gui": "#d7af00", "cterm": "178", "cterm16": "3" },
\ "purple": {"gui": "#af5fff", "cterm": "135", "cterm16": "5" },
\}
colorscheme onedark 

" Add numbers to each line on the left-hand side.
set number

" Change numbering to relative
set relativenumber

" Highlight cursor line underneath the cursor horizontally.
"set cursorline

" Highlight cursor line underneath the cursor vertically.
"set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

