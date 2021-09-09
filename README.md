# repro-conda-template

Template for reproducible Anaconda environments.


## Requirements

- Anaconda or [Miniconda](https://docs.conda.io/en/latest/miniconda.html#linux-installers) with `conda init` properly configured in `.bashrc`.
- [`cookiecutter`](https://cookiecutter.readthedocs.io/en/latest/) installed in the `base` environment or system-wide (through `apt` or your Linux distro's package manager).


## Usage

```
cookiecutter gh:epassaro/repro-conda-template
```

In the future, just run `conda env create -f frozen-env.yml` to reproduce your environment.


## Parameters

- `project_name`: your project's name.
- `short_description`: a short description of your project.
- `environment_name`: name of the `conda` environment.
- `default_channel`: main source of packages (default is `conda-forge`).
- `extra_channels`: other source of packages (for example `defaults`).
- `python_version`: default is `latest`.
- `numpy_version`: default is `latest`.
- `scipy_version`: default is `latest`.
- `astropy_version`: default is `latest`.
- `pandas_version`: default is `latest`.
- `matplotlib_version`: default is `latest`.
- `notebook_version`: default is `latest`.
- `conda_packages` extra packages to install from `conda`.
- `pip_packages` extra packages to install from `pip`.
- `freeze_environment`: freeze packages after installation (default is `y`).
- `install_nb_kernel`: install IPython kernel to use with a different Jupyter installation (default is `y`).
- `use_mamba`: use `mamba` to install the environment when available (default is `y`).
- `use_scm`: initialize a `git` repository in the project's folder (default is `y`).
