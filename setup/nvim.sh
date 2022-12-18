#!/bin/zsh

set -ex

(cd ~/ && mkdir -p ~/.config && cd ~/.config && ln -sf ~/.dotfiles/vim . && mv vim nvim)

pip3 install --user --upgrade pynvim
nvim --headless +PlugInstall +qall

