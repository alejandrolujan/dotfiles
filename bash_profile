export HOSTNAME=localhost

# Typesafe activator
export PATH=/usr/local/activator-dist-1.3.5:$PATH

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
HISTIGNORE="ls:pwd:w:ps:jobs:bg:fg:clear:exit:history"
HISTCONTROL=ignoredups
HISTFILESIZE=10000
HISTSIZE=500
HISTTIMEFORMAT="%d/%m/%y %T "

# append to the history file, don't overwrite it
shopt -s histappend

# Default file creation permissions are ALL for self and group, none for others
umask 0077

# Git aliases
alias add=' git add '
alias amend=' git commit --amend '
alias amendnoedit=' git commit --amend --no-edit'
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
alias unstash=' git stash pop '
alias status=' git status '
alias summary=' git log --summary'
alias glog=' git log --pretty=format:"%h - %an, %ad : %s" '

# SBT aliases
alias biobreak='sbt validate'

export SBT_OPTS='-XX:+CMSClassUnloadingEnabled -Dscala.color'

export JAVA_OPTS='-Dscala.color -Xss1M -XX:MaxMetaspaceSize=1G -XX:MetaspaceSize=256M -XX:+CMSClassUnloadingEnabled -Xmx1G -Xmx2G'

# Create a directory and cd into it - trivial and extremely useful
md () { mkdir -p "$@" && cd "$@"; }

# Change the title of your terminal - useful when you have a few tabs open
title() { echo -n -e "\033]0;$1\007"; }

# Just for fun
alias starwars="telnet towel.blinkenlights.nl"

