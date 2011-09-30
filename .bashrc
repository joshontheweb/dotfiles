
# source custom rc file
if [ -e '.customrc' ]
then
	. .customrc
fi

# Colors for the pretty
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Compiler options recommended by various people
# export ARCHFLAGS="-arch x86_64"
# export CC=/usr/bin/gcc-4.2
# export CCFLAGS='-arch i386 -arch x86_64 -pipe'
# export CFLAGS='-arch i386 -arch x86_64 -pipe -no-cpp-precomp'
# export CXXFLAGS='-arch i386 -arch x86_64 -pipe'
# export LDFLAGS='-arch i386 -arch x86_64 -bind_at_load'

# ls aliases
alias ll='ls -l'
alias la='ls -a'

# easy command for nixing .pyc files
alias rmpyc='find . -type f -name "*.pyc" -print0 | xargs -0 rm -v'

# add ~/bin to path
PATH=$PATH:$HOME/bin

BRIGHT=1

FG_BLACK=30
FG_RED=31
FG_GREEN=32
FG_YELLOW=33
FG_BLUE=34
FG_VIOLET=35
FG_CYAN=36
FG_WHITE=37

FG_NULL=00

BG_BLACK=40
BG_RED=41
BG_GREEN=42
BG_YELLOW=43
BG_BLUE=44
BG_VIOLET=45
BG_CYAN=46
BG_WHITE=47

BG_NULL=00

##
# ANSI Escape Commands
##
ESC="\033"
NORMAL="\[$ESC[m\]"
RESET="\[$ESC[${DULL};${FG_WHITE};${BG_NULL}m\]"

##
# Shortcuts for Colored Text ( Bright and FG Only )
##

# DULL TEXT
BLACK="\[$ESC[${DULL};${FG_BLACK}m\]"
RED="\[$ESC[${DULL};${FG_RED}m\]"
GREEN="\[$ESC[${DULL};${FG_GREEN}m\]"
YELLOW="\[$ESC[${DULL};${FG_YELLOW}m\]"
BLUE="\[$ESC[${DULL};${FG_BLUE}m\]"
VIOLET="\[$ESC[${DULL};${FG_VIOLET}m\]"
CYAN="\[$ESC[${DULL};${FG_CYAN}m\]"
WHITE="\[$ESC[${DULL};${FG_WHITE}m\]"

# BRIGHT TEXT
BRIGHT_BLACK="\[$ESC[${BRIGHT};${FG_BLACK}m\]"
BRIGHT_RED="\[$ESC[${BRIGHT};${FG_RED}m\]"
BRIGHT_GREEN="\[$ESC[${BRIGHT};${FG_GREEN}m\]"
BRIGHT_YELLOW="\[$ESC[${BRIGHT};${FG_YELLOW}m\]"
BRIGHT_BLUE="\[$ESC[${BRIGHT};${FG_BLUE}m\]"
BRIGHT_VIOLET="\[$ESC[${BRIGHT};${FG_VIOLET}m\]"
BRIGHT_CYAN="\[$ESC[${BRIGHT};${FG_CYAN}m\]"
BRIGHT_WHITE="\[$ESC[${BRIGHT};${FG_WHITE}m\]"

# REV TEXT as an example
REV_CYAN="\[$ESC[${DULL};${BG_WHITE};${BG_CYAN}m\]"
REV_RED="\[$ESC[${DULL};${FG_YELLOW}; ${BG_RED}m\]"

# prompt
git_branch() {
    git branch 2>/dev/null|grep -e ^*|cut -d ' ' -f 2
}

PS1="${GREEN}(\$(git_branch))${RESET} "

