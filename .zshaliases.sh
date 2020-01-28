# ZSH
alias scp='noglob scp'

# GIT
alias go='git checkout'
alias gall='git add . -A'
alias gch='git checkout'
alias gs='git status'
alias gap='git add . -A && git commit && git push'
alias nah='git reset --hard;git clean -df;'

alias clr='clear'

# Symfony
alias sr='sf server:run'

# PHPUNIT
alias pu='vendor/bin/phpunit'
alias pucover='vendor/bin/phpunit --coverage-html=.build/coverage && xdg-open .build/coverage/index.html'

# Terminal

# https://github.com/sharkdp/bat
#if [ -x "$(command -v bat)" ]; then
#	alias cat='bat'
#fi

# http://denilson.sa.nom.br/prettyping/
if [ -x "$(command -v prettyping)" ]; then
	alias ping='prettyping --nolegend'
fi

# http://tldr-pages.github.io/
if [ -x "$(command -v tldr)" ]; then
	alias help='tldr'
fi

alias upgrade='sudo apt -qq update && sudo apt -qq dist-upgrade -y && sudo apt -qq autoremove -y && sudo apt -qq clean'

phan() { docker run -v $PWD:/mnt/src --rm -u "$(id -u):$(id -g)" cloudflare/phan:latest $@; return $? }

# Magento 2 - start
alias magento2start='php -S 127.0.0.1:8082 -t ./pub/ ./phpserver/router.php'
