export HOSTNAME=localhost

# Scala
export PATH=/usr/local/scala-2.11.5/bin:$PATH

# Typesafe activator
export PATH=/usr/local/activator-1.2.12:$PATH

# Maven
MAVEN_OPTS="-Xmx1024M -XX:MaxPermSize=1024M -Xmx1g -XX:ReservedCodeCacheSize=1g"
export MAVEN_OPTS

# My Scripts
export PATH=~/scripts:$PATH

export CLASSPATH=.

# Other terminal niceties
export BLOCKSIZE=K
export PAGER='less'

# replacement netstat cmd to find ports used by apps on OS X
alias netstat_osx="sudo lsof -i -P"

# Aliases for tweaked default behavior
alias ls='ls -AFGlh'
alias lr='ls -R'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Aliases for common tasks
alias dir='\ls -AFG'
alias cpl='clear; pwd; ls'
alias h='history'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias r='random'
alias rsy='random-with-symbols'

# Git prompt support
source ~/src/git/contrib/completion/git-prompt.sh
PS1='\h:\w$(__git_ps1 " (%s)")\$ '

# Git tab completion
source ~/src/git/contrib/completion/git-completion.bash

# History settings
HISTIGNORE="ls:pwd:w:ps:jobs:bg:fg:clear:exit"
HISTCONTROL=ignoredups
HISTFILESIZE=10000
HISTSIZE=500

# append to the history file, don't overwrite it
shopt -s histappend

# Default file creation permissions are ALL for self and group, none for others
umask 0077

# Git aliases
alias add=' git add '
alias amend=' git commit --amend '
alias branch=' git branch '
alias commit=' git commit '
alias cout=' git checkout '
alias dif=' git diff '
alias difftool='git difftool '
alias list=' git stash list --summary'
alias log=' git log '
alias master=' git checkout master '
alias pop=' git stash pop '
alias pull=' git pull --rebase '
alias push=' git push '
alias stash=' git stash '
alias status=' git status '
alias summary=' git log --summary'
alias glog=' git log --pretty=format:"%h - %an, %ad : %s" '

export SBT_OPTS='-Xmx512M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=1024M -Dscala.color'

export JAVA_OPTS='-Dscala.color'

# Create a directory and cd into it - trivial and extremely useful
md () { mkdir -p "$@" && cd "$@"; }

# Change the title of your terminal - useful when you have a few tabs open
title() { echo -n -e "\033]0;$1\007"; }

