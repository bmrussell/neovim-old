" ---------------------------------------------------------------------------- 
"  Resources
"  https://www.vimfromscratch.com/articles/vim-for-python/
"  For NeoVim see https://neovim.io/doc/user/nvim.html#nvim-from-vim
"
" OS SPECIFICS ---------------------------------------------------------------
"
" NVim Config lives on: echo stdpath('config')
" 
" 	$Env:APPDATA\..\Local\nvim\init.vim	(Windows)
" 	~/.config/nvim 						(Linux)
"
" On WSL install for linux and symlink to Windows folder. Otherwise plugins will contain ^M EOL chars
"	ln -s /mnt/c/Users/$USER/AppData/Local/nvim ~/.config/nvim
"
" On Ubuntu 18.04 use the PPA to install Neovim to get latest stable
" 	sudo add-apt-repository ppa:neovim-ppa/stable
"
" Python 3
"	python -m pip install --user --upgrade pynvim

let g:nvim_config_root = stdpath('config')

" Dependencies ---------------------------------------------------------------
" 
" 1. CURL
"	To install Vim Plug if not present
" 2. nodejs >= 10.12
"	For COC Plugin
" 3. COC Extensions
"	nvim -c 'CocInstall -sync coc-snippets coc-pairs coc-prettier coc-json coc-java coc-python coc-yaml|q'
" 
"

set encoding=utf-8

" Modularised configs----------------------------------------------------------

let g:vim_config_list = [
\  'plugins.vim'
\ ,'settings.vim'
\ ,'lsp-config.vim'
\ ]

for f in g:vim_config_list
    execute 'source ' . g:nvim_config_root . '/' . f
endfor


" LUA ---------------------------------------------------------------------
" npm i -g pyright vscode-json-languageserver-bin yaml-language-server
let g:lua_config_list = [
\  'compe-config.lua'
\ ,'lsp-languages.lua'
"\ ,''
"\ ,''
\ ]

for f in g:lua_config_list
	execute 'luafile ' . g:nvim_config_root . '\lua\' . f
endfor
