# Custom aliases, functions and exports.

weather() {
  curl -s wttr.in | head -n 7 
}

volume(){
  amixer sset $1 $2 | tail -n 2 ; echo "lssound for a list of sound devices" 
}

cpstdout() {
  $@ | xclip -sel clip
}

clean(){
  $@ 2>/dev/null ; clear 
}

alias installed="apt-mark showmanual | sort | grep -v -F -f <(apt show $(apt-mark showmanual) 2> /dev/null | grep -e ^Depends -e ^Pre-Depends | sed 's/^Depends: //; s/^Pre-Depends: //; s/(.*)//g; s/:any//g' | tr -d ',|' | tr ' ' '\n' | grep -v ^$ | sort -u)"
alias screencast='recordmydesktop'
alias wallpaper='feh --bg-scale'
alias printscrn=scrot
alias showimg='swallow feh' # does YOUR WM swallow?
alias lssound='amixer scontrols | sed "s/Simple mixer control //g" | sed "s/[^a-zA-Z]//g" '
alias man='clean man' 
alias spiderman='wallpaper ~/Pictures/spiderman.jpg' 
alias vaporwave='wallpaper ~/Pictures/wallpaper.jpg'
alias abstract='wallpaper ~/Pictures/abstract.jpg'
alias bashrc='vim ~/.bash_aliases' 
alias cat='bat' # BAT is an improved version of cat, with syntax highlighting, autopiping to less, etc
alias findhelp='apropos'
alias lt='ls --human-readable --size -1 -S --classify'
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort" # Prettifies 'mount' output, doesn't show filesystems
alias pslist='processes' # processes is a pslist prettifier I have written, so this won't work on your device
alias google='dmenu-universal-search'
alias music='ncmpcpp' # Because all good music is unpronounceable
export PATH="$HOME/Scripts:$PATH" 
export MANPAGER="sh -c 'col -bx | bat -; man -p'" # Use BAT as my manpager


