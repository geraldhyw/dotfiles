## Soft links settings:
- `mkdir -p ~/.config/nvim`
- `mkdir -p ~/.config/gitui`
- `ln -s ~/Documents/Projects/dotfiles/init.lua ~/.config/nvim/init.lua`
- `ln -s ~/Documents/Projects/dotfiles/.wezterm.lua ~/.wezterm.lua`
- `ln -s ~/Documents/Projects/dotfiles/.spaceshiprc.zh ~/.spaceshiprc.zh`
- `ln -s ~/Documents/Projects/dotfiles/.zshrc ~/.zshrc`
- `ln -s ~/Documents/Projects/dotfiles/.tmux.conf ~/.tmux.conf`
- `ln -s ~/Documents/Projects/dotfiles/.gitconfig ~/.gitconfig`
- `ln -s ~/Documents/Projects/dotfiles/.gitignore_global ~/.gitignore_global`
- `ln -s ~/Documents/Projects/dotfiles/.gitui-keys.ron ~/.config/gitui/key_bindings.ron`
- `ln -s ~/Documents/Projects/dotfiles/.gitui-theme.ron ~/.config/gitui/theme.ron`

## Installation
- Install Terminal app
- Install Xcode and Accept Xcode T&C
- Install homebrew + nvm
- `brew install ruby stylemistake/formulae/runner tmuxinator tmux neovim python3 gh font-fira-code-nerd-font fzf fd bat ripgrep git-delta tree-sitter tree-sitter-cli stylua lua-language-server gitui hashicorp/tap/terraform antigen`
- `brew tap hashicorp/tap`
- `npm install -g neovim @fsouza/prettierd typescript typescript-language-server vscode-langservers-extracted`
- Restart terminal app

## Neovim:
For python-provider, we need to:
- `python3 -m venv ./pyenv`
- `source ./pyenv/bin/activate`
- `pip install pynvim`
- Restart terminal app
- Open neovim
  + Run :checkhealth ensure it is OK
  + Run :Lazy ensure it is OK
