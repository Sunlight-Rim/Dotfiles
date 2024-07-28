# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration
autoload -U colors && colors
PS1="%{$fg[magenta]%}▒▓█%{$fg[black]%}%{$bg[magenta]%}%n%{$reset_color%}%{$fg[magenta]%}█▓▒ %m %{$fg[green]%}%~%{$reset_color%} "

# ALIASES
alias cc="clear"
alias python="python3"
alias config_zsh="gedit ~/.zshrc &"
alias config_kitty="gedit ~/.config/kitty/kitty.conf &"
alias icat="kitty +kitten icat"

ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=white
ZSH_HIGHLIGHT_STYLES[path]=fg=none
ZSH_HIGHLIGHT_STYLES[alias]=fg=white
ZSH_HIGHLIGHT_STYLES[builtin]=fg=white
ZSH_HIGHLIGHT_STYLES[command]=fg=white
ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue,bold

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
