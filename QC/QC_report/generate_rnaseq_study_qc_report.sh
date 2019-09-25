rmarkdown::render(
    input = "/home/kerimov/work/feature_counts_QC/QC/QC_report/rnaseq_study_QC_report.Rmd", 
    output_file = "/home/kerimov/work/feature_counts_QC/QC/QC_report/BrainSeq_QC_report.html",
    params = list(
        set_title = "BrainSeq QC report", 
        eqtl_utils_path = "/home/kerimov/work/eQTLUtils",
        sample_meta_path = "/home/kerimov/work/SampleArcheology/studies/cleaned/BrainSeq.tsv",
        count_matrix_path = "/home/kerimov/work/feature_counts_QC/data/counts/BrainSeq/merged_gene_counts.txt",
        mbv_files_dir = "/home/kerimov/work/feature_counts_QC/data/counts/BrainSeq/MBV/",
        projections = "/home/kerimov/work/feature_counts_QC/data/popAssign/results_BrainSeq/new_dataset_scores.profile.adj",
        pca_table = "/home/kerimov/work/feature_counts_QC/data/popAssign/results_BrainSeq/main_overlapped_pca.vect",
        phenotype_meta_path = "/home/kerimov/work/feature_counts_QC/data/annotations/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/home/kerimov/work/feature_counts_QC/data/popAssign/igsr_samples.tsv"))