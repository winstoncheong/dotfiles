# Installation

Soft linking under git bash doesn't seem to work on Windows, so 
run `./setup.sh` to copy dotfiles into the correct places on a new machine / environment.

## Neovim dotfile 

On Windows, Neovim's config file `init.vim` seems to go to `C:\Users\artem\AppData\Local\nvim\init.vim` instead of `~/.config/nvim/init.vim`

## Vim
* Run `cp vimrc ~/.vimrc`
* Install Vim Plug (https://github.com/junegunn/vim-plug)
* Start vim and execute `:PlugInstall`

## Spacemacs

Their website says to run `git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d`, but the correct target directory is `~\AppData\Roaming\.emacs.d` on Windows, for emacs to load the configuration.

Due to the template .spacemacs file tending to change, and my configurations to be different between machines, I'm opted to store multiple version of the   `dotspacemacs` config. 
Everything is handled in `prepare_commit.sh`.

## texmf

Use 

```sh
kpsewhich -var-value=TEXMFHOME
```

to determine where the directory `texmf` goes. 
(from https://tex.stackexchange.com/a/1138)
