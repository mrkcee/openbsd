alias ls='colorls -F -G'
alias poweroff='doas /sbin/shutdown -p now'
alias reboot='doas /sbin/shutdown -r now'

export BROWSER="firefox"

export LSCOLORS=exgxxxxxcxxxxxxxxxxxxx

export MOZ_ACCELERATED=1

export JAVA_HOME=/usr/local/jdk-11
export PATH=/bin:/usr/bin:/sbin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/local/spark/bin:$JAVA_HOME/bin

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
export PS1='${green}${LOGNAME}${white}@${HOST} ${blue}${tilde[0${one#${PWD##$HOME*}1}]}${PWD##$HOME}${white}> ${end}'
