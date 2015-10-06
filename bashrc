export PATH=/usr/local/bin:$PATH
export CLICOLOR=1
LSCOLORS=GxFxCxDxBxegedabagaced

PS1="\[\e[33;40m\][\t] \[\e[36;40m\]\\u\[\e[33;40m\]@\[\e[36;40m\]\h\[\e[0m\]:\[\e[33;40m\]< \[\033[01;34m\]\w \[\e[33;40m\]>\[\e[0m\] \$ "


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# start ssh-agent and add default id_rsa
eval "$(ssh-agent -s)" >> /dev/null
ssh-add ~/.ssh/id_rsa