# Set environment variables
export ENV=$HOME/.kshrc

# Run ssh-agent
if [ -x /usr/bin/ssh-agent ]; then
  eval $(ssh-agent -s)
fi

# Set locale
export LC_CTYPE="en_US.UTF-8"
export LANG="en_US.UTF-8"

# Load X configs for URvxt
xrdb -load .Xresources

# Load custom keyboard mappings
xmodmap ~/.Xmodmap

# Set screensaver timeout
xset s 0 dpms 0 0 0

# Run wallpaper and menubar
feh --bg-scale $HOME/.config/wallpapers/6174482.png
pgrep -x tint2 > /dev/null || tint2 &

# Run WM
cwm
