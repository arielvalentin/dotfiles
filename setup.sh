#! /bin/sh

set -e

echo "Show hidden files in finder"

defaults write com.apple.Finder AppleShowAllFiles true && killall Finder

echo "Install all homebrew dependencies"

brew bundle

echo "Lets write some shortcuts"

(cd ~/ && ln -s bin/tmux.conf .tmux.conf &&
  ln -s bin/gitignore_global .gitignore_global &&
  ln -s bin/gitignore_global .ignore &&
  ln -s bin/ctags.d .ctags.d)

echo "Update zshrc"

(cd ~/ && echo "source $HOME/bin/zshrc" >> .zshrc)

echo "Configure nvim"

(cd ~/ && mkdir -p ~/.config && ln -s bin/vim nvim)

echo "Install Global Gems for VSCode"
bundle install --system
