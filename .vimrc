execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible
set modelines=0

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set scrolloff=3
set encoding=utf-8
set showmode
set showcmd
" set hidden allows there to be multiple files open but hidden
set hidden
set wildmenu
set wildmode=list:longest,full
set visualbell
set cursorline
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set ruler
set relativenumber
set undofile
set omnifunc=syntaxcomplete#Complete
" Enable mouse scrolling and other functionality
set mouse=a
" Set font for MacVim
set guifont=Menlo\ for\ Powerline:h13
" Always show airline statusbar
set laststatus=2

" This has something to do with regex searching
nnoremap / /\v
vnoremap / /\v
set incsearch
set showmatch
set hlsearch
" By default, <leader> is \
nnoremap <leader><space> :noh<cr>

set nowrap
set wrapmargin=0
set textwidth=0
set linebreak
set formatoptions=qrn1
set colorcolumn=105

nnoremap j gj
nnoremap k gk

colorscheme monokai
" Do not let the colorscheme override background transparency:
hi Normal ctermbg=none
hi NonText ctermbg=none
hi LineNr ctermbg=none

" Open/close NERDTree tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" Make NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1
" When NERDTree sets root directory, also make it the CWD
let g:NERDTreeChDirMode = 2
" Show line numbers in the NERDTree
let g:NERDTreeShowLineNumbers = 1

" CtrlP search should use CWD as root
let g:ctrlp_working_path_mode = 'rw'

" easytags stuff
" Where to look for tag files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" tagbar settings
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>

" Settings for delimitMate
let delimitMate_expand_cr = 1
augroup mydelimitMate
    au!
    au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
    au FileType tex let b:delimitMate_quotes = ""
    au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
    au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" vim-better-whitespace custom settings
" Toggle whitespace highlighting with \w
nmap <silent> <leader>w :ToggleWhitespace<CR>

" Settings for vim-javascript
let javascript_enable_domhtmlcss = 1

" code folding
set foldmethod=indent
set foldnestmax=10
" don't fold by default
set nofoldenable

" Custom commands
"
" \s resets the syntax highlighting when it goes bad
nnoremap <silent> <leader>s :syntax sync fromstart<CR>
