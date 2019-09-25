rmarkdown::render( 
    input = "/home/kerimov/work/feature_counts_QC/QC/QC_report/array_study_QC_report.Rmd",
    output_file = "/home/kerimov/work/feature_counts_QC/QC/QC_report/Fairfax_2012_QC_report.Rmd",
    params = list(
        set_title = "Fairfax_2012 MicroArray QC report",
        eqtl_utils_path = "/home/kerimov/work/eQTLUtils",
        sample_meta_path = "/home/kerimov/work/SampleArcheology/studies/cleaned/Fairfax_2012.tsv",
        count_matrix_path = "/home/kerimov/work/feature_counts_QC/data/counts/micro_array/raw/Fairfax_2012.tsv.gz",
        projections = "/home/kerimov/work/feature_counts_QC/data/popAssign/results_Fairfax_2014/new_dataset_scores.profile.adj",
        pca_table = "/home/kerimov/work/feature_counts_QC/data/popAssign/results_Fairfax_2014/main_overlapped_pca.vect",
        phenotype_meta_path = "/home/kerimov/work/feature_counts_QC/data/annotations/HumanHT-12_V4_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/home/kerimov/work/feature_counts_QC/data/popAssign/igsr_samples.tsv"))
