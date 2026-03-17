
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
alias notes="cd ~/projects/notes"

## open specific files
alias bib="cd ~/texmf/bibtex/bib/"
alias bibfile="nvim ~/texmf/bibtex/bib/refs.bib"

## working with latex
alias clean="latexmk -c"
alias Clean="latexmk -C"
alias latexmk="latexmk -pdf -synctex=1 -interaction=batchmode"

## git aliases (following ohmyzsh convention https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/README.md)
alias gp="git push"
alias ga="git add"
alias gc="git commit --verbose"
alias gca="git commit --verbose --all"
alias glg="git log --stat"
alias glgp="git log --stat --patch"
alias gl="git pull"
alias gpr="git pull --rebase"
alias gpra="git pull --rebase --autostash"
alias gst="git status"


# export PATH=~/AppData/Roaming/Python/Python312/Scripts:$PATH
# export PATH=$PATH:~/scoop/apps/luarocks/current
# export PATH=$PATH:~/scoop/apps/lua/current
