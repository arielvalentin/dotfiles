#! /bin/sh

set -e

source ~/.dotfiles/profile.d/rbenv.sh

(cd $(rbenv root) && ln -sf ~/.dotfiles/default-gems default-gems)

mkdir -p $(rbenv root)/plugins

git clone https://github.com/rbenv/rbenv-default-gems.git $(rbenv root)/plugins/rbenv-default-gems

git clone git://github.com/tpope/rbenv-ctags.git $(rbenv root)/plugins/rbenv-ctags

rbenv install --global 2.7.2

rbenv ctags

# bundle config --global build.mysql2 --with-mysql-dir="$(brew --prefix mysql@5.7) --with-openssl-dir=$(brew --prefix openssl@1.1)"
