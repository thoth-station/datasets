# Thoth Performance Datasets

Thoth Performance Datasets are created with one of the components of Thoth called [Amun](https://github.com/thoth-station/amun-api).
This service acts as an execution engine for Thoth where applications are built and tested using [Thoth Performance Indicators (PI)](https://github.com/thoth-station/performance).
Amun can be scheduled through another component in Thoth called [Dependency Monkey](https://github.com/thoth-station/adviser/blob/master/docs/source/dependency_monkey.rst).
This component aims to automatically verify software stacks and aggregate relevant observations.
Thoth Performance Datasets contains tests on performance for software stacks for different types of applications (e.g Machine Learning).

## Thoth Performance Dataset v2.0

This dataset is made by ~3300 files in json format: ~23Mb once extracted.
([.zip file](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-performance-dataset/thoth-performance-dataset-v1.0.zip))
and it is described in the notebook called [Thoth Performance Dataset](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-performance-dataset/ThothPerformanceDataset.ipynb).

This notebook shows what is the structure of inspections and what information can be find analyzing several ones.

## Thoth TensorFlow==2.1.0 Stack combinations

This dataset is made by ~295 inspection reports in json format: ~39Mb once extracted.
([.zip file](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-performance-dataset/thoth-performance-dataset-v1.0.zip))
and it is described in the notebook called [Performance of TensorFlow Software stack combinations](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-performance-dataset/PerformanceTensorFlow2.1.0SoftwareStackCombinations.ipynb).

This notebook will show how Thoth can easily use [Dependency Monkey](https://github.com/thoth-station/adviser/blob/master/docs/source/dependency_monkey.rst)
and [Amun](https://github.com/thoth-station/amun-api) to create all possible combinations of software stack for a certain package
([Dependency Monkey Zoo](https://github.com/thoth-station/dependency-monkey-zoo)) and how it can easily identify errors and performance differences across stacks.

Some of the results you can find:

![Performance TensorFlow==2.1.0 Stack Combinations](https://raw.githubusercontent.com/thoth-station/datasets/master/notebooks/thoth-performance-dataset/images/TF2.1.0Performance2DPlot.png)

If you want to know more just run the [notebook](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-performance-dataset/PerformanceTensorFlow2.1.0SoftwareStackCombinations.ipynb)!

## Thoth TensorFlow==2.1.0 Stack combinations errors discovery

This dataset is made by ~823 files in json format: ~12.5Mb once extracted.
([.zip file](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-performance-dataset/thoth-performance-dataset-v1.0.zip))
and it is described in the notebook called [Performance of TensorFlow Software stack combinations](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-performance-dataset/PerformanceTensorFlow2.1.0SoftwareStackCombinationsErrors.ipynb).

Request for this analysis can be found [here](https://github.com/thoth-station/datasets/issues/16), while inputs used to create the dataset for this analysis can be find [here](https://github.com/thoth-station/dependency-monkey-zoo/tree/master/tensorflow/inspection-2020-09-08.1).

This notebook specifically, it's a continuation on the work down for [Performance of TensorFlow Software stack combinations](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-performance-dataset/PerformanceTensorFlow2.1.0SoftwareStackCombinations.ipynb), but in this case we could discover packages that do not allow TensorFlow 2.1.0 to run,
so that new advices can be created for users that rely on Thoth.

Some of the results you can find:

![TensorFlow==2.1.0 Stack Combinations Errors](https://raw.githubusercontent.com/thoth-station/datasets/master/notebooks/thoth-performance-dataset/images/TF2.1.0PerformanceSoftwareStackCombinationsErrors.png)

If you want to know more just run the [notebook](https://github.com/thoth-station/datasets/blob/master/notebooks/thoth-performance-dataset/PerformanceTensorFlow2.1.0SoftwareStackCombinationsErrors.ipynb)!
