export ZDOTDIR="$HOME"/.config/shell/zsh
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github
export GTK_THEME=Adwaita:dark
dbus-run-session Hyprland
