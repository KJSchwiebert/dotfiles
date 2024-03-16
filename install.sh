#!/bin/bash
# Install the files from the git repo to the particular machine.
rm ~/.vim/vimrc
ln ./.vim/vimrc ~/.vim/vimrc
mkdir ~/.vim/autoload
rm ~/.vim/autoload/plug.vim
ln ./.vim/autoload/plug.vim ~/.vim/autoload/plug.vim
vim +PlugInstall +PlugClean +qall
