# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kennethreitz"
DEFAULT_USER="lucas"

alias zshconfig="nvim ~/.zshrc"

# Make sure tmux also uses nice colors
TERM=xterm-256color

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git celery django mercurial pip python virtualenv tmux)

source $ZSH/oh-my-zsh.sh

# Nice colourtheme
BASE16_SHELL=$HOME/dotfiles/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# User configuration
export PATH=$PATH:$HOME/.gem/ruby/2.3.0/bin:$HOME/bin:/usr/local/bin
export PATH=$PATH:$HOME/.conda/bin/
export PATH=$PATH:$HOME/.cargo/bin/
# export MANPATH="/usr/local/man:$MANPATH"

export EDITOR='nvim'

# Compilation flags
# Use all 4 cores
export MAKEFLAGS="-j4"

# Vi key bindings
bindkey -v
export KEYTIMEOUT=1
