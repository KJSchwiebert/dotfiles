#!/bin/bash
# Install the files from the git repo to the particular machine.
# Assume that you have vim install as well as the dependancies of all packages.
# For example CoC requires that you have nodejs.
rm ~/.vim/vimrc
mkdir -p ~/.vim
ln -s ~/dotfiles/.vim/vimrc ~/.vim/vimrc
mkdir -p ~/.vim/autoload
rm ~/.vim/UltiSnips
ln -s ~/dotfiles/.vim/UltiSnips ~/.vim/UltiSnips
rm ~/.vim/autoload/plug.vim
ln -s ~/dotfiles/.vim/autoload/plug.vim ~/.vim/autoload/plug.vim
vim +PlugInstall +PlugClean +qall

# Get gdb settings.
rm ~/.gdbinit
ln -s ~/dotfiles/.gdbinit ~/.gdbinit

# Get git configuration.
rm ~/.gitconfig
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

# Get bash configuration.
rm ~/.bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc

# This is required to make sure we get syntax highlighting and stuff for CoC.
# To setup CoC for cpp you will need to do a few other things including running
# :CocInstall coc-clangd. You will need clangd 12 or better as well as 
# nodejs and perhaps clang compiler. These are all available with apt,
# google the commands.
rm ~/.vim/coc-settings.json
ln -s ~/dotfiles/.vim/coc-settings.json ~/.vim/coc-settings.json
