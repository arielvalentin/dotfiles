#!/bin/zsh

set -xe

export DEBIAN_FRONTEND=noninteractive

sudo apt-get update
sudo apt-get -y install zsh-autosuggestions universal-ctags jq ripgrep fzf

current_dir=$(pwd)
ln -sf $current_dir $HOME/.dotfiles

for file in tmux.conf gitignore_global ctags.d irbrc; do
  ln -sf $HOME/.dotfiles/$file $HOME/.$file
done

ln -sf $HOME/.dotfiles/zshrc.codespaces $HOME/.zshrc

(cd $HOME && ln -sf .gitignore_global .ignore)

git config --global commit.gpgsign true
git config --global push.autoSetupRemote true
