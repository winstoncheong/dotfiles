#! /bin/bash
DIR=$(cd $(dirname ${0}) && pwd)

# set up vim
if [[ ! -e ~/.vim/bundle/Vundle.vim ]]; then
	git clone http://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
fi

if [[ -e $HOME/.vimrc ]]; then
	mv $HOME/.vimrc $HOME/.vimrc.bak
fi

ln -s "$DIR"/vimrc $HOME/.vimrc
vim +PluginInstall +qall # Does the plugin installation

# set up git
"$DIR"/git-setup
