Rscript normaliseCountMatrix.R\
 -c /gpfs/hpc/home/kerimov/rnaseq/results_Alasoo_2018/featureCounts/merged_gene_counts.txt\
 -s data/sample_metadata/Alasoo_2018.tsv\
 -p /gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz

Rscript normaliseCountMatrix.R\
 -c /gpfs/hpc/home/kerimov/rnaseq/results_Alasoo_2018/dexseq_exon_counts/merged_exon_counts.tsv\
 -s data/sample_metadata/Alasoo_2018.tsv\
 -p /gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/exon_counts_Ensembl_96_phenotype_metadata.tsv.gz\
 -q exon_counts

Rscript normaliseCountMatrix.R\
 -c /gpfs/hpc/home/kerimov/rnaseq/results_Alasoo_2018/Salmon/merged_counts/gencode.v30.transcripts/gencode.v30.transcripts_TPM_merged.txt\
 -s data/sample_metadata/Alasoo_2018.tsv\
 -p /gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/transcript_usage_Ensembl_96_phenotype_metadata.tsv.gz\
 -q transcript_usage

Rscript normaliseCountMatrix.R\
 -c /gpfs/hpc/home/kerimov/rnaseq/results_Alasoo_2018/Salmon/merged_counts/txrevise_merged_counts\
 -s data/sample_metadata/Alasoo_2018.tsv\
 -p /gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/txrevise_Ensembl_96_phenotype_metadata.tsv.gz\
 -q txrevise