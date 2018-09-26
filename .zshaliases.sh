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
if [ -x "$(command -v bat)" ]; then
	alias cat='bat'
fi

# http://denilson.sa.nom.br/prettyping/
if [ -x "$(command -v prettyping)" ]; then
	alias ping='prettyping --nolegend'
fi

# http://tldr-pages.github.io/
if [ -x "$(command -v tldr)" ]; then
	alias help='tldr'
fi
