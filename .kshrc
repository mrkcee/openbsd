alias ls='colorls -F -G'

export BROWSER="firefox"

export LSCOLORS=exgxxxxxcxxxxxxxxxxxxx

export MOZ_ACCELERATED=1

export e="`echo x | tr x '\033'`"
export red="${e}[31m"
export green="${e}[32m"
export yellow="${e}[33m"
export blue="${e}[34m"
export magenta="${e}[35m"
export cyan="${e}[36m"
export white="${e}[37m"
export end="${e}[0m"
export HOST=`hostname`
export tilde="~"
export one="1"
export PS1='${green}${LOGNAME}${white}@${HOST}:${blue}${tilde[0${one#${PWD##$HOME*}1}]}${PWD##$HOME}${white}> ${end}'
