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
$ '


# Code projects
# -------------------------------------------------------------------
alias semirhage="cd ~/Code/semirhage && source ~/Venvs/semirhage/bin/activate && source ~/Dropbox/tajmme-shared/yttan.env"
alias lanfear="cd ~/Code/lanfear"
alias graendal="cd ~/Code/graendal"
alias mesaana="cd ~/Code/mesaana"


# madr.se
# -------------------------------------------------------------------
alias madrse="cd ~/Code/madrse/backend && source ~/Venvs/madrse/bin/activate && source .env"
alias madrse-frontend="cd ~/Code/madrse/frontend"


# ll alias
# -------------------------------------------------------------------
alias ll="ls -GAFho"


# re-read zshrc
# -------------------------------------------------------------------
alias zshrc="source ~/.zshrc"


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
alias gcb="git checkout -b"
alias gco="git checkout"
alias gm="git merge"
alias gd='git diff'
alias glo='git log --oneline'


# NODE aliases
# -------------------------------------------------------------------
alias nrs="npm install && npm run serve"
alias nrw="npm install && npm run watch"
alias nrd="npm install && npm run deploy"
alias nrr="npm install && npm run release"


# npm alias
# -------------------------------------------------------------------
alias ni="npm install"
alias nis="npm install --save"
alias nisd="npm install --save-dev"
alias nrb="npm run build"
alias nrs="npm run serve"
alias nrr="npm run release"
alias nrw="npm run watch"


# Key bindings
# Treasure here: https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/key-bindings.zsh
# -------------------------------------------------------------------
bindkey -e

bindkey '\ew' kill-region
bindkey -s '\el' 'ls\n'
bindkey '^r' history-incremental-search-backward
if [[ "${terminfo[kpp]}" != "" ]]; then
  bindkey "${terminfo[kpp]}" up-line-or-history
fi
if [[ "${terminfo[knp]}" != "" ]]; then
  bindkey "${terminfo[knp]}" down-line-or-history
fi

if [[ "${terminfo[kcuu1]}" != "" ]]; then
  bindkey "${terminfo[kcuu1]}" up-line-or-search
fi
if [[ "${terminfo[kcud1]}" != "" ]]; then
  bindkey "${terminfo[kcud1]}" down-line-or-search
fi

if [[ "${terminfo[khome]}" != "" ]]; then
  bindkey "${terminfo[khome]}" beginning-of-line
fi
if [[ "${terminfo[kend]}" != "" ]]; then
  bindkey "${terminfo[kend]}"  end-of-line
fi

bindkey ' ' magic-space

if [[ "${terminfo[kcbt]}" != "" ]]; then
  bindkey "${terminfo[kcbt]}" reverse-menu-complete
fi

bindkey '^?' backward-delete-char
if [[ "${terminfo[kdch1]}" != "" ]]; then
  bindkey "${terminfo[kdch1]}" delete-char
else
  bindkey "^[[3~" delete-char
  bindkey "^[3;5~" delete-char
  bindkey "\e[3~" delete-char
fi


# dotfiles alias
# -------------------------------------------------------------------
alias dotfiles="cd ~/Code/dotfiles"


# sudo alias
# -------------------------------------------------------------------
alias fucking='sudo'
alias effing='fucking'


# Local extras
# -------------------------------------------------------------------
if [ -e ~/.zshrc.local ]
then
    source ~/.zshrc.local
fi


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
