for FILE in ~/.config/shell/independent/*; do
  source $FILE
done

for FILE in ~/.config/shell/zsh/*; do
  source $FILE
done

# pnpm
export PNPM_HOME="/home/xavwe/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# history
HISTFILE=${ZDOTDIR}/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

#zsh vi mode
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting-catppuccin/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

# history substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# newline after each command
# https://www.reddit.com/r/commandline/comments/13r2ou3/comment/mo1p4ox/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
PROMPT_NEEDS_NEWLINE=false
preexec() {
  LAST_COMMAND_RAN=1
}
precmd() {
  if [[ -n "$LAST_COMMAND_RAN" ]]; then
    echo
    unset LAST_COMMAND_RAN
  fi
}
precmd() {
  [[ "$PROMPT_NEEDS_NEWLINE" == true ]] && [[ -n "$LAST_COMMAND_RAN" ]] && echo
  PROMPT_NEEDS_NEWLINE=true
}
clear() {
  PROMPT_NEEDS_NEWLINE=false
  command clear
}

# autocorrection
setopt correct_all

# after vi mode init
function my_init() {
  source <(fzf --zsh)
}
zvm_after_init_commands+=(my_init)
