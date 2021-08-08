# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/git/completion/git-completion.bash

ENDCOLOR="\e[m"
PS1="\e[36m\h${ENDCOLOR} \e[35m\W${ENDCOLOR} \$> "

alias ls='ls --color=auto'
alias df='df -h'
alias du='du -h'

alias tardir='tar -czf "../${PWD##*/}.tar.gz"' # tar.gz current dir
alias pacman-orphaned='pacman -Rns $(pacman -Qtdq)' # delete orphaned packages (Arch Linux)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$PATH;node_modules/.bin"
