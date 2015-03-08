PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

IGNOREEOF=10   # Shell only exists after the 10th consecutive Ctrl-d
set -o ignoreeof  # Same as setting IGNOREEOF=10
set editing-mode vi
set keymap vi-command
set show-mode-in-prompt on
set -o vi

export EDITOR=/usr/local/bin/vim

alias lvim='vim -c "normal '\''0"'
alias rs="~/realsync/realsync"
alias ctags="`brew --prefix`/bin/ctags"

