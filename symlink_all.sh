#!/bin/bash
# NOTE: Please run this file in the root directory (cd ~)
# This file symlinks all the existing dot to root.

for dotfile in ~/Dotfiles/.*; do
    ln -sv "$dotfile" "$HOME/$dotfile"
done
