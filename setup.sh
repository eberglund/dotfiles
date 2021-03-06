#!/bin/bash

git submodule update --init --recursive

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s ${BASEDIR}/terminator ~/.config/terminator
ln -s ${BASEDIR}/.zshrc ~/.zshrc
ln -s ${BASEDIR}/.vimrc ~/.vimrc
