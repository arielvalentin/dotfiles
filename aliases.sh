alias vim='nvim'
alias ll='ls -alh'
alias mono="cd $HOME/github/github"
alias sync="cd $HOME/github/group-syncer"
alias update_github="git pull --rebase; git remote prune origin; git prune && script/bootstrap --local && bin/bundle clean && bin/rails db:migrate db:test:prepare"
alias ag='rg'
