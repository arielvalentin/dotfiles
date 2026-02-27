#! /bin/zsh

set -ex

source ~/.dotfiles/profile.d/rbenv.sh

rbenv install -s 3.1.3
rbenv global 3.1.3
