export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
alias ll='ls -l'
alias la='ls -a'

alias cdm='cd ~/dev/mahalo'

# django testing alias
alias djtest="DJANGO_TESTS=1 ./manage.py test"

export PATH=~/bin:/usr/local/bin:/usr/local/sbin/:$PATH
export PYTHONPATH=$HOME/Sites:$PYTHONPATH

# prompt
git_branch() {
	git branch 2>/dev/null|grep -e ^*|cut -d ' ' -f 2 
}

PS1="\e[0;32m(\$(git_branch)) $\e[m "

# virtualenv settings
export WORKON_HOME=$HOME/.virtualenvs
. virtualenvwrapper.sh
