export PATH="$(brew --prefix)/bin:$PATH"
export PATH="$(brew --prefix)/sbin:$PATH"
export PATH="$(brew --prefix)/opt/mysql@5.7/bin:$PATH"
export PATH="$(brew --prefix)/opt/gettext/bin:$PATH"
export PATH="$HOME/software/bin:$PATH"

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export PATH="$PATH:./bin"

export GIT_EDITOR=vim
export EDITOR=nvim
export JAVA_HOME=`/usr/libexec/java_home`
export ENABLE_BOOTSNAP=1

[ -f $HOME/bin/zshrc.local ] && source $HOME/bin/zshrc.local
[ -f $HOME/bin/aliases.sh ] && source $HOME/bin/aliases.sh
[ -f $HOME/bin/fzf.sh ] && source $HOME/bin/fzf.sh

eval "$(rbenv init -)"
