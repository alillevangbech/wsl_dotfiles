wsl dotfiles

## Essential installs;
		- git
		- zsh
		- nvim
		- man
		- tmux
		- stow

## Import files;
	- stow git zsh nvim tmux

## Nice-to-have;
		- ssh
		- build-essential
		- cmake
		- python3-dev
		- texlive-full 

## Set zsh-default shell;
	- cat /etc/shells;
	- chsh;
	- chsh -s /usr/bin/zsh;
	- (reboot here)
	- echo /usr/bin/zsh

## YouCompleteMe setup; (c family)
	- cd $HOME/.config/nvim/plugged/YouCompleteMe/
	- sudo apt install build-essential cmake python3-dev
	- python3 install.py --clangd-completer
