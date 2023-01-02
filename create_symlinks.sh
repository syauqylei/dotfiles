#!/bin/bash

echo "copying configs  to $HOME/.config/"
#cp -as $PWD/nvim $HOME/.config/
cp -as $PWD/kitty $HOME/.config/
cp $PWD/.tmux.conf $HOME
