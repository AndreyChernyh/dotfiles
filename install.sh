#!/bin/bash

set -eux

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

dotfiles=( irbrc screenrc gemrc vimrc gitconfig gitignore_global caprc rspec tmux.conf ackrc ctags agignore ignore )
for dotfile in "${dotfiles[@]}"
do
  ln -sf ${SCRIPT_DIR}/${dotfile} ~/.${dotfile}
done

./install_packages.sh
./install_vim.sh
./install_gems.sh
./install_js.sh
