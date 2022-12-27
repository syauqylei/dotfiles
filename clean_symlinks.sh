#!/bin/bash

DIR="$HOME/.config/nvim"

if [ -d "$DIR" ]; then
    echo "Clean config neovim files"
    rm -rf "$DIR"
fi

DIR_KITT="$HOME/.config/kitty"
if [ -d "$DIR_KITT" ]; then
    echo "Clean config neovim files"
    rm -rf "$DIR_KITT"
fi

rm ~/.tmux.conf
