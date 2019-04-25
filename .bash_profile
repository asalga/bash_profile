export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#export PS1="\[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "


if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}




