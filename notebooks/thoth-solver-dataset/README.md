# Thoth Solver Datasets

Thoth Solver Datasets are based on solver reports created using [Thoth Dependency Solver](https://github.com/thoth-station/solver)
which tries to answer a simple question - what packages will be installed (resolved by pip or any Python compliant dependency resolver) for the provided stack?

## Thoth Solver Dataset v1.0

This dataset is made by 10000 solver reports in json format: ~436Mb once extracted and it is described in the notebook called [Thoth Solver Dataset](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-solver-dataset/ThothSolverDataset.ipynb).

This notebook explore solver reports and show some of the possible errors that can be identified. If you want to know more just run the notebook!

One application that was created using this type of dataset is [Solver Error Reporter](https://github.com/thoth-station/solver-errors-reporter).
It performs Clustering on all errors to identify the class of errors for each solver registered in Thoth. Thanks to this component Thoth Team is able to discover errors
present in packages and take actions on them or create new advices for users on why something cannot be used.

## Thoth Solver Dataset v2.0

This updated dataset has 4434 solver reports in json format: ~703Mb after extraction and it is described in the notebook called [Thoth Solver Dataset-v2.0](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-solver-dataset/ThothSolverDataset-v2.0.ipynb).

This dataset was generated with the updated version of thoth-solver 1.10.1 and has additional information compared to Dataset v1.0

Feel free to use the [ThothSolverDataset-v2.0](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-solver-dataset/ThothSolverDataset-v2.0.ipynb) as a starting point of your investigation.
