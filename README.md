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

- Thoth Solver Datasets

- Thoth Performance Datasets

- Thoth Security Datasets

### Thoth Solver Datasets

Thoth Solver Datasets are based on solver reports created using [Thoth Dependency Solver](https://github.com/thoth-station/solver)
which tries to answer a simple question - what packages will be installed (resolved by pip or any Python compliant dependency resolver) for the provided stack?

#### Thoth Solver Dataset v1.0

Thoth Solver Dataset is made by 10000 solver reports in json format: ~436Mb once extracted. 
([.zip file](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-solver-dataset/thoth-solver-dataset-v1.0.zip) ~102.8Mb Git LFS)
and it is described in the notebook called [Thoth Solver Dataset](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-solver-dataset/ThothSolverDataset.ipynb).

This notebook explore solver reports and show some of the possible errors that can be identified. If you want to know more just run the notebook!

One application that was created using this type of dataset is [Solver Error Reporter](https://github.com/thoth-station/solver-errors-reporter).
It performs Clustering on all errors to identify the class of errors for each solver registered in Thoth. Thanks to this component Thoth Team is able to discover errors
present in packages and take actions on them or create new advices for users on why something cannot be used.

### Thoth Performance Datasets

Thoth Performance Datasets are created with one of the components of Thoth called [Amun](https://github.com/thoth-station/amun-api).
This service acts as an execution engine for Thoth where applications are built and tested using [Thoth Performance Indicators (PI)](https://github.com/thoth-station/performance).
Amun can be scheduled through another component in Thoth called [Dependency Monkey](https://github.com/thoth-station/adviser/blob/master/docs/source/dependency_monkey.rst).
This component aims to automatically verify software stacks and aggregate relevant observations.
Thoth Performance Datasets contains tests on performance for software stacks for different types of applications (e.g Machine Learning).

#### Thoth Performance Dataset v2.0

Thoth Performance Dataset is made by ~3300 files in json format: ~23Mb once extracted.
([.zip file](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-performance-dataset/thoth-performance-dataset-v1.0.zip))
and it is described in the notebook called [Thoth Performance Dataset](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-performance-dataset/ThothPerformanceDataset.ipynb).

This notebook shows what is the structure of inspections and what information can be find analyzing several ones.

#### Thoth TensorFlow==2.1.0 Stack combinations

Thoth Performance Dataset is made by ~295 inspection reports in json format: ~39Mb once extracted.
([.zip file](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-performance-dataset/thoth-performance-dataset-v1.0.zip))
and it is described in the notebook called [Performance of TensorFlow Software stack combinations](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-performance-dataset/PerformanceTensorFlow2.1.0SoftwareStackCombinations.ipynb).

This notebook will show how Thoth can easily use [Dependency Monkey](https://github.com/thoth-station/adviser/blob/master/docs/source/dependency_monkey.rst)
and [Amun](https://github.com/thoth-station/amun-api) to create all possible combinations of software stack for a certain package
([Dependency Monkey Zoo](https://github.com/thoth-station/dependency-monkey-zoo)) and how it can easily identify errors and performance differences across stacks.

Some of the results you can find:

![Performance TensorFlow==2.1.0 Stack Combinations](https://raw.githubusercontent.com/thoth-station/datasets/master/notebooks/thoth-performance-dataset/images/TF2.1.0Performance2DPlot.png)

If you want to know more just run the notebook!

### Thoth Security Datasets

Thoth Security Datasets contain outputs from two Thoth Security Indicators (SI) Analyzers and aggregated results from those two:

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

#### Thoth Security Dataset v2.0

Thoth Security Dataset is made by ~1 SI-bandit reports and ~6385 SI-cloc reports in json format: ~368.4Mb once extracted.
([.zip file](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-security-dataset/thoth-security-dataset-v2.0.zip))
and it is described in the notebook called [Thoth Security Dataset](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-security-dataset/ThothSecurityDataset.ipynb).

This notebook explore results from the two analyzer run in Security Indicator workflow and show the type of analysis and information that Thoth is learning to advice on security.

Some of the results you can find:

![Vulnerabilities Trend across versions](https://raw.githubusercontent.com/thoth-station/datasets/master/notebooks/thoth-security-dataset/images/VulnerabilityScorePythonPackages.png)

![Vulnerabilities Trend for specific packages](https://raw.githubusercontent.com/thoth-station/datasets/master/notebooks/thoth-security-dataset/images/VulnerabilitiesTrendPackagewerkzeug.png)

If you want to know more just run the notebook!

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
