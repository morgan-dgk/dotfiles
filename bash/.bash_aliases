alias sudo='sudo '
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias wifi-off="nmcli radio wifi off"
alias wifi-on="nmcli radio wifi on"
alias aur-update="aur repo --list | aur vercmp | cut -f 1 -d ' ' | xargs aur sync"
