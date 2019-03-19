# Intro to ML

To work on the challenges in `/notebooks`, you can run jupyter notebooks on a
 `Data Science Virtual Machine` (DSVM) or with `Docker`.

## Getting Data

You can zip from Kaggle
[here](https://www.kaggle.com/asdasdasasdas/garbage-classification/version/2#Garbage%20classification.zip).

## DSVM

[DSVMs](https://docs.microsoft.com/en-us/azure/machine-learning/data-science-virtual-machine/overview)
 come with preinstalled data science tools like python, jupyter, azurecli,
  deep learning libaries, etc, so you can run `jupyter notebook` from the DSVM.

## Docker

### Run Locally

```sh
docker build -t <tag name> .
docker run -p 8888:8888 <image name>:<tag name>
```

Navigate to:

```sh
http://localhost:8888
```

### Run on VM

Add an inbound port rule to allow port `8888` (jupyter notebook server).

On your local machine, use SSH tunneling to view the notebook in a browser:

```sh
ssh -L 8080:localhost:8888 <username>@<vm ip>
```

On the VM:

```sh
docker build -t <tag name> .
docker run -p 8888:8888 <image name>:<tag name>
```

On your local machine, view the notebook by navigating to:

```sh
http://localhost:8080
```