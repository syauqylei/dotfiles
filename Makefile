clean-hyper:
	stow -t '${HOME}/.config' -D hyper

clean-neovim:
	stow -t '${HOME}/.config/nvim' -D nvim

clean-git:
	stow -t '${HOME}/.config' -D git

clean-zsh:
	stow -t '${HOME}/.config' -D zsh

clean-tmux:
	stow -t '${HOME}/.config' -D tmux


neovim:
	stow -t '${HOME}/.config/nvim' nvim

zsh:
	stow -t '${HOME}/.config' zsh

tmux:
	stow -t '${HOME}/.config' tmux

git:
	stow -t '${HOME}/.config' git

hyper:
	stow -t '${HOME}/.config' hyper


install: neovim hyper zsh tmux git
	echo 'create a symlinks config'

clean: clean-neovim clean-hyper clean-git clean-zsh clean-tmux
	echo 'delete symlinks config'
