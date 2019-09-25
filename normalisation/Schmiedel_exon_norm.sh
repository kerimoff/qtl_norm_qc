Rscript normaliseCountMatrix.R\
 -c /gpfs/hpc/home/a72094/datasets/processed/Schmiedel_2018/dexseq_exon_counts/merged_exon_counts.tsv\
 -s /gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/Schmiedel_2018.tsv\
 -p /gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/exon_counts_Ensembl_96_phenotype_metadata.tsv.gz\
 -o /gpfs/hpc/home/kerimov/featurecounts_qc/results_Schmiedel_2018_exon/\
 -q exon_counts\
 --eqtlutils /gpfs/hpc/home/a72094/projects/eQTLUtils\
 --filter_qc TRUE

 
 