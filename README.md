# Intro to ML

## Data Science Virtual Machine (DSVM)

## Docker

Add inbound port rule to allow port `8888` (jupyter notebook server).

On local machine, use SSH tunneling to view the notebook in a browser:

```sh
ssh -L 8080:localhost:8888 <username>@<vm ip>
```

On the VM:

```sh
docker build -t <tag name> .
docker run -p 8888:8888 <image name>:<tag name> bash
```

On your local machine, view the notebook by navigating to:

```sh
http://localhost:8080
```