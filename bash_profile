# Make bash check its window size after a process completes
shopt -s checkwinsize

# exports
source ${HOME}/.bash_exports

# aliases
source ${HOME}/.bash_aliases

# Always list directory contents upon 'cd'
cd() { builtin cd "$@"; ll; }

# trash: move a file to the MacOS Trash
trash () { command mv "$@" ~/.Trash; }

# ql: opens a file in MacOS Quicklook Preview
ql () { qlmanage -p "$*" >& /dev/null; }

# extract most known archives with one command
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# display useful host related informaton
#ii() {
#    echo -e "\nYou are logged on ${RED}$HOST"
#    echo -e "\nAdditionnal information:$NC " ; uname -a
#    echo -e "\n${RED}Users logged on:$NC " ; w -h
#    echo -e "\n${RED}Current date :$NC " ; date
#    echo -e "\n${RED}Machine stats :$NC " ; uptime
#    echo -e "\n${RED}Current network location :$NC " ; scselect
#    echo -e "\n${RED}Public facing IP Address :$NC " ;myip
#    #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
#    echo
#}
