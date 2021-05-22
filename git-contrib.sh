if [ -d $HOME/.zsh ]; then
  zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
  fpath=(~/.zsh $fpath)

  autoload -Uz compinit && compinit
fi
