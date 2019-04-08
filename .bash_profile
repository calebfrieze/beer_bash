# Displays current git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Edits the bash prompt and finishes off with a nice cold beer
export PS1="\[\[\033[01;34m\]\w \$(parse_git_branch)\[\033[00m\]\n🍺 "
