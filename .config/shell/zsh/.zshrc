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
# pnpm end

# newline after each command
# https://www.reddit.com/r/commandline/comments/13r2ou3/comment/mo1p4ox/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
PROMPT_NEEDS_NEWLINE=false
precmd() {
  if [[ "$PROMPT_NEEDS_NEWLINE" == true ]]; then
    echo
  fi
  PROMPT_NEEDS_NEWLINE=true
}
clear() {
  PROMPT_NEEDS_NEWLINE=false
  command clear
}
