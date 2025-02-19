#!/bin/bash

# symlink project config to $HOME
ln -s "$DF_WORKSPACE/git/.gitconfig" "$HOME/.gitconfig"

# define config edit function
_git_edit_config() {
  vim "$DF_WORKSPACE/git/.gitconfig"
}

# add function to ~/.bashrc if not present
if ! grep -q '_git_edit_config()' ~/.bashrc; then
  cat << 'EOF' >> ~/.bashrc

# dotfiles

_git_edit_config() {
  vim ~/eng/dotfiles/git/.gitconfig
}

alias _gec="_git_edit_config"
EOF
fi

# source ~/.bashrc to apply changes
source "$HOME/.bashrc"