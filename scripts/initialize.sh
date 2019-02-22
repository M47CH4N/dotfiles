#!/bin/bash

set -e

pip3 install neovim

zsh_path="$(which zsh)"
echo $zsh_path | sudo tee -a /etc/shells
chsh -s $zsh_path

