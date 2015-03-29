#!/bin/bash

git submodule update --init --recursive

my_dir=${PWD}
link_filenames=(.bash_aliases .bash_colors .bash_functions .bash_profile .gitconfig .gitmodules .gemrc sshuttle)

for file in ${link_filenames[*]}; do

  ln -sf "${my_dir}/${file}" "$HOME/${file}"

done

ln -sf "${my_dir}/.bash_profile" "$HOME/.profile"

./vim/setup.sh
