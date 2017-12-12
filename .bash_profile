# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.2-4

# ~/.bash_profile: executed by bash(1) for login shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bash_profile

# Modifying /etc/skel/.bash_profile directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bash_profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bash_profile file

# source the users bashrc if it exists
#if [ -f "${HOME}/.bashrc" ] ; then
source "${HOME}/.bashrc"
#fi

# Set PATH so it includes user's private bin if it exists
# if [ -d "${HOME}/bin" ] ; then
#   PATH="${HOME}/bin:${PATH}"
# fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

# Git branch in prompt.
#parse_git_branch() {
#        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}
#export PS1="\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

export "PATH=$HOME/.rbenv/shims:$HOME/.rbenv/bin:/usr/local/opt/mysql@5.5/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$HOME/.fzf/bin"
export PATH="$(brew --prefix mysql55)/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$HOME/Library/Python/3.6/bin:$PATH"
eval "$(rbenv init -)"

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH="/usr/local/opt/libarchive/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/libarchive/lib/pkgconfig:$PATH"

# added by Anaconda3 5.0.1 installer
# export PATH="/Users/jevans/anaconda3/bin:$PATH"
# --------------------------------------------------------------
# --------------------------------------------------------------
# --------------------------------------------------------------
# brought over from bashrc on Jan 1 2018
# If not running interactively, don't do anything
#[[ "$-" != *i* ]] && return

alias edit='docker run -ti --rm -v $(pwd):/home/developer/workspace vim:latest'

alias tmux="TERM=screen-256color-bce tmux"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias yoda="git push --force"
alias amend="git commit --amend"
alias squash="git rebase -i origin/master"
alias sss="s3cmd"

update() {
  cd ~/strava/$1
  git add .
  git commit --amend
  git push --force
}
# --------------------------------------------------------------
# --------------------------------------------------------------
# --------------------------------------------------------------
