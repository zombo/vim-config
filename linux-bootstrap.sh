#!/bin/bash

# Take home dir as parameter for use in puppet script
if [[ -z $1 ]]
then
	home=~
else
	home=$1
fi

# Create symlinks
if [ -e $home/.vim ] || [ -L $home/.vim ]
then
	mv $home/.vim $home/.vim.original
fi
if [ -e $home/.vimrc ] || [ -L $home/.vimrc ]
then
	mv $home/.vimrc $home/.vimrc.original
fi
if [ -e $home/.tmux.conf ] || [ -L $home/.tmux.conf ]
then
  mv $home/.tmux.conf $home/.tmux.conf.original
fi
if [ -e $home/.bashrc ] || [ -L $home/.bashrc ]
then
  mv $home/.bashrc $home/.bashrc.original
fi
if [ -e $home/.zshrc ] || [ -L $home/.zshrc ]
then
	mv $home/.zshrc $home/.zshrc.original
fi

ln -s $home/${PWD##*/}/.vim $home/.vim
ln -s $home/${PWD##*/}/.vimrc $home/.vimrc
ln -s $home/${PWD##*/}/.tmux.conf $home/.tmux.conf
ln -s $home/${PWD##*/}/.bashrc $home/.bashrc
ln -s $home/${PWD##*/}/.zshrc $home/.zshrc
 
# Initialize submodules
git submodule update --init --recursive

# Compile command-t for our ruby version
cd $home/${PWD##*/}/.vim/bundle/Command-T/ruby/command-t
if [ -e `which ruby` ]; then
	ruby extconf.rb
	if [ -e `which make` ]; then
		make
	fi
fi
