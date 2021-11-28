" THEMES ---------------------------------------------------------------------
set t_Co=256
set t_ut=
let g:lightline = {'colorscheme': 'dracula'}
colorscheme dracula

"let g:dracula_colorterm = 1
"let g:dracula_underline = 1
"let g:lightline = {'colorscheme': 'wombat'}

"colorscheme codedark

" Vim CUSTOMISATION-----------------------------------------------------------

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
set showtabline=2 						" Always display tab names at top
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


