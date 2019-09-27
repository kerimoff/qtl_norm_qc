# CEDAR
rmarkdown::render( 
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/array_study_QC_report.Rmd",
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/plotly_arrays/CEDAR_QC_report.html",
    params = list(
        set_title = "CEDAR MicroArray QC report",
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/CEDAR.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/expression_matrices/HumanHT-12_V4/raw/CEDAR.tsv.gz",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_CEDAR/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_CEDAR/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/HumanHT-12_V4_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv",
        use_plotly = TRUE))

# Fairfax_2012
rmarkdown::render( 
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/array_study_QC_report.Rmd",
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/plotly_arrays/Fairfax_2012_QC_report.html",
    params = list(
        set_title = "Fairfax_2012 MicroArray QC report",
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/Fairfax_2012.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/expression_matrices/HumanHT-12_V4/raw/Fairfax_2012.tsv.gz",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Fairfax_2014/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Fairfax_2014/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/HumanHT-12_V4_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv",
        use_plotly = TRUE))

# Fairfax_2014
rmarkdown::render( 
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/array_study_QC_report.Rmd",
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/plotly_arrays/Fairfax_2014_QC_report.html",
    params = list(
        set_title = "Fairfax_2014 MicroArray QC report",
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/Fairfax_2014.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/expression_matrices/HumanHT-12_V4/raw/Fairfax_2014.tsv.gz",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Fairfax_2014/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Fairfax_2014/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/HumanHT-12_V4_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv",
        use_plotly = TRUE))

# Kasela_2017
rmarkdown::render( 
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/array_study_QC_report.Rmd",
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/plotly_arrays/Kasela_2017_QC_report.html",
    params = list(
        set_title = "Kasela_2017 MicroArray QC report",
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/Kasela_2017.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/expression_matrices/HumanHT-12_V4/raw/Kasela_2017.tsv.gz",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Kasela_2017/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Kasela_2017/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/HumanHT-12_V4_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv",
        use_plotly = TRUE))

# Naranbhai_2015
rmarkdown::render( 
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/array_study_QC_report.Rmd",
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/plotly_arrays/Naranbhai_2015_QC_report.html",
    params = list(
        set_title = "Naranbhai_2015 MicroArray QC report",
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/Naranbhai_2015.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/expression_matrices/HumanHT-12_V4/raw/Naranbhai_2015.tsv.gz",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Fairfax_2014/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Fairfax_2014/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/HumanHT-12_V4_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv",
        use_plotly = TRUE))
