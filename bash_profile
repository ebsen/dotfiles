# Simpler bash prompt in Terminal.app
# Black       0;30     Dark Gray     1;30
# Blue        0;34     Light Blue    1;34
# Green       0;32     Light Green   1;32
# Cyan        0;36     Light Cyan    1;36
# Red         0;31     Light Red     1;31
# Purple      0;35     Light Purple  1;35
# Brown       0;33     Yellow        1;33
# Light Gray  0;37     White         1;37
promptColor="\[\033[0;35m\]"
endColor="\[\033[0m\]"
export PS1="$promptColor\w$ $endColor" 

# Enable syntax highlighting for commands like `ls` and such
alias ls="ls -G"

# Bash completion (installed via Homebrew, but not Homebrew's completion)
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

# Homebrew Bash completion (from their Tips n Tricks section)
source `brew --prefix`/Library/Contributions/brew_bash_completion.sh

# PATH ammendment to put Homebrew-installed apps in front of system-provided ones
# homebrew="/usr/local/bin:/usr/local/sbin:/usr/local/opt/ruby/bin:/usr/local/share/npm/bin"
homebrew="/usr/local/bin"
# $HOME/.rbenv/bin:$PATH
export PATH=$homebrew:$PATH
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# export GEM_HOME='/usr/local'

# To enable (rbenv) shims and autocompletion:
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# 
# To use Homebrew's directories rather than ~/.rbenv add to your profile:
#   export RBENV_ROOT=/usr/local/var/rbenv