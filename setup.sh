#!/bin/bash

# Script to set up my configuration on a new machine / terminal / environment

cp -b -v ./vimrc ~/.vimrc
cp -b -v ./bashrc ~/.bashrc

# If neovim is installed...
cp -b -v ./init.vim ~/AppData/Local/nvim/init.vim

# If spacemacs is installed..
cp -b -v ./dotspacemacs ~/AppData/Roaming/.spacemacs

