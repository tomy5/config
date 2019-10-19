#!/bin/bash

if [ -e "${HOME}/.bash_aliases" ]; then
    diff ./bash_aliases ${HOME}/.bash_aliases
    if [ $? -ne 0 ]; then
        cp ./bash_aliases ${HOME}/.bash_aliases
    fi
else
    cp ./bash_aliases ${HOME}/.bash_aliases
fi
if [ -f "${HOME}/.bash_aliases" ]; then
        . ${HOME}/.bash_aliases
fi