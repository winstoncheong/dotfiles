#! /bin/bash
DIR=$(cd $(dirname ${0}) && pwd)

# set up vim
if [[ ! -e ~/.vim/bundle/Vundle.vim ]]; then
	git clone http://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall # Does the plugin installation
fi

# set up git
$DIR/git-setup


ln -s $DIR/vimrc $HOME/.vimrc
