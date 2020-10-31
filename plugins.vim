" PLUGINS---------------------------------------------------------------------

let g:PLUGVIM = stdpath('config') . '/autoload/plug.vim'
if empty(glob(g:PLUGVIM))
	let g:CURLCMD = 'curl -fLo ' . g:PLUGVIM . ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	execute "!" . g:CURLCMD
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(g:nvim_config_root . '/plugged')

" Plugins in increasing order of complexity :)

														" https://github.com/dracula/vim
														" Dracula Theme
Plug 'dracula/vim', { 'as': 'dracula' }				

														" https://github.com/tomasiser/vim-code-dark
														" Vscode Theme
Plug 'tomasiser/vim-code-dark'

														" Posh Statusline
														" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

														" Powershell Support
														" https://github.com/pprovost/vim-ps1
Plug 'pprovost/vim-ps1'

														" File Exporer
														" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'
														" Git marks & syntax in nerdtree
														" https://github.com/Xuyuanp/nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'

														" Nerd Tree Syntax Highlight
														" https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

														" CoC
														" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plug 'ctrlpvim/ctrlp.vim'  							" https://github.com/ctrlpvim/ctrlp.vim  			fuzzy find files
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }	" https://github.com/junegunn/fzf					fuzzy finder

"Plug 'tmhedberg/SimpylFold'
"Plug ' vim-scripts/indentpython.vim'


" OmniSharp for C#
"Plug 'OmniSharp/omnisharp-vim'
"Plug 'w0rp/ale'

call plug#end()
