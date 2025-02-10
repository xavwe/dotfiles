for FILE in ~/.config/shell/independent/*; do
  source $FILE
done

for FILE in ~/.config/bash/bash/*; do
  source $FILE
done
. "$HOME/.cargo/env"