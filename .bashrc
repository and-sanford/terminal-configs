

# Enable color support for ls and grep
export CLICOLOR=1
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Enable case-insensitive tab completion
shopt -s nocaseglob
shopt -s nocasematch

# Set up a colorful prompt with username, hostname, and current directory
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Alias definitions
alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../../'
# Searching for a term recursively in a directory
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# Simplify command usage
alias h="history"
alias j="jobs"
alias c="clear"
alias df="df -h"
alias du="du -h --max-depth=1"
alias free="free -h"

# History settings
HISTSIZE=1000          # Set history size to 1000
HISTCONTROL=ignoredups  # Avoid duplicates in history
shopt -s histappend     # Append to the history file instead of overwriting it

# Set default editor (e.g., nano or vim)
export VISUAL=nano
export EDITOR=nano

# Enable auto-completion for commands, filenames, and paths
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# Set default umask for permissions
umask 022

# Enable auto-correct for mistyped commands
shopt -s cdspell

# Add bin directories to PATH (for user-installed binaries)
export PATH=$HOME/bin:$PATH

# Enable faster command line completion (Tab completion)
bind 'TAB:menu-complete'


