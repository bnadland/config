xterm &

# Set wallpaper
qiv --root_s .wallpaper/openbsd_darkgreen.png

# Disable bell
xset -b

# Remap keyboard
xmodmap .Xmodmap

# Start scrotwm with UTF8 and logging :-)
env LC_CTYPE="en_US.UTF-8" scrotwm > .scrotwmlog 2>&1
