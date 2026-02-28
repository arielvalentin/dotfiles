#!/bin/zsh

set -ex

echo "Show hidden files in finder"

defaults write com.apple.Finder AppleShowAllFiles true && killall Finder

echo "Install all homebrew dependencies"

brew upgrade && brew update && brew bundle

echo "Set FZF"

$(brew --prefix)/opt/fzf/install --all

echo "Lets write some shortcuts"

(ln -sf ~/.dotfiles/tmux.conf ~/.tmux.conf &&
  ln -sf ~/.dotfiles/gitignore_global ~/.gitignore_global &&
  ln -sf ~/.dotfiles/gitignore_global ~/.ignore)

echo "Update zshrc"

(cd $HOME && echo "source $HOME/.dotfiles/zshrc" >> .zshrc)

echo "Install ruby dependencies"

./setup/rbenv.sh

echo "Configure nvim"

./setup/nvim.sh

echo "Configure gnupg"
(ln -sf ~/.dotfiles/gpg-agent.conf ~/.gnupg/gpg-agent.conf)
