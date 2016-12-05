#!/bin/bash
DIR=$(cd $(dirname ${0}) && pwd)

echo "Setting up bashrc..."
if [[ -e $HOME/.bashrc ]]; then
	echo "Backing up preexisting .bashrc file..."
	mv "$HOME"/.bashrc "$HOME"/.bashrc.bak
fi
echo "linking $DIR/bashrc to $HOME/.bashrc"
ln -s "$DIR"/bashrc "$HOME"/.bashrc


echo "Setting up vim..."
if [[ ! -e ~/.vim/bundle/Vundle.vim ]]; then
	echo "Cloning down vundle..."
	git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
fi

if [[ -e $HOME/.vimrc ]]; then
	echo "Backing up preexisting .vimrc file..."
	mv "$HOME"/.vimrc "$HOME"/.vimrc.bak
fi
echo "linking $DIR/vimrc to $HOME/.vimrc"
ln -s "$DIR"/vimrc "$HOME"/.vimrc

echo "Installing plugins for vim"
vim +PluginInstall +qall # Does the plugin installation

echo "Setting up git..."
"$DIR"/git-setup


echo "Done installation"
