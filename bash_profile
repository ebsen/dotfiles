# Simpler bash prompt in Terminal.app
promptColor="\[\033[1;36m\]"
endColor="\[\033[0m\]"
export PS1="$promptColor\w$ $endColor" 

# Syntax highlighting for commands like `ls` and such
alias ls="ls -G"

# PATH ammendment to put Homebrew-installed apps in front of system-provided ones
homebrew=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin
export PATH=$homebrew:$PATH

# Homebrew Ruby and Node (NPM) $PATH environment variables
#export PATH='/usr/local/Cellar/ruby/1.9.3-p286/bin:$PATH'
#export PATH='/usr/local/share/npm/bin:$PATH'
