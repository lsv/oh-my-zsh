#/bin/bash

if [ ! -f ~/.zshrc ]; then
	ln -s ~/.oh-my-zsh/.zshrc ~/.zshrc
else
	echo ".zshrc is already installed"
fi

if [ ! -f ~/.gitconfig ]; then
	ln -s ~/.oh-my-zsh/.gitconfig ~/.gitconfig
else
	echo ".gitconfig is already installed"
fi

if [ ! -f ~/.fzf.zsh ]; then
	ln -s ~/.oh-my-zsh/.fzf.zsh ~/.fzf.zsh
else
	echo ".fzf.zsh is already installed"
fi

if [ ! -f ~/.fzf.bash ]; then
	ln -s ~/.oh-my-zsh/.fzf.bash ~/.fzf.bash
else
	echo ".fzf.bash is already installed"
fi

if [ ! -f ~/.npmrc ]; then
        ln -s ~/.oh-my-zsh/.npmrc ~/.npmrc
else
        echo ".npmrc is already installed"
fi

