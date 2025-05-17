export ZDOTDIR="$HOME"/.config/shell/zsh
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github
dbus-run-session Hyprland
