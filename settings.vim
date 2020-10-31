" Settings ----------------------------------------------------------------

set nocompatible						" Don't care about vi
syntax on								" Turn on syntax highlighting.
set shortmess+=I						" Disable startup message
set number								" Show relative line numbers
set relativenumber
set backspace=indent,eol,start			" Fix backspace over anything
set hidden								" Enable hidden buffers
set ignorecase							" Makes search case-insensitive 
set smartcase							" except if it has any capital letters
set incsearch							" Incremental searching
set tabstop=4							" Sane tabsizes
set shiftwidth=4
set foldmethod=indent					" Folding
set foldlevel=99

au BufNewFile,BufRead *.py				" Python PEP8 Indentation
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css " Web indentation
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2



set noerrorbells visualbell t_vb=		" Disable audible bell because it's annoying.
set mouse+=a							" Enable mouse support
set nowrap								" Turn off screen wrap

" ----------------------------------------------------------------------------
" Set file browser to search subfolders, ignoring a gazillion node files
set path+=**
set wildignore+=**/node_modules/**
set wildmenu
filetype plugin on


										" Change directory to opened file. Prevents NerdTree opening in system32 on windows
										" https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
set autochdir
autocmd BufEnter *lcd %:p:h
