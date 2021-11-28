" PLUGINS---------------------------------------------------------------------

let g:PLUGVIM = stdpath('config') . '/autoload/plug.vim'
if empty(glob(g:PLUGVIM))
	let g:CURLCMD = 'curl -fLo ' . g:PLUGVIM . ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	execute "!" . g:CURLCMD
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(g:nvim_config_root . '/plugged')

" --- Active ------------------------------------------------------------------------------------------
Plug 'tomasiser/vim-code-dark'							" Vscode Theme https://github.com/tomasiser/vim-code-dark
Plug 'dracula/vim', { 'as': 'dracula' }					" Dracula Theme https://github.com/dracula/vim
Plug 'itchyny/lightline.vim'							" Posh Statusline https://github.com/itchyny/lightline.vim
Plug 'preservim/nerdtree'								" Nerdtree File Explorer https://github.com/preservim/nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin' 						" Git marks & syntax in nerdtree https://github.com/Xuyuanp/nerdtree-git-plugin
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'			" Nerd Tree Syntax Highlight https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
Plug 'neovim/nvim-lspconfig'							" LSP https://github.com/neovim/nvim-lspconfig
Plug 'hrsh7th/nvim-compe'								" LSP Completer https://github.com/hrsh7th/nvim-compe

" --- Unused ------------------------------------------------------------------------------------------
"Plug 'neoclide/coc.nvim', {'branch': 'release'}		" CoC https://github.com/neoclide/coc.nvim
"Plug 'ctrlpvim/ctrlp.vim'  							" https://github.com/ctrlpvim/ctrlp.vim  			fuzzy find files
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }	" https://github.com/junegunn/fzf					fuzzy finder
"Plug 'pprovost/vim-ps1' 								" Powershell Support https://github.com/pprovost/vim-ps1
" -----------------------------------------------------------------------------------------------------


call plug#end()
