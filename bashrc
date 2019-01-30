export PATH="$(brew --prefix)/bin:$PATH"
export PATH="$(brew --prefix)/sbin:$PATH"
export PATH="$(brew --prefix)/opt/gettext/bin:$PATH"
export PATH="$(brew --prefix)/opt/qt@5.5/bin:$PATH"
export PATH="$(brew --prefix)/opt/libxml2/bin:$PATH"
export PATH="$(brew --prefix)/opt/libxslt/bin:$PATH"

export GIT_EDITOR=vim
export EDITOR=nvim
export JAVA_HOME=`/usr/libexec/java_home`
export ENABLE_BOOTSNAP=1

alias vim='nvim'

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  export GIT_PROMPT_THEME=Solarized
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/bin/fzf.env ] && source ~/bin/fzf.env
[ -f ~/bin/ruby.env ] && source ~/bin/ruby.env
