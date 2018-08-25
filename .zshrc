# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="candy"
#ZSH_THEME="bureau"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=5

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(docker git gitflow autojump copydir copyfile cp symfony2 catimg colored-man colored-man-pages command-not-found colorize composer dirhistory github gitignore jsontools zsh-syntax-highlighting vagrant gulp z yarn laravel5)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

source ~/.fzf.zsh

export PATH="$PATH:$HOME/.npm-global/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

[ -f /home/lsv/.travis/travis.sh ] && source /home/lsv/.travis/travis.sh

setopt completealiases

if [ -f ~/.zshaliases.sh ]; then
	source ~/.zshaliases.sh
else
	echo "could not source aliases"
fi

if [ -f ~/.zshfunctions.sh ]; then
	source ~/.zshfunctions.sh
else
	echo "could not source functions"
fi
