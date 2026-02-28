#! /bin/zsh

set -ex

source ~/.dotfiles/profile.d/rbenv.sh

rbenv install -s 4.0.1
rbenv global 4.0.1
