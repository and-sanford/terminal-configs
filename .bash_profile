# ~/.bash_profile: Login shell configuration

# Source the .bashrc file for interactive shells
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Set PATH for user-installed software (if needed)
export PATH="$HOME/.local/bin:$PATH"

# Set terminal window title to user and hostname
echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"
