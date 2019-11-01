for study in "Alasoo_2018" "BLUEPRINT_PE" "BLUEPRINT_SE" "BrainSeq" "GENCORD" "GEUVADIS" "HipSci" "Lepik_2017" "Nedelec_2016" "Quach_2016" "ROSMAP" "Schmiedel_2018" "Schwartzentruber_2018" "TwinsUK" "van_de_Bunt_2015"
do
    Rscript feature_counts_qc.R\
        -c /gpfs/hpc/home/a72094/datasets/processed/${study}/featureCounts/merged_gene_counts.txt\
        -s /gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/${study}.tsv\
        -p /gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz\
        -o ./results/${study}_RNA_QC_script_results_pre_filter\
        --eqtlutils /gpfs/hpc/home/kerimov/eQTLUtils\
        --filter_qc FALSE
        
done

