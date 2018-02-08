complete -c -f command sudo
complete -W "$(sed -e 's/^  *//' -e '/^#/d' -e 's/[, ].*//' -e '/\[/d' ~/.ssh/known_hosts | sort -u)" ssh

/Users/ggrosnick/Library/Python/2.7/lib/python/site-packages/powerline/powerline/scripts/powerline-daemon -q
POWERLINE_PATH=~/Library/Python/2.7/lib/python/site-packages/powerline
source $POWERLINE_PATH/bindings/bash/powerline.sh

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
