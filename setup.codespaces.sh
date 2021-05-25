#!/bin/sh

exec > >(tee -i $HOME/creation.log)
exec 2>&1

set -ex

apt-get install universal-ctags direnv jq ripgrep zsh-git-prompt fzf

current_dir=$(pwd)
ln -sf $current_dir/.dotfiles/$file $HOME/.dotfiles

for file in tmux.conf gitignore_global ctags.d irbrc zshrc; do
  ln -sf $HOME/.dotfiles/$file $HOME/.$file
done

(cd $HOME && ln -sf .gitignore_global .ignore)

git config --global commit.gpgsign true
