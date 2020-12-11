#!/bin/bash

# get latest vim
sudo apt-get update
sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update
sudo apt-get install vim -y

# get the plugin manager: Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install ag
sudo apt install silversearcher-ag -y

# install ctags
# sudo apt install ctags -y

# install cscope
sudo apt install cscope -y

# create undodir
mkdir ~/.vim/undodir

# create view dir
mkdir ~/.vim/view

# copy .vimrc file to home directory
cp .vimrc ~/

# after install plugins install for c lang completer with following commands
# cd ~/.vim/bundle/YouCompleteMe/
# python3 install.py --clangd-completer
# or give CXX for C++ compiler
# CXX=/usr/bin/..g++ python3 install.py --clangd-completer

