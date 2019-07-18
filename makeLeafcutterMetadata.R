message(" ## Loading libraries: optparse")
suppressPackageStartupMessages(library("optparse"))

#Parse command-line options
option_list <- list(
  #TODO look around if there is a package recognizing delimiter in dataset
  make_option(c("-c", "--count_matrix"), type="character", default=NULL,
              help="LeafCutter count matrix file. Tab separated file", metavar = "type"),
  make_option(c("-t", "--transcript_meta"), type="character", default=NULL,
              help="Transcript metadata file downloaded from biomart. Tab separated file", metavar = "type"),
  make_option(c("-i", "--intron_annotations"), type="character", default=NULL,
              help="Leafcutter intron annotations extracted from transcriptome GTF file.", metavar = "type"),
  make_option(c("-o", "--out"), type="character", default=NULL,
              help="Output file path.", metavar = "type")
)

message(" ## Parsing options")
opt <- optparse::parse_args(OptionParser(option_list=option_list))

count_matrix_path = opt$c
transcript_meta_path = opt$t
intron_annotation_path = opt$i
output_file_path = opt$o


message("######### Options: ######### ")
message("######### Working Directory      : ", getwd())
message("######### count_matrix_path      : ", count_matrix_path)
message("######### transcript_meta_path   : ", transcript_meta_path)
message("######### intron_annotation_path : ", intron_annotation_path)
message("######### output_file_path       : ", output_file_path)

message(" ## Loading packages")
if (TRUE){
  devtools::load_all("/gpfs/hpchome/a72094/projects/eQTLUtils")
}

#Import data
transcript_meta = eQTLUtils::importBiomartMetadata(transcript_meta_path)
leafcutter_count_matrix = utils::read.csv(count_matrix_path, sep = "", stringsAsFactors = FALSE)

#Import Leafcutter count matrix
leafcutter_meta = eQTLUtils::leafcutterAnnotateIntrons(leafcutter_count_matrix$phenotype_id, 
                                                       intron_annotation_path, transcript_meta)
#Export Leafcutter gene metadata file
gzfile = gzfile(output_file_path, "w")
write.table(leafcutter_meta, gzfile, sep = "\t", quote = FALSE, row.names = FALSE)
close(gzfile)
