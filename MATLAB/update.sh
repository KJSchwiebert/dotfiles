#!/bin/sh

# TODO: Make it so this script can use an environment variable that sets the
# MATLAB userpath from, for example .bashrc.
#
# Also, on linux, we should really just make symbolic links, but making a sym 
# link from WSL to windows seems to break, so this is the solution for working 
# on windows I guess.

# Make sure we have just one input and it's a directory that exists.
if [ $# -ne 1 ]; then
    echo "Usage: $0 path"
    exit 65
fi

if [ -n "$1" -a -d "$1" ]; then
    # Do nothing. Arguement isn't empty and is a directory.
    :
else
    echo "First (only) input must be an existing directory. \
          It should be what is returned by userpath in MATLAB"
    exit 65
fi

rm -rf "$1/overrides"
rm -f "$1/startup.m"
cp -r "$HOME/dotfiles/MATLAB/overrides" "$1/overrides"
cp "$HOME/dotfiles/MATLAB/startup.m" "$1"
