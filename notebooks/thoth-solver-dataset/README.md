# Thoth Solver Datasets

Thoth Solver Datasets are based on solver reports created using [Thoth Dependency Solver](https://github.com/thoth-station/solver)
which tries to answer a simple question - what packages will be installed (resolved by pip or any Python compliant dependency resolver) for the provided stack?

## Thoth Solver Dataset v1.0

This dataset is made by 10000 solver reports in json format: ~436Mb once extracted. 
([.zip file](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-solver-dataset/thoth-solver-dataset-v1.0.zip) ~102.8Mb Git LFS)
and it is described in the notebook called [Thoth Solver Dataset](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-solver-dataset/ThothSolverDataset.ipynb).

This notebook explore solver reports and show some of the possible errors that can be identified. If you want to know more just run the notebook!

One application that was created using this type of dataset is [Solver Error Reporter](https://github.com/thoth-station/solver-errors-reporter).
It performs Clustering on all errors to identify the class of errors for each solver registered in Thoth. Thanks to this component Thoth Team is able to discover errors
present in packages and take actions on them or create new advices for users on why something cannot be used.
