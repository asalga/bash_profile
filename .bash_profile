
#Andor Saga's Bash Profile


# Add syntax Highlights to terminal
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#export PS1="\[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Add current branch to current CLI line
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Git branch autocomplete
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#ALIASES
alias ls='ls -GFh'
alias ll='ls -al'
alias c=clear
alias g=grunt
alias co='git checkout'
alias gcp='git add . && git commit -m\\'.\\' && git push'
alias gp='git push'
alias bashs="source ~/.bash_profile"
alias ..='cd ..'

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PATH="/usr/local/opt/ruby/bin:$PATH"

