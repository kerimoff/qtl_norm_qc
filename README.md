# featurecounts_qc
This repo contains necessary tools to run Quality Control steps for featureCounts output to detect outliers and sample mislabeling

## PCA 








# Running the script
To run the featurecounts_qc this github repository should be cloned (downloaded) into the local machine:
```bash
git pull https://github.com/kerimoff/featurecounts_qc.git
cd featurecounts_qc
```

You have 3 different ways to run the script

1. By creating [Conda environment](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#creating-an-environment-with-commands) and executing command inside it
2. Using [Docker](https://www.docker.com/) Container 
3. Using [Singularity](https://www.sylabs.io/docs/) Container

## Using Conda environment
To create a conda environment with recipe (be sure that you are in the `featurecounts_qc` directory) run:

```bash
conda env create -f environment.yml #Creates the conda environment from provided recipe 
conda activate ______ 
```
This will create the conda environment
## Using Docker Container
All required dependencies are built into the Docker container. 

This container can be used in different ways:

### 1.  Use the provided Docker recipe (Dockerfile) to build the docker image
To build a docker container with recipe run:
```bash

```





### 2.  Use the ready-to-use container (DockerHub)
```bash
git pull https://github.com/kerimoff/featurecounts_qc.git
cd featurecounts_qc
docker run -idt -v "$(pwd)":/fc_qc -w /fc_qc kerimoff/featurecounts_qc
```


```bash
docker exec -it pensive_yalow bash run_fc_qc.sh
```