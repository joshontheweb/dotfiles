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



# init virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

# add ~/bin to path
PATH=$PATH:$HOME/bin
