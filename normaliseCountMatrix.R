message(" ## Loading libraries: optparse")
suppressPackageStartupMessages(library("optparse"))

#Parse command-line options
option_list <- list(
  #TODO look around if there is a package recognizing delimiter in dataset
  make_option(c("-c", "--count_matrix"), type="character", default=NULL,
              help="Counts matrix file path. Tab separated file", metavar = "type"),
  make_option(c("-s", "--sample_meta"), type="character", default=NULL,
              help="Sample metadata file. Tab separated file", metavar = "type"),
  make_option(c("-p", "--phenotype_meta"), type="character", default=NULL,
              help="Phenotype metadata file. Tab separated file", metavar = "type"),
  make_option(c("-q", "--quant_method"), type="character", default="gene_counts",
              help="Quantification method. Possible values: gene_counts, leafcutter, txrevise, transcript_usage and exon_counts [default \"%default\"]", metavar = "type"),
  make_option(c("-o", "--outdir"), type="character", default="./normalised_results/",
              help="Path to the output directory. [default \"%default\"]", metavar = "type"),
  make_option(c("-e", "--eqtlutils"), type="character", default="./eQTLUtils",
              help="eQTLUtils path to be loaded by devtools. [default \"%default\"]", metavar = "type"),
  make_option(c("-n", "--name_of_study"), type="character", default=NULL,
              help="Name of the study. Optional", metavar = "type")
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
  opt$c="data/featureCounts_matrices/Alasoo_test_data/Alasoo_merged_gene_counts.txt"
  opt$s="data/sample_metadata/Alasoo_2018.tsv"
  opt$p="data/annotations/gene_counts_Ensembl_96_phenotype_metadata.tsv.gz"
  opt$q="gene_counts"
}

count_matrix_path = opt$c
sample_meta_path = opt$s
phenotype_meta_path = opt$p
output_dir = opt$o
eqtl_utils_path = opt$e
quant_method = opt$q
study_name = opt$n

message("######### Options: ######### ")
message("######### Working Directory  : ", getwd())
message("######### quant_method       : ", quant_method)
message("######### count_matrix_path  : ", count_matrix_path)
message("######### sample_meta_path   : ", sample_meta_path)
message("######### phenotype_meta_path: ", phenotype_meta_path)
message("######### output_dir         : ", output_dir)
message("######### eqtl_utils_path    : ", eqtl_utils_path)
message("######### opt_study_name     : ", study_name)

assertthat::assert_that(!is.null(count_matrix_path))
assertthat::assert_that(!is.null(sample_meta_path))
assertthat::assert_that(!is.null(phenotype_meta_path))

message("## Loading eQTLUtils ##")
suppressPackageStartupMessages(devtools::load_all(eqtl_utils_path))

message("## ")
# Read the inputs
message("## Reading sample metadata ##")
sample_metadata <- utils::read.csv(sample_meta_path, sep = '\t')

if (is.null(study_name)) { 
  assertthat::has_name(sample_metadata, "study" )
  study_name <- sample_metadata$study[1] 
}

message("## Reading phenotype metadata ##")
phenotype_meta = readr::read_delim(phenotype_meta_path, delim = "\t", col_types = "ccccciiicciidi")

message("## Reading count matrix ##")
data_fc <- utils::read.csv(count_matrix_path, sep = '\t')

message("## Make Summarized Experiment ##")
se <- eQTLUtils::makeSummarizedExperimentFromCountMatrix(assay = data_fc, row_data = phenotype_meta, col_data = sample_metadata)

if (!dir.exists(output_dir)){
  dir.create(output_dir, recursive = TRUE)
}

message("## Starting normalisation process... ##")
if (quant_method=="gene_counts") {
  cqn_norm <- eQTLUtils::qtltoolsPrepareSE(se, "featureCounts", filter_genotype_qc = FALSE, filter_rna_qc = FALSE)
  
  cqn_assay_fc_formatted <-  SummarizedExperiment::cbind(phenotype_id = rownames(assays(cqn_norm)[["cqn"]]), assays(cqn_norm)[["cqn"]])
  write.table(cqn_assay_fc_formatted, paste0(output_dir, paste0(study_name ,"_feature_counts_cqn_norm.tsv")), sep = "\t", quote = FALSE, row.names = FALSE, col.names = TRUE)
  
  message("## Normalised count matrix exported into: ", output_dir, study_name , "_feature_counts_cqn_norm.tsv")
} else if (quant_method=="tx") {
  
  
}