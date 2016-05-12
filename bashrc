# .bashrc

HISTFILESIZE=10000000

source ~/.bash_aliases

# from: https://github.com/git/git/tree/master/contrib/completion
source ~/.git-completion.bash
source ~/.git-prompt.sh

case $- in *i*) eval "$(rbenv init -)"; esac

export PATH=$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH

export CLICOLOR=true
export EDITOR=/usr/bin/vim

export MYSQL_USERNAME=root
export MYSQL_PASSWORD=admin

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1


BLUE_STRONG="\[\e[1;34m\]"
BLUE="\[\e[0;34m\]"
RED="\[\e[0;31m\]"
YELLOW="\[\e[1;33m\]"
RESET="\[\e[0;0m\]"

SEPARATOR="🍀"
SYM="$SEPARATOR"

export PS1="$SYM$RED #\# $SYM$RED \t $SYM$RED \u@\h $SYM$RED \w $SYM$YELLOW\$(__git_ps1 \" (%s)\")\n$BLUE_STRONG\$$RESET "



case $- in *i*) (echo && fortune | ponysay && echo); esac

