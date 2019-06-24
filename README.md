# featurecounts_qc
This repo contains necessary tools to run Quality Control steps for featureCounts output to detect outliers and sample mislabeling

- [featurecounts_qc](#featurecountsqc)
  - [QC methods](#qc-methods)
    - [PCA](#pca)
    - [MDS](#mds)
    - [Sex-specific Gene Expression](#sex-specific-gene-expression)
- [Running the script](#running-the-script)
  - [Using Conda environment](#using-conda-environment)
  - [Using Docker Container](#using-docker-container)
    - [Using the provided Docker recipe (Dockerfile) to build the docker image](#using-the-provided-docker-recipe-dockerfile-to-build-the-docker-image)
    - [Using the ready-to-use container (DockerHub)](#using-the-ready-to-use-container-dockerhub)
    - [Executing the script with Docker container](#executing-the-script-with-docker-container)
  - [Using Singularity Container](#using-singularity-container)

## QC methods
To detect outliers we used PCA and MDS. And for sample mislabeling we used Sex-specific gene expression analysis

### PCA 
PCA is a linear dimension reduction method which aims to collect most of the variance in multidimensional dataset inside the principal components. As a result, it becomes possible to plot most of the variation and see if there are any samples in the dataset that look like obvious outliers. PCA is one of the most commonly used procedures to summarize the multivariate dataset and detect outliers in sample population.

### MDS
MDS is an exploratory technique used to identify unrecognized dimensions of the dataset (Mugavin, 2008). MDS reduces multidimensional dataset to relatively simple, easy-to-visualize structures, which helps us to identify outliers after plotting and analysing it. On contrast to PCA, MDS is a non-linear dimension reduction using distances between each pair of samples, and forces all of the data into less number of dimensions. We explored MDS outliers of phenotype count matrices by performing hierarchical clustering. TPM (Wagner et al. 2012) values were used in log2-transformed `(log2(0.1 + TPM))` scale. Pearson was used as the correlation measure and distance between samples were defined as `distance = 1 - correlation`.

We used isoMDS function from MASS R package (Cox and Cox 2000; Ripley 2007; Vernables and Ripley 2002) with two desired dimensions `(k=2)` to summarize the data into.

### Sex-specific Gene Expression
We generate a scatter plot with XIST gene ([ENSG00000229807](http://www.ensembl.org/Homo_sapiens/Gene/Summary?db=core;g=ENSG00000229807;r=X:73820651-73852723) - found only in females) expression in horizontal axis and Y chromosome gene expression (found only in males) in vertical axis, and set the color of each sample according to its donor’s sex.


# Running the script
**To run the featurecounts_qc this github repository should be cloned (downloaded) into the local machine and navigated into the cloned folder:**
```bash
git clone https://github.com/kerimoff/featurecounts_qc.git
cd featurecounts_qc
```

You have 3 different ways to run the script

* By creating [Conda environment](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#creating-an-environment-with-commands) and executing command inside it
* Using [Docker](https://www.docker.com/) Container 
* Using [Singularity](https://www.sylabs.io/docs/) Container

## Using Conda environment
To create a conda environment with recipe (be sure that you are in the `featurecounts_qc` directory) run:

```bash
conda env create -f environment.yml #Creates the conda environment from provided recipe 
conda activate feature_counts_qc # feature_counts_qc is the default name of the container
```
This created conda environment will contain all the necessary softwares to run the script. After activation of the conda environment you can run the script. See [running the script]()

```bash
Rscript feature_counts_qc.R\
 -f data/path/to/featureCountsMatrix.txt\
 -s data/path/to/sampleMetadata.tsv\
 -p data/path/to/phenotypeMetadata.txt.gz\
 -o ./RNA_QC_script_results\
 --build_html TRUE
```

## Using Docker Container
All required dependencies are built into the Docker container. 

Docker container can be build from a provided Dockerfile recipe or can be pulled from DockerHub

### Using the provided Docker recipe (Dockerfile) to build the docker image
  
To build a docker container with Dockerfile recipe (be sure that you are in the `featurecounts_qc` directory) run:
```bash
docker build -t kerimoff/featurecounts_qc .
```

### Using the ready-to-use container (DockerHub)

To use the pre-built container located in DockerHub no additional steps required. When the container with `kerimoff/featurecounts_qc` tag is run docker checks the existing images in local computer and if it does not exist it automatically tries to pull it from DockerHub.

### Executing the script with Docker container
To execute the script we should first run the container.
```bash
docker run -idt -v "$(pwd)":/fc_qc_dir -w /fc_qc_dir --name fc_qc_container kerimoff/featurecounts_qc bash
```
This will start our container (with `fc_qc_container` name) in detached mode and mount our directory `featurecounts_qc` to `/fc_qc_dir` directory of running container. 

To check if the your container's status you can run
```bash
docker ps -a
```
You will see that there is a running container with the `fc_qc_container` name (usually in first row)

You should move your data into `featurecounts_qc` folder in order to make it available to running container. See [example dataset]()

```bash
docker exec -it fc_qc_container Rscript feature_counts_qc.R\
 -f data/path/to/featureCountsMatrix.txt\
 -s data/path/to/sampleMetadata.tsv\
 -p data/path/to/phenotypeMetadata.txt.gz\
 -o ./RNA_QC_script_results\
 --build_html TRUE
```

Or it is more readable and user-friendly if you create a shell script (as we did with example data) and execute the script

```R
# This is the content of run_fc_qc.sh
Rscript feature_counts_qc.R\
 -f data/path/to/featureCountsMatrix.txt\
 -s data/path/to/sampleMetadata.tsv\
 -p data/path/to/phenotypeMetadata.txt.gz\
 -o ./RNA_QC_script_results\
 --build_html TRUE
```

and then execute this shell script

```bash
chmod +x run_fc_qc.sh
docker exec -it fc_qc_container bash run_fc_qc.sh
```

## Using Singularity Container

