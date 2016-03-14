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
plugins=(laravel5 docker git gitflow autojump copydir copyfile cp symfony2 catimg colored-man colorize composer dirhistory github gitignore jsontools zsh-syntax-highlighting vagrant gulp)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

#alias scp='noglob scp'
alias go='git checkout'
alias gall='git add . -A'
alias gch='git checkout'
alias gs='git status'
alias gap='git add . -A && git commit && git push'
alias clr='clear'
alias gacp='git add . -A && git commit && git push'
alias sr='sf server:run'
alias co='sf'

source ~/.fzf.zsh

. ~/.oh-my-zsh/z/z.sh
alias dcsmssql='mssql 93.176.74.100 ScanDesigns C5Access'

export PATH="$PATH:$HOME/.npm-global/bin"

fd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

export DOCKER_HOST=tcp://localhost:4243

goo() {
    search=""
    echo "Googling: $@"
    for term in $@; do
        search="$search%20$term"
    done
    xdg-open "http://www.google.com/search?q=$search" > /dev/null
}

