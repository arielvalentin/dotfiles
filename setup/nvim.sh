#!/bin/zsh

set -ex

(cd ~/ && mkdir -p ~/.config && cd ~/.config && ln -sf ~/.dotfiles/vim . && mv vim nvim)

# Install pynvim into an isolated venv managed by pipx
command -v pipx >/dev/null
pipx ensurepath || true

# Install/upgrade the pynvim package in its own venv
pipx install pynvim || pipx upgrade pynvim

# Point neovim at the pipx venv Python that has pynvim installed
NVIM_PY="$(pipx runpip pynvim python -c 'import sys; print(sys.executable)')"
mkdir -p ~/.config/nvim
cat > ~/.config/nvim/lua/python_host.lua <<EOF
vim.g.python3_host_prog = "${NVIM_PY}"
EOF

nvim --headless +PlugInstall +qall

