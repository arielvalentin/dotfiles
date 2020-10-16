#! /bin/sh

set -e

echo "Show hidden files in finder"

defaults write com.apple.Finder AppleShowAllFiles true && killall Finder

echo "Install all homebrew dependencies"

brew bundle

pip3 install --user --upgrade pynvim

echo "Lets write some shortcuts"

(cd ~/ && ln -sf dotfiles/tmux.conf .tmux.conf &&
  ln -sf dotfiles/gitignore_global .gitignore_global &&
  ln -sf dotfiles/gitignore_global .ignore &&
  ln -sf dotfiles/ctags.d .ctags.d)

echo "Update zshrc"

(cd ~/ && echo "source $HOME/dotfiles/zshrc" >> .zshrc)

echo "Configure nvim"

(cd ~/ && mkdir -p ~/.config && ln -sf dotfiles/vim nvim)

echo "Install npm dependencies"
npm install -g prettier

echo "Install Global Gems for VSCode"
bundle install --system
