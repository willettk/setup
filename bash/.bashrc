# http://stefaanlippens.net/my_bashrc_aliases_profile_and_other_stuff/

# Enable programmable completion features.
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# Set the PS1 prompt (with colors).
PS1="\[\e[36;1m\]\h:\[\e[32;1m\]\w\[\e[33;1m\]\$(parse_git_branch) \[\e[0m\]$ \[\e[0m\]"

# Enable colors in `ls` for dark terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Set the default editor to vim.
export EDITOR=vim

# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

# Append commands to the bash command history file (~/.bash_history)
# instead of overwriting it.
shopt -s histappend

# Add bash aliases.
if [ -f ~/.bash_alias ]; then
    source ~/.bash_alias
fi
