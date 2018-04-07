# Setup fzf
# ---------
if [[ ! "$PATH" == */home/lsv/.oh-my-zsh/fzf/bin* ]]; then
  export PATH="$PATH:/home/lsv/.oh-my-zsh/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/lsv/.oh-my-zsh/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/lsv/.oh-my-zsh/fzf/shell/key-bindings.bash"

