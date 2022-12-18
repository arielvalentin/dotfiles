#!/bin/zsh

set -ex

echo "Show hidden files in finder"

defaults write com.apple.Finder AppleShowAllFiles true && killall Finder

echo "Install all homebrew dependencies"

brew upgrade && brew update && brew bundle

echo "Set FZF"

$(brew --prefix)/opt/fzf/install --all

echo "Lets write some shortcuts"

(cd ~/ && ln -sf .dotfiles/tmux.conf .tmux.conf &&
  ln -sf .dotfiles/gitignore_global .gitignore_global &&
  ln -sf .dotfiles/gitignore_global .ignore &&
  ln -sf .dotfiles/ctags.d .ctags.d)

echo "Update zshrc"

(cd ~/ && echo "source $HOME/.dotfiles/zshrc" >> .zshrc)

echo "Install ruby dependencies"

./setup/rbenv.sh

echo "Configure nvim"

./setup/nvim.sh

echo "Configure gnupg"
(cd ~/.gnupg && ln -sf $HOME/.dotfiles/gpg-agent.conf gpg-agent.conf)
