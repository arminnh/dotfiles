# ~/.bash_aliases: used by bashrc

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias c='clear'
alias gs='git status'
alias gdf='git diff'
alias gdfm='git diff master'
alias gc='git commit'
alias gca='git commit -a'
alias gpl='git pull'
alias gps='git push'

alias sinstall='sudo apt install'
alias supdate='sudo apt update'
alias supgrade='sudo apt upgrade'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

alias rm='rm -I'
alias tgz='tar -zxvf'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
complete -F _git dotfiles

alias thesis-nb='jupyter-notebook ~/master-thesis/src/notebooks/'
alias pdfthesis='pdflatex thesis.tex && bibtex thesis.aux && pdflatex thesis.tex && pdflatex thesis.tex'
alias robo3t='~/Downloads/robo3t-1.1.1-linux-x86_64-c93c6b0/bin/robo3t'

