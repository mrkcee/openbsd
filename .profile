# $OpenBSD: dot.profile,v 1.8 2022/08/10 07:40:37 tb Exp $
#
# sh/ksh initialization

# Disable core dumps
ulimit -Sc 0

export JAVA_HOME=/usr/local/jdk-11

export ENV=.kshrc
export PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:$JAVA_HOME/bin
export HOME TERM
