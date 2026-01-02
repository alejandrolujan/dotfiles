# Customize my prompt TODO move from .zsh to here 
export PS1="%~ $ "

# Aliases for tweaked default behavior
alias ls='ls -AFGlh'
alias lr='ls -R'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Aliases for common tasks
alias cpl='clear; pwd; ls'
alias h='history'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias s='cd ~/src'
alias t='cd ~/temp'

# History settings
HISTIGNORE="ls:pwd:w:ps:jobs:bg:fg:clear:exit:history"
HISTCONTROL=ignoredups
HISTFILESIZE=10000
HISTSIZE=500
HISTTIMEFORMAT="%d/%m/%y %T "

# Git aliases
alias add=' git add '
alias amend=' git commit --amend '
alias amendnoedit=' git commit --amend --no-edit'
alias back='git checkout -'
alias branch=' git branch '
alias commit=' git commit '
alias cm=' git commit -m '
alias cam=' git commit -am '
alias cout=' git checkout '
alias dif=' git diff '
alias difftool='git difftool '
alias gall='git add .; git commit --amend --no-edit'
alias gb='git for-each-ref --sort=committerdate refs/heads/ --format="%(HEAD) %(color:yellow)%(refname:short)%(color:reset) %(color:green)%(objectname:short)%(color:reset) [%(committerdate:relative)] %(authorname) : %(color:blue)%(contents:subject)%(color:reset) "'
alias glog='git log --pretty=format:"%C(green)%h%C(reset) [%ar] %an : %C(blue)%s%C(reset)"'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gri='git rebase -i '
alias list=' git stash list --summary'
alias log=' git log '
alias main='git checkout main '
alias nb='git checkout -b '
alias pop=' git stash pop '
alias pull=' git pull --rebase '
alias push=' git push '
alias st=' git status '
alias stash=' git stash '
alias status=' git status '
alias summary=' git log --summary'
alias unstash=' git stash pop '
alias pullm='git checkout master && git pull && git checkout -'
alias pushf='git push --force-with-lease'

# Push branch to origin
pushit() {
  git push --set-upstream origin `git branch | grep \* | cut -d ' ' -f2` 
}

# Create a directory and cd into it - trivial and extremely useful
md () { mkdir -p "$@" && cd "$@"; }

# Change the title of your terminal - useful when you have a few tabs open
title() { echo -n -e "\033]0;$1\007"; }
