#! /bin/zsh

set -ex

source ~/.dotfiles/profile.d/rbenv.sh

[ ! -d ~/.dotfiles/default-gems ] && (cd $(rbenv root) && ln -sf ~/.dotfiles/default-gems default-gems)

rbenv_plug_dir=$(rbenv root)/plugins
mkdir -p $rbenv_plug_dir

cd $rbenv_plug_dir

[ ! -d rbenv-default-gems ] && git clone git@github.com:rbenv/rbenv-default-gems.git
[ ! -d rbenv-ctags ] && git clone git@github.com:tpope/rbenv-ctags.git 

cd - 

rbenv install -s 3.1.3
rbenv global 3.1.3

rbenv ctags

