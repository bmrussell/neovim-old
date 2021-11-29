# neovim
#  Resources
- https://www.vimfromscratch.com/articles/vim-for-python/
- https://neovim.io/doc/user/nvim.html#nvim-from-vim

# OS SPECIFICS 
## NVim Config
lives on: echo stdpath('config')

    ``` 
    $Env:APPDATA\..\Local\nvim\init.vim	(Windows)
    ~/.config/nvim 						(Linux)
    ```

## WSL
On WSL install for linux and symlink to Windows folder. Otherwise plugins will contain ^M EOL chars

    ```
    ln -s /mnt/c/Users/$USER/AppData/Local/nvim ~/.config/nvim
    ```

## Ubuntu
On Ubuntu 18.04 use the PPA to install Neovim to get latest stable

    ```
    sudo add-apt-repository ppa:neovim-ppa/stable
    ```

# Dependencies
 
- Curl
To auto install Vim Plug if not present

- Python 3
    ```
    python -m pip install --user --upgrade pynvim
    ```
- nodejs >= 10.12 for COC Plugin
    <br/>e.g. 17.1.0:
    ```
    cinst -y nvm
    nvm install latest
    nvm use 17.1.0
    ```
- LSP<br/>See [list of language servers](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

- LSP Language Servers
	```
	npm i -g yaml-language-server
	npm i -g vscode-json-languageserver-bin
    npm i -g vscode-langservers-extracted
    npm i -g yaml-language-server
	npm i -g pyright
	```

