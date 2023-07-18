#!/bin/bash

# Script to copy changed dotfiles into repo (because Windows soft linking doesn't work)

cp -b -v ~/.vimrc ./vimrc
cp -b -v ~/.bashrc ./bashrc
cp -b -v ~/AppData/Local/nvim/init.vim ./init.vim
cp -v ~/AppData/Roaming/.spacemacs ./dotspacemacs_`hostname`_`date +"%y-%m-%d"`
