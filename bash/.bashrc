# Modified from:
# http://stefaanlippens.net/my_bashrc_aliases_profile_and_other_stuff/

# Enable programmable completion features.
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

# Set the PS1 prompt (with colors).
PS1="\[\e[36;1m\]\h:\[\e[32;1m\]\w$ \[\e[0m\]"

# Set the default editor to vim.
export EDITOR=vim

# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

# Append commands to the bash command history file (~/.bash_history)
# instead of overwriting it.
shopt -s histappend

# Append commands to the history every time a prompt is shown,
# instead of after closing the session.
PROMPT_COMMAND='history -a'

# Add bash aliases.
if [ -f ~/.bash_alias ]; then
    source ~/.bash_alias
fi
