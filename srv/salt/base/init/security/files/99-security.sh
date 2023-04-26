#!/bin/bash

# Save history with timestamps
HISTTIMEFORMAT="%d/%m/%y %T "

# Undocumented feature which sets the size to "unlimited".
export HISTFILESIZE=
export HISTSIZE=

if [ "`id -u`" -eq 0 ]; then
    export PS1="\[\e[36m\]\t\[\e[m\] \[\e[30;41m\]\u\[\e[m\]\[\e[30;41m\]@\[\e[m\]\[\e[30;41m\]\h\[\e[m\] \[\e[35m\]\w\[\e[m\] \[\e[33m\]\\$\[\e[m\] "
else
    export PS1="\[\e[36m\]\t\[\e[m\] \[\e[32m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\] \[\e[35m\]\w\[\e[m\] \[\e[33m\]\\$\[\e[m\] "
fi

set -o vi

bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# Make things iMproved.
export EDITOR=vi

# no double entries in the shell history
export HISTCONTROL="$HISTCONTROL erasedups:ignoreboth"

