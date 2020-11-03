# Setup fzf
# ---------
if [[ ! "$PATH" == *$HOME/.oh-my-zsh/fzf/bin* ]]; then
  export PATH="$PATH:$HOME/.oh-my-zsh/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$HOME/.oh-my-zsh/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "$HOME/.oh-my-zsh/fzf/shell/key-bindings.zsh"

