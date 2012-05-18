#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

command cowsay $(fortune)

PATH=$HOME/bin:$PATH
export PATH

#auto-complete
complete -cf sudo
complete -cf man

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
