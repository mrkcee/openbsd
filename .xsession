export ENV=$HOME/.kshrc
ulimit -Sc 0

if [ -x /usr/bin/ssh-agent ]; then
  eval $(ssh-agent -s)
fi

xrdb -load .Xresources
xmodmap ~/.Xmodmap
xset s 0 dpms 0 0 0

feh --bg-scale $HOME/.config/wallpapers/6174482.png
pgrep -x tint2 > /dev/null || tint2 &

cwm
