clean-hyper:
	stow  -D hyper

clean-neovim:
	stow  -D nvim

clean-git:
	stow  -D git

clean-zsh:
	stow  -D zsh

clean-tmux:
	stow  -D tmux

clean-ghostty:
	stow -D ghostty

neovim:
	stow  nvim

zsh:
	stow  zsh

tmux:
	stow  tmux

git:
	stow  git

hyper:
	stow  hyper

yabai:
	stow yabai

skhd:
	stow skhd

ghostty:
	stow ghostty


install: neovim hyper zsh tmux git skhd yabai
	echo 'create a symlinks config'

clean: clean-neovim clean-hyper clean-git clean-zsh clean-tmux
	echo 'delete symlinks config'
