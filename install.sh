#!/bin/sh

echo "Install started. . .\n"

if [[ "${SHELL}" = *"zsh"* ]] ; then
    echo "Shell is zsh" ; echo "source ${PWD}/src/updateAndSecurity.sh" >> ${HOME}/.zshrc
elif [[ "${SHELL}" = *"bash"* ]] ; then
    echo "Shell is bash" ; echo "source ${PWD}/src/updateAndSecurity.sh" >> ${HOME}/.bashrc
else echo "Shell not supported." ; return
fi

echo "Install finished!\n"
