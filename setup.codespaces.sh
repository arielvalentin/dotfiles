#!/bin/zsh

set -xe

sudo apt-get install universal-ctags direnv jq ripgrep fzf

current_dir=$(pwd)
ln -sf $current_dir $HOME/.dotfiles

for file in tmux.conf gitignore_global ctags.d irbrc zshrc; do
  ln -sf $HOME/.dotfiles/$file $HOME/.$file
done

(cd $HOME && ln -sf .gitignore_global .ignore)

# git config --global commit.gpgsign true
