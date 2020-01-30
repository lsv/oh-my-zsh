#/bin/bash

if [ "$(whoami)" != "root" ]; then
	echo "Please run as root"
	exit
fi

sudo apt install vim zsh tilda autojump
chsh -s /bin/zsh

if [ ! -d /usr/local/bin/composer ]; then
	php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
	php -r "if (hash_file('sha384', 'composer-setup.php') === 'baf1608c33254d00611ac1705c1d9958c817a1a33bce370c0595974b342601bd80b92a3f46067da89e3b06bff421f182') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
	php composer-setup.php --install-dir=/usr/local/bin
	php -r "unlink('composer-setup.php');"
	sudo ln -s /usr/local/bin/composer.phar /usr/local/bin/composer
	sudo ln -s /usr/local/bin/composer.phar /usr/local/bin/c
	composer global require hirak/prestissimo
fi

if [ ! -d ~/.config/tilda ]; then
	mkdir -p ~/.config/tilda
fi

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

if [ ! -f ~/.p10k.zsh ]; then
        ln -s ~/.oh-my-zsh/.p10k.zsh ~/.p10k.zsh
else
        echo ".p10k.zsh is already installed"
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

if [ ! -f ~/.z ]; then
        touch ~/.z
fi

npm -g install diff-so-fancy
npm -g install yarn
npm -g install tldr
