#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

RED="\[$(tput setaf 001)\]"
GREEN="\[$(tput setaf 002)\]"
YELLOW="\[$(tput setaf 003)\]"
BLUE="\[$(tput setaf 004)\]"
PINK="\[$(tput setaf 005)\]"
CYAN="\[$(tput setaf 006)\]"
WHITE="\[$(tput setaf 007)\]"
RESET="\[$(tput sgr0)\]"

PS1="${GREEN}\u"
PS1+="${YELLOW}@"
PS1+="${BLUE}\h "
PS1+="${YELLOW}\w "
PS1+="${GREEN}> "
PS1+="${RESET}"

export PS1;

[ -e "/etc/DIR_COLORS" ] && DIR_COLORS="/etc/DIR_COLORS"
[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
[ -e "$DIR_COLORS" ] || DIR_COLORS=""
eval "`dircolors -b $DIR_COLORS`"
