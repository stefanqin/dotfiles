#!/bin/bash
# NOTE: Please run this file in the root directory (cd ~)
# This file symlinks all the existing dot to root.

for dotfile in $HOME/dotfiles/.*; do
    # Match only the filename part of a variable.
    file_name="$( echo "$dotfile"|grep -o "\..*" )"
    ln -sv "$dotfile" "$HOME/$file_name"
done
