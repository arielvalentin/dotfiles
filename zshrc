unsetopt nomatch
bindkey -e

export GPG_TTY=$(tty)
export PATH="$(brew --prefix)/bin:$PATH"
export PATH="$(brew --prefix)/sbin:$PATH"
export PATH="$(brew --prefix)/opt/gettext/bin:$PATH"
export PATH="$(brew --prefix)/opt/icu4c/bin:$PATH"
export PATH="$(brew --prefix)/opt/icu4c/sbin:$PATH"
export PATH="$(brew --prefix)/gnu-getopt/bin:$PATH"
export PATH="$(brew --prefix)/opt/openjdk/bin:$PATH"
export PATH="$HOME/software/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export PATH="$PATH:./bin"
alias python="$(brew --prefix)/bin/python3"
alias pip="$(brew --prefix)/bin/pip3"

export GIT_EDITOR=vim
export EDITOR=nvim
[ -d $(brew --prefix)/opt/openjdk ] && export JAVA_HOME=$(brew --prefix)/opt/openjdk
# export ENABLE_BOOTSNAP=1

export LDFLAGS="-L$(brew --prefix)/opt/icu4c/lib"
export CPPFLAGS="-I$(brew --prefix)/opt/icu4c/include"
export PKG_CONFIG_PATH="$(brew --prefix)/opt/icu4c/lib/pkgconfig"

# I do not think I will need these si[ -f $HOME/.dotfiles/zshrc.local ] && source $HOME/.dotfiles/zshrc.local
[ -f $HOME/.dotfiles/aliases.sh ] && source $HOME/.dotfiles/aliases.sh
[ -f $HOME/.dotfiles/fzf.sh ] && source $HOME/.dotfiles/fzf.sh
[ -f $HOME/.dotfiles/git-contrib.sh ] && source $HOME/.dotfiles/git-contrib.sh


if command -v rbenv &> /dev/null
then
  eval "$(rbenv init -)"
else
  echo "rbenv is not installed"
fi

if command -v direnv &> /dev/null
then
  eval "$(direnv hook zsh)"
else
  echo "direnv is not installed"
fi

new_line() {
    printf "\n\U1F918 "
}
[ -f "$(brew --prefix)/opt/zsh-git-prompt/zshrc.sh" ] && source "$(brew --prefix)/opt/zsh-git-prompt/zshrc.sh"
PROMPT='%B%m %~%b$(git_super_status) %# $(new_line)'

function get_github_token {
  printf "protocol=https\nhost=github.com\n" \
    | git credential-osxkeychain get \
    | awk 'BEGIN { FS = "=" }; $1 ~ /password/ { print $2 }' | tr -d '\n\r'
}
# export GITHUB_AUTH_TOKEN=$(get_github_token)
export GITHUB_USER=arielvalentin
export GITHUB_ACTOR=$GITHUB_USER
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
