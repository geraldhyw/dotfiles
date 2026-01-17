#!/bin/bash

export CLICOLOR=1
export LS_COLORS=GxFxCxDxBxegedabagaced
export LC_ALL='en_US.UTF-8'  
export LANG='en_US.UTF-8'
export EDITOR='nvim'
alias ll='ls -al'
alias ls='ls -GFh'

# zsh plugins using antigen installed using homebrew
source /opt/homebrew/share/antigen/antigen.zsh

# Vim-like key binding
antigen bundle jeffreytse/zsh-vi-mode

# Prompt theme
# Configuration at .spaceshiprc.zsh
antigen theme denysdovhan/spaceship-prompt

# Various auto-completions in zsh
# Used for tmuxinator, nvm
# https://github.com/zsh-users/zsh-completions/tree/master/src
antigen bundle zsh-users/zsh-completions

antigen bundle zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080,underline"

# zsh-syntax-highlighting must be the last!
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

# Extra bindings
bindkey '^L' autosuggest-accept # move right to accept suggestion
bindkey '^D' backward-delete-word

# Manual link to stree
alias stree="/Applications/SourceTree.app/Contents/Resources/stree"

# Set tmuxinator project config folder
export TMUXINATOR_CONFIG="$HOME/Documents/Projects/dotfiles/tmuxinator"
alias mux="tmuxinator"

# History of commands
# Save all commands to a history file
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export HISTFILE=~/.zsh_history
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY

# Add Wezterm to PATH
export PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"


### Coding Specific Configs ###

# Use Homebrew git over mac git
export PATH="/opt/homebrew/bin/git:${PATH}"

# NodeJS
# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
# Use local npm binaries over global npm binaries
export PATH=./node_modules/.bin:${PATH}

# Ruby
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.0.0/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib:LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include:$CPPFLAGS"

if [ -f "$HOME/.zsh_secrets" ]; then
  source "$HOME/.zsh_secrets"
fi
