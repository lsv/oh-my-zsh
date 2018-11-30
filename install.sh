#/bin/bash

sudo apt install vim zsh tilda
chsh -s /bin/zsh

if [ ! -f ~/.config/tilda/config_0 ]; then
	ln -s ~/.oh-my-zsh/config/tilda ~/.config/tilda/config_0
else
	echo "tilda config installed"
fi

if [ ! -f ~/.config/autostart/tilda.desktop ]; then
        ln -s ~/.oh-my-zsh/config/tilda.desktop ~/.config/autostart/tilda.desktop
else
        echo "tilda autostart installed"
fi

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

if [ ! -f ~/.zshaliases.sh ]; then
	ln -s ~/.oh-my-zsh/.zshaliases.sh ~/.zshaliases.sh
else
	echo ".zshaliases.sh is already installed"
fi

if [ ! -f ~/.zshfunctions.sh ]; then
	ln -s ~/.oh-my-zsh/.zshfunctions.sh ~/.zshfunctions.sh
else
	echo ".zshfunctions.sh is already installed"
fi

npm -g install diff-so-fancy
npm -g install yarn
npm -g install tldr
