# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/ay/.zshrc'

autoload -Uz compinit promptinit
compinit
# End of lines added by compinstall


# post-added 
# -------------------------------------------------------------------
setopt completealiases
autoload -U promptinit
promptinit
zstyle ':completion:*' menu select


# PS1
# -------------------------------------------------------------------
export PS1='
%n@%m %. 
☕ ️'


# Code projects
# -------------------------------------------------------------------
alias semirhage="cd ~/Code/semirhage && source ~/Venvs/semirhage/bin/activate && source ~/Dropbox/tajmme-shared/yttan.env"
alias lanfear="cd ~/Code/lanfear"
alias graendal="cd ~/Code/graendal"
alias moghedien="cd ~/Code/moghedien"


# madr.se
# -------------------------------------------------------------------
alias madrse="cd ~/Code/madrse/backend && source ~/Venvs/madrse/bin/activate && source .env"
alias madrse-frontend="cd ~/Code/madrse/frontend"


# ll alias
# -------------------------------------------------------------------
alias ll="ls -G -AF"


# Git aliases
# -------------------------------------------------------------------
alias ga="git add"
alias gcam="git commit -am"
alias gcm="git commit -m"
alias gf="git fetch"
alias gs="git status"
alias gmd="git merge develop"
alias gpod="git push origin develop"
alias gpom="git push origin master"
alias gmod="git merge origin/develop"
alias gmom="git merge origin/master"
alias gcp="git cherry-pick"


# dotfiles alias
# -------------------------------------------------------------------
alias dotfiles="cd ~/Code/dotfiles"


# ASCII ART!
# -------------------------------------------------------------------
echo ''
echo ''
echo '     8888b. 888  888 '
echo '        "88b888  888 '
echo '    .d888888888  888 '
echo '    888  888Y88b 888 '
echo '    "Y888888 "Y88888 '
echo '                 888 '
echo '            Y8b d88P '
echo '             "Y88P"  '
echo ''