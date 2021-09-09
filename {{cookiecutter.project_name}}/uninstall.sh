#!/usr/bin/env bash

set -e

echo
read -n 1 -p "Do you want to remove the environment {{cookiecutter.environment_name}}? " REPLY

if [ "$REPLY" == "y" ] || [ "$REPLY" == "Y" ]; then

    source $HOME/.bashrc

    conda deactivate
    conda env remove -n "{{cookiecutter.environment_name}}"

    rm -rf $HOME/.local/share/jupyter/kernels/"{{cookiecutter.environment_name}}"
    echo "Done."
fi


exit 0
