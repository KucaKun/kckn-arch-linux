#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


PS1='\e[1m$(tput setaf 208)\u $(tput setaf 33)\w\e[m\e[1m $\e[m '

add_alias () 
{ 
    echo -e "alias $1=\"$2\"" >> /home/kuca/.bashrc 
}
add_electron_alias ()
{
    add_alias "$1" "ELECTRON_OZONE_PLATFORM_HINT=auto $1"
}
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias code="ELECTRON_OZONE_PLATFORM_HINT=auto code"
alias tidal-hifi="ELECTRON_OZONE_PLATFORM_HINT=auto tidal-hifi"

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)"

source ~/python/bin/activate