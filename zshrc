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
autoload -U colors
colors
setopt PROMPT_SUBST
 
fpath=(~/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)
 
typeset -ga preexec_functions
typeset -ga precmd_functions
typeset -ga chpwd_functions
 
preexec_functions+='preexec_update_git_vars'
precmd_functions+='precmd_update_git_vars'
chpwd_functions+='chpwd_update_git_vars'

# PS1
# -------------------------------------------------------------------
export PS1='
%n@%m %. 
$ '


# ll alias
# -------------------------------------------------------------------
alias ll="ls -GAFho"


# re-read zshrc
# -------------------------------------------------------------------
alias zshrc="source ~/.zshrc"


# Git aliases
# -------------------------------------------------------------------
alias gap="git add -p"
alias gc='git commit'
alias gca="git commit -a"
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
alias gcod="git checkout develop"
alias gcom="git checkout master"
alias gd='git diff'
alias glo='git log --oneline --decorate'
alias gb='git branch -v'
alias gcane='git commit --amend --no-edit'
alias grh='git reset --hard'
alias gp='git push origin $(git rev-parse --abbrev-ref HEAD)'
alias gmo='git merge origin/$(git rev-parse --abbrev-ref HEAD)'
alias glenn='gp'
alias glass='gb'


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


# Misc Exports
# -------------------------------------------------------------------
export EDITOR='nano'
alias vi=vim


# sudo alias
# -------------------------------------------------------------------
alias fucking='sudo'
alias effing='fucking'


# Annat
# -------------------------------------------------------------------
alias vadre="curl -4 http://wttr.in/Östersund"
alias vedre="curl -4 http://wttr.in/Stockholm"
alias vädret="curl -4 http://wttr.in/Söderhamn"
alias whatsmyip="curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"
alias whois='dig -t ANY'


# Local extras
# -------------------------------------------------------------------
if [ -e ~/.zshrc.local ]
then
    source ~/.zshrc.local
fi

PROMPT=$'
%F{yellow}%n%f@%F{white}%m%f %{${fg[cyan]}%}%B%~%b$(prompt_git_info)%{${fg[default]}%}  
%# '
