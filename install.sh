#!/bin/sh
echo "${PWD}, ${0}, ${SHELL}"

if [[ "${SHELL}" = *"zsh"* ]] ; then
    echo "zsh"
elif [[ "${SHELL}" = *"bash"* ]] ; then
    echo "bash"
else echo "Shell not supported."
fi
