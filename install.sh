#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "dotfiles are stored in '$DIR'"

# set up bashrc
if [[ -e $HOME/.bashrc ]]; then # .bashrc file exists
	echo "Moving $HOME/.bashrc => $HOME/.bashrc.bak"
	mv "$HOME"/.bashrc "$HOME"/.bashrc.bak
elif [[ -L $HOME/.bashrc ]]; then # .bashrc link exists
	echo "Removing $HOME/.bashrc"
	rm "$HOME"/.bashrc
fi
echo "Creating soft link $HOME/.bashrc => $DIR/bashrc"
ln -s "$DIR"/bashrc "$HOME"/.bashrc

# set up vim
if [[ ! -e ~/.vim/bundle/Vundle.vim ]]; then
	git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
fi

if [[ -e $HOME/.vimrc ]]; then # .vimrc file exists
	echo "Moving $HOME/.vimrc => $HOME/.vimrc.bak"
	mv "$HOME"/.vimrc "$HOME"/.vimrc.bak
elif [[ -L $HOME/.vimrc ]]; then #.vimrc link exists
	echo "Removing $HOME/.vimrc"
	rm "$HOME"/.vimrc
fi
echo "Creating soft link $HOME/.vimrc => $DIR/bashrc"
ln -s "$DIR"/vimrc "$HOME"/.vimrc

vim +PluginInstall +qall # Does the plugin installation

# set up git
echo "Setting up git..."
"$DIR"/git-setup
