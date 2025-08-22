" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype on

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on
 
" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Do not save backup files.
"set nobackup

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" Set the commands to save in history default number is 20.
set history=1000

" Cursor motion
"set scrolloff=3
" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
"set showmode
"set showcmd
" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
"set incsearch
"set ignorecase
"set smartcase
"set showmatch
map <leader><space> :let @/=''<cr> " clear search

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Remap Function Keys
" Remap F9 to toggle paste mode
nnoremap <F9> :set paste!<CR>
" Remap F12 to toggle line number
nnoremap <F12> :set nonumber!<CR>

" Remap for custom commands
" Edit vimrc configuration file
" Press Esc followed by confe to edit ~/.vimrc file
nnoremap confe :e $MYVIMRC<CR>
" Reload vimrc configuration file
" Press Esc followed by confr to reload ~/.vimrc file
nnoremap confr :source $MYVIMRC<CR>

" Write with sudo
nnoremap wsudo :w !sudo tee %<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" in ~/.vim/colors/ and uncomment:
" colorscheme solarized

" colorscheme torte
" colorscheme zaibatsu
"colorscheme evening

" Custom styles
hi clear CursorLine
"hi link CursorLine CursorColumn
"hi CursorLine term=none cterm=none ctermbg=3
hi CursorLine term=underline cterm=underline guibg=Grey40
"hi CursorLine cterm=underline ctermbg=none ctermfg=LightGrey guibg=darkred guifg=white
"hi CursorLineNr term=bold cterm=underline ctermfg=11 gui=bold guifg=Green
hi CursorLineNr term=bold cterm=underline ctermfg=14 gui=bold guifg=Green

"hi LineNr term=bold cterm=NONE ctermfg=DarkYellow ctermbg=Black gui=NONE guifg=DarkYellow guibg=Black
"hi LineNr term=bold cterm=NONE ctermfg=Yellow ctermbg=Black gui=NONE guifg=Yellow guibg=Black
hi LineNr term=bold cterm=NONE ctermfg=magenta ctermbg=black gui=NONE guifg=NONE guibg=black
