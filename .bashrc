#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

#Cow ascii with fortune.
command cowsay $(fortune)

PATH=$HOME/bin:$PATH
export PATH

# Vim for default editor
export EDITOR=vim

#auto-complete
complete -cf sudo
complete -cf man
source ~/.config/git-completion.bash # git auto complete

#Color output
export LESS="-R"


#Alias
if [ -f .alias ]; then
    . .alias
fi

#functions
if [ -f .functions ]; then
    . .functions
fi
