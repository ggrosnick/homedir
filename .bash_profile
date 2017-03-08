complete -c -f command sudo
complete -W "$(sed -e 's/^  *//' -e '/^#/d' -e 's/[, ].*//' -e '/\[/d' ~/.ssh/known_hosts | sort -u)" ssh

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH=$PATH:$HOME/.vim/bundle/powerline:$HOME/.vim/bundle/powerline/scripts:$HOME/.keychain
export PYTHONPATH=$HOME/.vim/bundle/powerline/:$PYTHONPATH
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/ggrosnick/.vim/bundle/powerline/powerline/bindings/bash/powerline.sh
