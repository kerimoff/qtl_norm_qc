#!/bin/bash

echo '$0 = ' $0
echo '$1 = ' $1
echo '$2 = ' $2
echo '$3 = ' $3

if [ "$1" == "" ]; then
    echo "Input path is not provided"
else
    echo "Input path is: "$1
fi


if [ "$2" == "" ]; then
    echo "Sample metadata file is not provided"
else
    echo "Sample metadata file is: "$2
fi

# Check if input directoru exists
if [ ! -d "$2" ]; then
  echo $2" : Sample metadata file does not exist!"
  exit 1
fi


if [ "$3" == "" ]; then
    echo "Output path is not provided. Default output path results/ will be used"
else
    echo "Output path is: "$3
fi

# Check if input directoru exists
if [ ! -d "$1" ]; then
  echo "Input path does not exist!"
  exit 1
fi

echo "Starting normalisation of "$1 

Rscript normaliseCountMatrix.R\
 -c $1/featureCounts/merged_gene_counts.txt\
 -s $2\
 -p /gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz\
 -o $3

# Rscript normaliseCountMatrix.R\
#  -c /gpfs/hpc/home/kerimov/rnaseq/results_Alasoo_2018/dexseq_exon_counts/merged_exon_counts.tsv\
#  -s data/sample_metadata/Alasoo_2018.tsv\
#  -p /gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/exon_counts_Ensembl_96_phenotype_metadata.tsv.gz\
#  -q exon_counts

# Rscript normaliseCountMatrix.R\
#  -c /gpfs/hpc/home/kerimov/rnaseq/results_Alasoo_2018/Salmon/merged_counts/gencode.v30.transcripts/gencode.v30.transcripts_TPM_merged.txt\
#  -s data/sample_metadata/Alasoo_2018.tsv\
#  -p /gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/transcript_usage_Ensembl_96_phenotype_metadata.tsv.gz\
#  -q transcript_usage

# Rscript normaliseCountMatrix.R\
#  -c /gpfs/hpc/home/kerimov/rnaseq/results_Alasoo_2018/Salmon/merged_counts/txrevise_merged_counts\
#  -s data/sample_metadata/Alasoo_2018.tsv\
#  -p /gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/txrevise_Ensembl_96_phenotype_metadata.tsv.gz\
#  -q txrevise