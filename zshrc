export PATH="$(brew --prefix)/bin:$PATH"
export PATH="$(brew --prefix)/sbin:$PATH"
export PATH="$(brew --prefix)/opt/mysql@5.7/bin:$PATH"
export PATH="$(brew --prefix)/opt/gettext/bin:$PATH"

export GIT_EDITOR=vim
export EDITOR=nvim
export JAVA_HOME=`/usr/libexec/java_home`
export ENABLE_BOOTSNAP=1

[ -f $HOME/bin/aliases.sh ] && source $HOME/bin/aliases.sh
[ -f $HOME/bin/fzf.zsh ] && source $HOME/bin/fzf.zsh
[ -f $HOME/bin/aliases.sh ] && source $HOME/bin/aliases.sh

eval "$(rbenv init -)"
