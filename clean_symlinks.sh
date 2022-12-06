#!/bin/bash

DIR="$HOME/.config/nvim"

if [ -d "$DIR" ]; then
    echo "Clean config neovim files"
    rm -rf "$DIR"
fi
