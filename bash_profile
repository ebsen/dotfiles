# Simpler bash prompt in Terminal.app
promptColor="\[\033[1;36m\]"
endColor="\[\033[0m\]"
export PS1="$promptColor\w$ $endColor" 

# Enable syntax highlighting for commands like `ls` and such
alias ls="ls -G"

# PATH ammendment to put Homebrew-installed apps in front of system-provided ones
homebrew=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin
export PATH=$homebrew:$PATH

# Bash completion (installed via Homebrew, but not Homebrew's completion)
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi
