Rscript feature_counts_qc.R\
 -c /gpfs/hpc/home/a72094/datasets/processed/BrainSeq/featureCounts/merged_gene_counts.txt\
 -s /gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/BrainSeq.tsv\
 -p /gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz\
 -o ./results/RNA_QC_script_results_BrainSeq\
 --eqtlutils /gpfs/hpc/home/kerimov/eQTLUtils\
 --filter_qc TRUE

