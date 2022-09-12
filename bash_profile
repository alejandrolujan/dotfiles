export HOSTNAME=localhost

# Customize my prompt TODO move from .zsh to here 
export PS1="%~ $ "

# My Scripts
export PATH=~/scripts:$PATH

# Java (if this fails do brew install openjdk)
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CLASSPATH=.

# Other terminal niceties
export BLOCKSIZE=K
export PAGER='less'

# Run scalarc when launching the REPL
alias scala='scala -Dscala.color=true -i ~/.scalarc'

# replacement netstat cmd to find ports used by apps on OS X
alias netstat_osx="sudo lsof -i -P"

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
alias r='random'
alias rsy='random-with-symbols'
alias mg='mogrify -monitor -format jpg *.NEF'
alias nukenef='rm -f *.NEF'
alias s='cd ~/src'
alias t='cd ~/temp'
alias removeallspaces='for f in *\ *; do mv "$f" "${f// /_}"; done'
alias findallmovs='find . -iname "*.m*v"'
alias d='cd ~/src/dotfiles'
alias sun='cd ~/src/scala-up-north-src'
alias sq='cd ~/src/scalaquest/playapp'
alias loc='find . | xargs wc -l'

# Git prompt support
#source ~/src/git/contrib/completion/git-prompt.sh
#PS1='\h:\w$(__git_ps1 " (%s)")\$ '

# Git tab completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# History settings
HISTIGNORE="ls:pwd:w:ps:jobs:bg:fg:clear:exit:history"
HISTCONTROL=ignoredups
HISTFILESIZE=10000
HISTSIZE=500
HISTTIMEFORMAT="%d/%m/%y %T "

# append to the history file, don't overwrite it
#shopt -s histappend

# Default file creation permissions are ALL for self and group, none for others
# umask 0077

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
#alias master=' git checkout master '
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

export SBT_OPTS='-XX:+CMSClassUnloadingEnabled -Dscala.color=true'

export JAVA_OPTS='-Dscala.color -Xss1M -XX:MaxMetaspaceSize=1G -XX:MetaspaceSize=256M -XX:+CMSClassUnloadingEnabled -Xmx1G -Xmx2G'

# Create a directory and cd into it - trivial and extremely useful
md () { mkdir -p "$@" && cd "$@"; }

# Change the title of your terminal - useful when you have a few tabs open
title() { echo -n -e "\033]0;$1\007"; }

# Open file with Deckset
deckset() { open $1 -a Deckset; }

# Colorized man pages
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;36m") \
        LESS_TERMCAP_md=$(printf "\e[1;36m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

# Just for fun
alias starwars="telnet towel.blinkenlights.nl"

# Reminder script settings
export TIMER_LAUNCHBAR=true

alias ready='say -v Paulina Listo!'
