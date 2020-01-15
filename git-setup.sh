#! /bin/bash
git config --global user.name "Winston Cheong"
git config --global user.email cheong.winston1337@gmail.com
git config --global core.editor vim
git config --global color.ui true

#aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.di diff
git config --global alias.aa 'add --all'
git config --global alias.dc 'diff --cached'
git config --global alias.pullff 'pull --ff-only'
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual '!gitk'
# git config --global push.default simple
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --global alias.diffstat 'diff --stat -r'
git config --global alias.changes 'diff --name-status -r'
git config --global alias.lc 'log ORIG_HEAD.. --stat --no-merges'
git config --global core.pager 'less -+F'
