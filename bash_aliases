#!/usr/bin/env bash

# copy files: prompt if overwriting an existing file
alias cp='cp -iv'
# move files: prompt is overwriting an existing file
alias mv='mv -iv'
# make directories: create intermediate directories as required
alias mkdir='mkdir -pv'
# list directory contents
alias ls='ls -FG'       # list all files colorized
alias ll='ls -lFGh'     # list all files colorized in long format
alias la='ls -laFGh'    # list all files colorized in long format, including dot files

alias grep='grep --color=auto'              # enable colored 'grep' output
alias less='less --clear-screen --quit-if-one-screen --LINE-NUMBERS --no-init'

alias ~="cd ~"                      # Go Home
alias cd..='cd ../'                 # Go back 1 directory level (frequent typo)
alias ..='cd ../'                   # Go back 1 directory level
alias ...='cd ../../'               # Go back 2 directory levels
alias .3='cd ../../../'             # Go back 3 directory levels
alias .4='cd ../../../../'          # Go back 4 directory levels
alias .5='cd ../../../../../'       # Go back 5 directory levels
alias .6='cd ../../../../../../'    # Go back 6 directory levels

# open a file in sublime editor
alias edit='subl'
# open current directory in MacOS Finder
alias f='open -a Finder ./'
# clear the terminal display
alias c='clear'
# find executables
alias which='type -all'
# display bash options settings
alias showOptions='shopt'

# get macOS software updates
alias update='sudo softwareupdate -i -a'
# get and install brew updates
alias brewupdate='brew -v update; brew -v upgrade --all; brew cleanup'

# get external ip
alias ip="www.google.com"
# get local wifi ip
alias localip="ipconfig getifaddr en0"

# flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# recursively delete '.DS_Store' files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Show/Hide hidden files in Finder
alias showHidden='defaults write com.apple.finder ShowAllFiles --bool true && killall Finder'
alias hideHidden='defaults write com.apple.finder ShowAllFiles --bool false && killall Finder'

# Hide/show all desktop icons (useful when presenting)
alias hideDesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showDesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# run a screensaver on the Desktop
alias screensaverDesktop='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background'

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# Disable Spotlight
alias spotlightOff="sudo mdutil -a -i off"
# Enable Spotlight
alias spotlihgtOn="sudo mdutil -a -i on"

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 7'"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"
