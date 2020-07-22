# ~/.bash_aliases: used by bashrc

alias source-bashrc='source $HOME/.bashrc'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
complete -F _git dotfiles

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

alias ll='ls -alF'
alias l='ls -CF'

alias rm='rm -I'
alias tgz='tar -zxvf'

alias gs='git status'
alias gdf='git diff'
alias gdfm='git diff master'
alias gdfs='git diff --staged'
alias gc='git commit'
alias gca='git commit -a'
alias gpl='git pull'
alias gps='git push'
alias gb='git branch -v'

alias dimg='docker image ls'
alias dcon='docker container ls'
alias dps='docker ps'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

