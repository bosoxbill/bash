# Bash-y setup

Set this up by cloning it somethwere - [clonedir]

    $ ln -s [clonedir]/.bash_profile ~/.bash_profile
    $ ln -s [clonedir]/.bash_profile ~/.profile
    $ ln -s [clonedir]/.bash_colors ~/.bash_colors
    $ ln -s [clonedir]/.bash_aliases ~/.bash_aliases
    $ ln -s [clonedir]/.bash_functions ~/.bash_functions
    $ ln -s [clonedir]/.gitconfig ~/.gitconfig
    $ ln -s [clonedir]/.vim ~/.vim
    $ ln -s [clonedir]/.vimrc ~/.vimrc
    $ ln -s [clonedir]/.gvimrc ~/.gvimrc

In [clonedir]

    $ git submodule init
    $ git submodule update

In the [clonedir]/.vim directory

    $ git submodule init
    $ git submodule update

TODO: http://jeetworks.org/node/10
