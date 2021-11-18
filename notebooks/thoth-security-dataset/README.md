# Thoth Security Datasets

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

## Thoth Security Dataset v2.0

This dataset is made by ~1 SI-bandit reports and ~6385 SI-cloc reports in json format: ~368.4Mb once extracted and it is described in the notebook called [Thoth Security Dataset](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-security-dataset/ThothSecurityDataset.ipynb).

This notebook explore results from the two analyzer run in Security Indicator workflow and show the type of analysis and information that Thoth is learning to advice on security.

Some of the results you can find:

![Vulnerabilities Trend across versions](https://raw.githubusercontent.com/thoth-station/datasets/master/notebooks/thoth-security-dataset/images/VulnerabilityScorePythonPackages.png)

![Vulnerabilities Trend for specific packages](https://raw.githubusercontent.com/thoth-station/datasets/master/notebooks/thoth-security-dataset/images/VulnerabilitiesTrendPackagewerkzeug.png)

If you want to know more just run the [notebook](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-security-dataset/ThothSecurityDataset.ipynb)!

