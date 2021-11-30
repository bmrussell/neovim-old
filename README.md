# neovim
#  Resources
- https://www.vimfromscratch.com/articles/vim-for-python/
- https://neovim.io/doc/user/nvim.html#nvim-from-vim

# OS SPECIFICS 
## NVim Config
lives on: echo stdpath('config')

    ``` 
    $Env:APPDATA\..\Local\nvim\init.vim	(Windows)
    ~/.config/nvim 				(Linux)
    ```

# Dependencies
 
- Curl: To auto install Vim Plug if not present
- Git
- Python 3: to run pynvim
- nodejs: Language servers
- Vim LSP See [list of language servers](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)


# Setup from scratch
## Windows (PowerShell)
```powershell
Set-ExecutionPolicy RemoteSigned
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
cinst -y neovim git nvm python vscode
python -m pip install --user --upgrade pynvim
nvm install latest
nvm use 17.1.0
npm i -g yaml-language-server vscode-json-languageserver-bin vscode-langservers-extracted yaml-language-server pyright
cd $Env:APPDATA\..\Local
git clone https://github.com/bmrussell/neovim.git nvim
```

## Ubuntu (Bash)
```bash
sudo apt remove neovim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim
sudo apt install python3-pip
pip3 install --user --upgrade pynvim
python -m pip install --user --upgrade pynvim
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
nvm install node
nvm use 17.1.0
npm i -g yaml-language-server vscode-json-languageserver-bin vscode-langservers-extracted yaml-language-server pyright	
cd ~/.config
git clone https://github.com/bmrussell/neovim.git nvim	
```
