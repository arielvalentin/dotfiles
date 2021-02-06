if [ -f $HOME/.fzf.zsh ]; then
  source $HOME/.fzf.zsh
  # export FZF_DEFAULT_COMMAND='ag --skip-vcs-ignores --nocolor -g "" --path-to-ignore ~/.ignore'
  export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
  # export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  # export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
fi
