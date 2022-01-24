# Installation

Soft linking doesn't seem to work on Windows anymore. Will need to manually diff for any changes to files.

## Neovim dotfile 

On Windows, Neovim's config file `init.vim` seems to go to `C:\Users\artem\AppData\Local\nvim\init.vim` instead of `~/.config/nvim/init.vim`

## Vim
* Run `cp vimrc ~/.vimrc`
* Install Vim Plug (https://github.com/junegunn/vim-plug)
* Start vim and execute `:PlugInstall`
