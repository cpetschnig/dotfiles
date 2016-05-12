# .bashrc

HISTFILESIZE=10000000

source ~/.bash_aliases

# from: https://github.com/git/git/tree/master/contrib/completion
source ~/.git-completion.bash
source ~/.git-prompt.sh

eval "$(rbenv init -)"

export PATH=$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH

export CLICOLOR=true
export EDITOR=/usr/bin/vim

export MYSQL_USERNAME=fuji
export MYSQL_PASSWORD=yama

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1


BLUE="\[\e[1;34m\]"
BLUE_="\[\e[0;34m\]"
BROWN="\[\e[0;31m\]"
YELLOW="\[\e[1;33m\]"
RESET="\[\e[0;0m\]"

SEPARATOR="☮"
SYM="$BLUE$SEPARATOR"

export PS1="$SYM$BROWN #\# $SYM$BROWN \t $SYM$BROWN \u@\h $SYM$BROWN \w $SYM$YELLOW\$(__git_ps1 \" (%s)\")\n$BLUE\$$RESET "




echo && fortune | ponysay && echo

