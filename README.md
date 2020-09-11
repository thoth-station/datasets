# Thoth Datasets

This repo contains notebooks to download and explore the datasets provided by Thoth Team.

The datasets are available from two sources:

- On Kaggle under [Thoth Station](https://www.kaggle.com/thothstation/datasets), where you can also use them directly through Kaggle kernels.
If you want to work locally, just download the dataset after signing in with your account.

- As [Git LFS](https://git-lfs.github.com/) under this repo if you want to work on your local machine.

## Overview

The goal of this repo is to provide datasets widely available and useful for data scientists.
Thoth Team within the office of the CTO at Red Hat has collected datasets that can be made open source within the IT domain for training Machine Learning models.

## Videos

- [Introduction to Thoth Datasets](https://www.youtube.com/watch?v=_tZo7eIOzJI)

## Datasets

Each Dataset created has reference to source for the data created and the motivation behind it. Moreover for each class of datasets you can find notebooks that use those data to produce results.
You have example of results in each class of datasets.

### Thoth Solver Datasets

[Thoth Solver Datasets](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-solver-dataset/ThothSolverDataset.ipynb) are based on solver reports created using [Thoth Dependency Solver](https://github.com/thoth-station/solver)
which tries to answer a simple question - what packages will be installed (resolved by pip or any Python compliant dependency resolver) for the provided stack?

### Thoth Performance Datasets

[Thoth Performance Datasets](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-solver-dataset/ThothSolverDataset.ipynb) are created with one of the components of Thoth called [Amun](https://github.com/thoth-station/amun-api).
This service acts as an execution engine for Thoth where applications are built and tested using [Thoth Performance Indicators (PI)](https://github.com/thoth-station/performance).
Amun can be scheduled through another component in Thoth called [Dependency Monkey](https://github.com/thoth-station/adviser/blob/master/docs/source/dependency_monkey.rst).
This component aims to automatically verify software stacks and aggregate relevant observations.
[Thoth Performance Datasets](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-solver-dataset/ThothSolverDataset.ipynb) contains tests on performance for software stacks for different types of applications (e.g Machine Learning).

### Thoth Security Datasets

[Thoth Security Datasets](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-solver-dataset/ThothSolverDataset.ipynb) contain outputs from two Thoth Security Indicators (SI) Analyzers and aggregated results from those two:

1. [SI-bandit](https://github.com/thoth-station/si-bandit) is an analyzer for security indicators based on [bandit](https://pypi.org/project/bandit/) Python package,
    a tool designed to find common security issues in Python code. This Python package has different [classes of tests](https://readthedocs.org/projects/bandit/downloads/pdf/latest/):

    - B1xx misc tests
    - B2xx application/framework misconfiguration
    - B3xx blacklists (calls)
    - B4xx blacklists (imports)
    - B5xx cryptography
    - B6xx injection
    - B7xx XSS

    Each test in a group has two assigned parameters:

    - level of SEVERITY.
    - level of CONFIDENCE.

    that are manually assigned.

2. [SI-cloc](https://github.com/thoth-station/si-cloc) is an analyzer for security indicators based on [cloc](https://github.com/AlDanial/cloc) RPM package
    that counts blank lines, comment lines, and physical lines of source code in many programming languages.
    It's important to take into account some of the known [limitations](https://github.com/AlDanial/cloc#limitations-) for this package:

    - Lines containing both source code and comments are counted as lines of code.
    - Python docstrings can serve several purposes. They may contain documentation, comment out blocks of code,
    or they can be regular strings (when they appear on the right hand side of an assignment or as a function argument).
    cloc is unable to infer the meaning of docstrings by context; by default, cloc treats all docstrings as comments.
    The switch ``--docstring-as--code`` treats all docstrings as code.
    - Language definition files read with ``--read-lang-def`` or ``--force-lang-def`` must be plain ASCII text files.

## Working on your branch (Git LFS)

This repository relies on [Git LFS](https://git-lfs.github.com/),
therefore you need to install `Git LFS` following these [instructions] (https://git-lfs.github.com/)
in order to use the datasets when you change branch using `git ceckout`.

## Start working on the data

After cloning the repo follow these steps:

1. Install `pipenv`.

```bash
pip install pipenv
```

2. Install the dependencies provided in `Pipfile` and `Pipfile.lock` in an environment.

```bash
pipenv install
```

3. Start using the notebook provided or work on your own notebook with the dataset.

```bash
pipenv run jupyter-notebook
```

## How you can use the Data

You can download and use this data for free for your own purpose, all we ask is three things

- you cite Thoth Team as the source if you use the data;
- you accept that you are solely responsible for how you use the data;
- you do not sell this data to anyone, it is free!
