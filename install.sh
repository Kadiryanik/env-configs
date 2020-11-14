#!/bin/bash

# get the plugin manager: Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install ag
sudo apt install silversearcher-ag -y

# install ctags
sudo apt install ctags -y

# create undodir
mkdir ~/.vim/undodir

# copy .vimrc file to home directory
cp .vimrc ~/
