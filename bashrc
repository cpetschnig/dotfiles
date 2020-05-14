# .bashrc

HISTFILESIZE=50000000

source ~/.bash_aliases

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# from git through homebrew
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

source /usr/local/etc/bash_completion.d/docker
source /usr/local/etc/bash_completion.d/docker-compose

# from: https://github.com/git/git/tree/master/contrib/completion
#source ~/.git-completion.bash
#source ~/.git-prompt.sh

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




# Docker
eval $(docker-machine env default)

function docker_start() {
  docker-machine start default
  eval "$(docker-machine env default)"
  docker-machine ssh default "echo 'sysctl -w vm.max_map_count=262144' | sudo tee -a /var/lib/boot2docker/profile > /dev/null"
  echo; echo "✅ Docker machine 'default' started."
}

function docker_stop() {
  docker-machine stop default
  echo; echo "✅ Docker machine 'default' stopped."
}

function docker_restart() {
  docker_stop
  docker_start
}



# This became necessary on Aug 31th 2016 after a `brew upgrade`
PATH="/usr/local/opt/gnupg/libexec/gpgbin:$PATH"

PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

function aws-ecr-login {
  `aws ecr get-login --no-include-email`
}


export SHOW_REQUEST_WARNINGS=true

export AWS_PROFILE=devcloud


