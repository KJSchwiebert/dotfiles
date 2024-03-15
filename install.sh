#!/bin/bash
# Install the files from the git repo to the particular machine.
cp ./.vim ~/.vim -d -r
vim +PlugInstall +PlugClean +qall
