
# Aliases

alias ebashrc='vim ~/.bashrc'
alias resource='source ~/.bashrc'

## Augment commands to have color
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lar="ls -laR"

## Navigation
alias up='cd ..'
alias read="cd ~/Dropbox/workspace/notes/reading\ notes/"
alias work="cd ~/Dropbox/workspace/"
alias proj="cd ~/Projects/"
alias sln="cd ~/projects/notes/solutions"
alias notes="cd ~/projects/notes"
alias nvimrc="cd ~/AppData/Local/nvim/"

## open specific files
alias bib="cd ~/texmf/bibtex/bib/"
alias bibfile="nvim ~/texmf/bibtex/bib/refs.bib"

## working with latex
alias clean="latexmk -c"
alias Clean="latexmk -C"
alias latexmk="latexmk -pdf -synctex=1 -interaction=batchmode"


# export PATH=~/AppData/Roaming/Python/Python312/Scripts:$PATH
# export PATH=$PATH:~/scoop/apps/luarocks/current
# export PATH=$PATH:~/scoop/apps/lua/current
