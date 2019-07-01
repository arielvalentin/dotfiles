export PATH="$(brew --prefix)/bin:$PATH"
export PATH="$(brew --prefix)/sbin:$PATH"
export PATH="$(brew --prefix)/opt/mysql@5.7/bin:$PATH"

[ -f $HOME/bin/fzf.zsh ] && source $HOME/bin/fzf.zsh

eval "$(rbenv init -)"

