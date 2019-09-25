# Alasoo_2018
rmarkdown::render(
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/rnaseq_study_QC_report.Rmd", 
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/Alasoo_2018_QC_report.html",
    params = list(
        set_title = "Alasoo_2018 QC report", 
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/Alasoo_2018.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/Alasoo_2018/featureCounts/merged_gene_counts.txt",
        mbv_files_dir = "/gpfs/hpc/home/a72094/datasets/processed/Alasoo_2018/MBV",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Alasoo_2018/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Alasoo_2018/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv"))

# BLUEPRINT_PE
rmarkdown::render(
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/rnaseq_study_QC_report.Rmd", 
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/BLUEPRINT_PE_QC_report.html",
    params = list(
        set_title = "BLUEPRINT_PE QC report", 
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/BLUEPRINT_PE.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/BLUEPRINT_PE/featureCounts/merged_gene_counts.txt",
        mbv_files_dir = "/gpfs/hpc/home/a72094/datasets/processed/BLUEPRINT_PE/MBV",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_BLUEPRINT/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_BLUEPRINT/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv"))

# BLUEPRINT_SE
rmarkdown::render(
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/rnaseq_study_QC_report.Rmd", 
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/BLUEPRINT_SE_QC_report.html",
    params = list(
        set_title = "BLUEPRINT_SE QC report", 
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/BLUEPRINT_SE.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/BLUEPRINT_SE/featureCounts/merged_gene_counts.txt",
        mbv_files_dir = "/gpfs/hpc/home/a72094/datasets/processed/BLUEPRINT_SE/MBV",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_BLUEPRINT/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_BLUEPRINT/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv"))

# BrainSeq
rmarkdown::render(
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/rnaseq_study_QC_report.Rmd", 
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/BrainSeq_QC_report.html",
    params = list(
        set_title = "BrainSeq QC report", 
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/BrainSeq.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/BrainSeq/featureCounts/merged_gene_counts.txt",
        mbv_files_dir = "/gpfs/hpc/home/a72094/datasets/processed/BrainSeq/MBV",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_BrainSeq/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_BrainSeq/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv"))

# GENCORD
rmarkdown::render(
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/rnaseq_study_QC_report.Rmd", 
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/GENCORD_QC_report.html",
    params = list(
        set_title = "GENCORD QC report", 
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/GENCORD.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/GENCORD/featureCounts/merged_gene_counts.txt",
        mbv_files_dir = "/gpfs/hpc/home/a72094/datasets/processed/GENCORD/MBV",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_GENCORD/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_GENCORD/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv"))

# GEUVADIS
rmarkdown::render(
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/rnaseq_study_QC_report.Rmd", 
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/GEUVADIS_QC_report.html",
    params = list(
        set_title = "GEUVADIS QC report", 
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/GEUVADIS.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/GEUVADIS/featureCounts/merged_gene_counts.txt",
        mbv_files_dir = "/gpfs/hpc/home/a72094/datasets/processed/GEUVADIS/MBV",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_GEUVADIS/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_GEUVADIS/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv"))

# HipSci
rmarkdown::render(
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/rnaseq_study_QC_report.Rmd", 
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/HipSci_QC_report.html",
    params = list(
        set_title = "HipSci QC report", 
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/HipSci.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/HipSci/featureCounts/merged_gene_counts.txt",
        mbv_files_dir = "/gpfs/hpc/home/a72094/datasets/processed/HipSci/MBV",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_HipSci/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_HipSci/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv"))

# Nedelec_2016
rmarkdown::render(
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/rnaseq_study_QC_report.Rmd", 
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/Nedelec_2016_QC_report.html",
    params = list(
        set_title = "Nedelec_2016 QC report", 
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/Nedelec_2016.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/Nedelec_2016/featureCounts/merged_gene_counts.txt",
        mbv_files_dir = "/gpfs/hpc/home/a72094/datasets/processed/Nedelec_2016/MBV",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Nedelec_2016/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Nedelec_2016/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv"))

# Quach_2016
rmarkdown::render(
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/rnaseq_study_QC_report.Rmd", 
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/Quach_2016_QC_report.html",
    params = list(
        set_title = "Quach_2016 QC report", 
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/Quach_2016.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/Quach_2016/featureCounts/merged_gene_counts.txt",
        mbv_files_dir = "/gpfs/hpc/home/a72094/datasets/processed/Quach_2016/MBV",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Quach_2016/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Quach_2016/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv"))

# ROSMAP
rmarkdown::render(
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/rnaseq_study_QC_report.Rmd", 
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/ROSMAP_QC_report.html",
    params = list(
        set_title = "ROSMAP QC report", 
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/ROSMAP.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/ROSMAP/featureCounts/merged_gene_counts.txt",
        mbv_files_dir = "/gpfs/hpc/home/a72094/datasets/processed/ROSMAP/MBV",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_ROSMAP/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_ROSMAP/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv"))


# Schwartzentruber_2018
rmarkdown::render(
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/rnaseq_study_QC_report.Rmd", 
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/Schwartzentruber_2018_QC_report.html",
    params = list(
        set_title = "Schwartzentruber_2018 QC report", 
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/Schwartzentruber_2018.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/Schwartzentruber_2018/featureCounts/merged_gene_counts.txt",
        mbv_files_dir = "/gpfs/hpc/home/a72094/datasets/processed/Schwartzentruber_2018/MBV",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Schwartzentruber_2018/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_Schwartzentruber_2018/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv"))

# TwinsUK
rmarkdown::render(
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/rnaseq_study_QC_report.Rmd", 
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/TwinsUK_QC_report.html",
    params = list(
        set_title = "TwinsUK QC report", 
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/TwinsUK.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/TwinsUK/featureCounts/merged_gene_counts.txt",
        mbv_files_dir = "/gpfs/hpc/home/a72094/datasets/processed/TwinsUK/MBV",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_TwinsUK/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_TwinsUK/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv"))

# van_de_Bunt_2015
rmarkdown::render(
    input = "/gpfs/hpc/home/kerimov/qtl_norm_qc/QC/QC_report/rnaseq_study_QC_report.Rmd", 
    output_file = "/gpfs/hpc/home/kerimov/SampleArcheology/QC_reports/van_de_Bunt_2015_QC_report.html",
    params = list(
        set_title = "van_de_Bunt_2015 QC report", 
        eqtl_utils_path = "/gpfs/hpc/home/kerimov/eQTLUtils",
        sample_meta_path = "/gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/van_de_Bunt_2015.tsv",
        count_matrix_path = "/gpfs/hpc/home/a72094/datasets/processed/van_de_Bunt_2015/featureCounts/merged_gene_counts.txt",
        mbv_files_dir = "/gpfs/hpc/home/a72094/datasets/processed/van_de_Bunt_2015/MBV",
        projections = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_van_de_Bunt_2015/new_dataset_scores.profile.adj",
        pca_table = "/gpfs/hpc/home/kerimov/Genome_QC_Dev/results_van_de_Bunt_2015/main_overlapped_pca.vect",
        phenotype_meta_path = "/gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/phenotype_metadata/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz",
        source_populations_file = "/gpfs/hpc/home/kerimov/1000G_genome/source_data/igsr_samples.tsv"))
