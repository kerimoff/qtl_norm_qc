Rscript feature_counts_qc.R\
 -f data/featureCounts_matrices/BLUEPRINT/gene_expression_featureCounts.txt\
 -s data/sample_metadata/BLUEPRINT_SE.tsv\
 -p data/annotations/Ensembl92_biomart_download.txt.gz\
 -o .results/RNA_QC_script_results_mbv\
 -m ./MBV\
 --build_html TRUE
