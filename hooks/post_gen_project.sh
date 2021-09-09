#!/usr/bin/env bash

set -e

echo; echo "Installing environment..."
if [ "{{cookiecutter.use_mamba|lower()}}" == "y" ] && [ -x "$(command -v mamba)" ]; then
    mamba env create -f environment.yml
else
    conda env create -f environment.yml
fi

if [ "{{cookiecutter.freeze_environment|lower()}}" == "y" ]; then
    conda env export -n "{{cookiecutter.environment_name}}" > frozen-env.yml
fi

if [ "{{cookiecutter.install_nb_kernel|lower()}}" == "y" ]; then
    source $HOME/.bashrc
    conda activate "{{cookiecutter.environment_name}}"
    python -m ipykernel install --user --name "{{cookiecutter.environment_name}}" --display-name "Python 3 ({{cookiecutter.environment_name}})"
fi

if [ "{{cookiecutter.use_scm|lower()}}" == "y" ]; then
    echo; git init -b main
fi


exit 0
