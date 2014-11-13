export HOSTNAME=localhost

# MacPorts Installer addition on 2012-03-06_at_13:21:12: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Java 7
export PATH=/Library/Java/JavaVirtualMachines/jdk1.7.0_07.jdk/Contents/Home/bin:$PATH

# Zinc
export PATH=/usr/local/zinc-0.3.5.1/bin:$PATH

# SBT	
export PATH=/usr/local/sbt-13.5/bin:$PATH

# Scala
export PATH=/usr/local/scala-2.11.4/bin:$PATH

# Play
export PATH=/usr/local/play-2.2.1:$PATH

# Mysql
export PATH=/usr/local/mysql/bin:$PATH

# Typesafe activator
export PATH=/usr/local/activator-1.2.1-minimal:$PATH

# MongoDB
export PATH=/usr/local/mongodb/bin:$PATH

# Maven
MAVEN_OPTS="-Xmx1024M -XX:MaxPermSize=1024M -Xmx1g -XX:ReservedCodeCacheSize=1g"
export MAVEN_OPTS

# My Scripts
export PATH=~/scripts:$PATH

export CLASSPATH=.
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
alias r='random.sh'
alias rsy='random-with-symbols.sh'


PS1='\h:\w$(__git_ps1 " (%s)")\$ '

# History settings
HISTIGNORE="ls:pwd:w:ps:jobs:bg:fg:clear:exit"
HISTCONTROL=ignoredups
HISTFILESIZE=10000
HISTSIZE=500

# append to the history file, don't overwrite it
shopt -s histappend

# Default file creation permissions are ALL for self and group, none for others
umask 0077

# Git tab completion
GTC='/usr/local/git/contrib/completion/git-completion.bash'
[ -r $GTC ] && . $GTC

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

md () { mkdir -p "$@" && cd "$@"; }

title() { echo -n -e "\033]0;$1\007"; }

