PATH=$HOME/bin:$HOME/perl5/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:/usr/local/jdk-1.7.0/bin
export PATH HOME TERM
export PKG_PATH=http://ftp.spline.de/pub/OpenBSD/snapshots/packages/i386/

export LESS=i
export HISTFILE=~/.sh_history
export PS1="(\t)[\w]\$ "
export TDL_DATABASE=~/.tdldb
export PYTHONSTARTUP=~/.pythonrc

export LSCOLORS=AaxxxxxxxxxxxxxxxxAaAa

export PERL_LOCAL_LIB_ROOT="/home/bnadland/perl5"
export PERL_MB_OPT="--install_base /home/bnadland/perl5"
export PERL_MM_OPT="INSTALL_BASE=/home/bnadland/perl5"
export PERL5LIB="/home/bnadland/perl5/lib/perl5/i386-openbsd:/home/bnadland/perl5/lib/perl5"

alias 'ls'='colorls -G'
alias 'rem'='remind ~/.reminders'
alias 'osd'='osd_cat -A center -f lucidasanstypewriter-bold-18 -c green -d 1 -p middle -s 1'
alias 'impressive'='impressive -t Crossfade'
alias 'cr'='clear;organizer'
alias 'cls'='clear;ls'
alias 'slrn'='env NNTPSERVER=news.1und1.de slrn'
alias 'yt'='youtube-dl -t -i -c -f 18'
alias 'lynx'='lynx -nocolor'
alias 'save'='wget -c -k -p -e robots=off -w 1 --html-extension '
