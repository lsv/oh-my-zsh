#/bin/bash

sudo add-apt-repository ppa:ondrej/php -y
sudo add-apt-repository ppa:ondrej/nginx-mainline -y

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
     echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
     sudo apt update

sudo apt install vim zsh tilda autojump yarn nodejs php7.4-cli php7.4-curl curl php7.4-zip unzip -y

if [ ! -f /usr/local/bin/symfony ]; then
	wget https://get.symfony.com/cli/installer -O - | bash
	sudo mv /home/lsv/.symfony/bin/symfony /usr/local/bin/symfony
fi

chsh -s /bin/zsh

if [ ! -d /usr/local/bin/composer ]; then
	php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
	php composer-setup.php --install-dir=/usr/local/bin
	php -r "unlink('composer-setup.php');"
	sudo ln -s /usr/local/bin/composer.phar /usr/local/bin/composer
	sudo ln -s /usr/local/bin/composer.phar /usr/local/bin/c
fi

composer global require laravel/installer

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

if [ ! -f ~/.tmux.conf ]; then
	        ln -s ~/.oh-my-zsh/.zshfunctions.sh ~/.zshfunctions.sh
	else
		        echo ".tmux.conf is already installed"
fi

if [ ! -f ~/.z ]; then
        touch ~/.z
fi

npm -g install diff-so-fancy
npm -g install yarn
npm -g install tldr
