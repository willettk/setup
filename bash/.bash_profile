# Load .profile, containing login, non-bash related initializations.
source ~/.profile

# Load .bashrc, containing non-login related bash initializations.
source ~/.bashrc

# added by Anaconda3 4.2.0 installer
export PATH="//anaconda/bin:$PATH"

# Set iTerm tab title to current directory
addToPromptCommand() {
    if [[ ":$PROMPT_COMMAND:" != *":$1:"* ]]; then
        PROMPT_COMMAND="${PROMPT_COMMAND:+"$PROMPT_COMMAND:"}$1"
    fi
}

if [ $ITERM_SESSION_ID ]; then
  addToPromptCommand 'echo -ne "\033];${PWD##*/}\007"'
fi
