#!/bin/bash
DIR=$(cd $(dirname ${0}) && pwd)

# set up bashrc
if [[ -e $HOME/.bashrc ]]; then
	mv "$HOME"/.bashrc "$HOME"/.bashrc.bak
fi
ln -s "$DIR"/bashrc "$HOME"/.bashrc

# set up vim
if [[ ! -e ~/.vim/bundle/Vundle.vim ]]; then
	git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
fi

if [[ -e $HOME/.vimrc ]]; then
	mv "$HOME"/.vimrc "$HOME"/.vimrc.bak
fi

ln -s "$DIR"/vimrc "$HOME"/.vimrc
vim +PluginInstall +qall # Does the plugin installation

# set up git
"$DIR"/git-setup
