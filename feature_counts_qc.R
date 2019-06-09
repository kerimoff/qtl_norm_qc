message(" ## Loading libraries: optparse")
suppressPackageStartupMessages(library("optparse"))

#Parse command-line options
option_list <- list(
  #TODO look around if there is a package recognizing delimiter in dataset
  make_option(c("-f", "--feature_counts"), type="character", default=NULL,
              help="Feature counts matrix file path. Tab separated file", metavar = "type"),
  make_option(c("-s", "--sample_meta"), type="character", default=NULL,
              help="Sample metadata file. Tab separated file", metavar = "type"),
  make_option(c("-p", "--phenotype_meta"), type="character", default=NULL,
              help="Phenotype metadata file. Tab separated file", metavar = "type"),
  make_option(c("-o", "--outdir"), type="character", default="./RNA_QC_RESULTS/",
              help="Path to the output directory. [default \"%default\"]", metavar = "type"),
  make_option(c("-e", "--eqtlutils"), type="character", default="./eQTLUtils",
              help="eQTLUtils path to be loaded by devtools. [default \"%default\"]", metavar = "type"),
  make_option(c("-g", "--generate_plots"), type="logical", default=TRUE,
              help="Flag to generate the plots. [default \"%default\"]", metavar = "bool"),
  make_option(c("--build_html"), type="logical", default=FALSE,
              help="Flag to build plotly html plots [default \"%default\"]", metavar = "bool"),
  make_option(c("-m", "--mbvdir"), type="character", default=NULL,
              help="Path to the output directory. [default \"%default\"]", metavar = "type")
)


message(" ## Parsing options")
opt <- parse_args(OptionParser(option_list=option_list))

message(" ## Loading libraries: devtools, dplyr, SummarizedExperiment, cqn, data.table")
suppressPackageStartupMessages(library("devtools"))
suppressPackageStartupMessages(library("dplyr"))
suppressPackageStartupMessages(library("SummarizedExperiment"))
suppressPackageStartupMessages(library("cqn"))
suppressPackageStartupMessages(library("data.table"))

#Debugging
if (FALSE) {
  opt = list()
  opt$f="data/featureCounts_matrices/BLUEPRINT/feature_counts_merged.tsv"
  opt$s="data/sample_metadata/BLUEPRINT_SE.tsv"
  opt$p="data/annotations/Ensembl92_biomart_download.txt.gz"
}

feature_counts_path = opt$f
sample_meta_path = opt$s
phenotype_meta_path = opt$p
output_dir = opt$o
eqtl_utils_path = opt$e
generate_plots = opt$g
build_html = opt$build_html
mbv_files_dir = opt$m

message("######### Options: ######### ")
message("######### Working Directory  : ", getwd())
message("######### feature_counts_path: ", feature_counts_path)
message("######### sample_meta_path   : ", sample_meta_path)
message("######### phenotype_meta_path: ", phenotype_meta_path)
message("######### output_dir         : ", output_dir)
message("######### eqtl_utils_path    : ", eqtl_utils_path)
message("######### generate_plots     : ", generate_plots)
message("######### build_html         : ", build_html)
message("######### mbv_files_dir      : ", mbv_files_dir)

if (build_html) { 
  message(" ## Loading libraries: plotly")
  suppressPackageStartupMessages(library("plotly")) 
}

message("## Loading eQTLUtils ##")
devtools::load_all(eqtl_utils_path)

# Read the inputs
message("## Reading transcript metadata ##")
transcript_meta <- eQTLUtils::importBiomartMetadata(phenotype_meta_path)

message("## Reading feature counts matrix ##")
data_fc <- utils::read.csv(feature_counts_path, sep = '\t')
read_counts = data_fc %>% dplyr::filter(!(phenotype_id %like% "PAR_Y")) %>% eQTLUtils::reformatPhenotypeId()

message("## Reading sample metadata ##")
sample_metadata <- utils::read.csv(sample_meta_path, sep = '\t')

message("## Make Summarized Experiment ##")
se <- eQTLUtils::makeSummarizedExperimentForQTL(read_counts, transcript_meta, sample_metadata)

if (!dir.exists(paste0(output_dir, "/rds/"))){
  dir.create(paste0(output_dir, "/rds/"), recursive = TRUE)
}
if (!dir.exists(paste0(output_dir, "/tsv/"))){
  dir.create(paste0(output_dir, "/tsv/"), recursive = TRUE)
}

#add assertion checks for needed columns
study_name <- se$study[1]

message("## Perform PCA calculation ##")
pca_res <- eQTLUtils::plotPCAAnalysis(study_data_se = se, export_output = generate_plots, html_output = build_html, output_dir = output_dir)
saveRDS(pca_res, paste0(output_dir, paste0("/rds/", study_name ,"_pca_res.rds")))
readr::write_tsv(pca_res$pca_matrix, paste0(output_dir, paste0("/tsv/", study_name ,"_pca_matrix.tsv")))

message("## Perform MDS calculation ##")
mds_res <- eQTLUtils::plotMDSAnalysis(study_data_se = se, export_output = generate_plots, html_output = build_html, output_dir = output_dir)
saveRDS(mds_res, paste0(output_dir, paste0("/rds/", study_name ,"_mds_res.rds")))
readr::write_tsv(mds_res, paste0(output_dir, paste0("/tsv/", study_name ,"_mds_matrix.tsv")))

message("## Perform MDS calculation ##")
sex_spec_gene_exp <- eQTLUtils::plotSexQC(study_data = se, export_output = generate_plots, html_output = build_html, output_dir = output_dir)
saveRDS(sex_spec_gene_exp, paste0(output_dir, paste0("/rds/", study_name ,"_sex_spec_gene_exp_res.rds")))
readr::write_tsv(sex_spec_gene_exp, paste0(output_dir, paste0("/tsv/", study_name ,"_sex_spec_gene_exp_matrix.tsv")))

if (!is.null(mbv_files_dir)) {
  message("## Perform MBV Analysis ##")
  mbv_results = eQTLUtils::mbvImportData(mbv_dir = mbv_files_dir, suffix = ".mbv_output.txt")
  best_matches = purrr::map_df(mbv_results, eQTLUtils::mbvFindBestMatch, .id = "sample_id") %>% dplyr::arrange(distance)
  readr::write_tsv(best_matches, paste0(output_dir, paste0("/tsv/", study_name ,"_MBV_best_matches_matrix.tsv"))) 
  
  eQTLUtils::plot_mbv_results(mbv_files_path = mbv_files_dir, output_path = paste0(output_dir, "/MBV/"))
}
message("## RNA Quality Control is completed! ##")
message("## Starting Normalisation process... ##")

cqn_norm <- eQTLUtils::qtltoolsPrepareSE(se, "featureCounts", filter_genotype_qc = FALSE, filter_rna_qc = FALSE)

if (!dir.exists(paste0(output_dir, "/normalised/"))){
  dir.create(paste0(output_dir, "/normalised/"), recursive = TRUE)
}

cqn_assay_fc_formatted <-  SummarizedExperiment::cbind(phenotype_id = rownames(assays(cqn_norm)[["cqn"]]), assays(cqn_norm)[["cqn"]])
write.table(cqn_assay_fc_formatted, paste0(output_dir, paste0("/normalised/", study_name ,"feature_counts_cqn_norm.tsv")), sep = "\t", quote = FALSE, row.names = FALSE, col.names = TRUE)





















