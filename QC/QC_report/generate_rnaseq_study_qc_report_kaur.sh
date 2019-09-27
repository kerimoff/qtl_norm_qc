# Alasoo_2018
rmarkdown::render(
    input = "/gpfs/hpc/home/a72094/projects/qtl_norm_qc/QC/QC_report/rnaseq_study_QC_report.Rmd", 
    output_file = "~/Alasoo_2018_QC_report.html",
    params = list(
        set_title = "Alasoo_2018 QC report", 
        eqtl_utils_path = "/gpfs/hpc/home/a72094/projects/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/Alasoo_2018.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/Alasoo_2018/featureCounts/merged_gene_counts.txt",
        mbv_files_dir = "/gpfs/hpc/home/a72094/datasets/processed/Alasoo_2018/MBV",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Alasoo_2018/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Alasoo_2018/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv"))
