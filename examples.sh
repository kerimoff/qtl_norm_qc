#Load Singularity and bind the network file system
module load singularity
export SINGULARITY_BINDPATH="/gpfs/hpc" # You can add this line to your ~/.bashrc file 

### Build a local copy of the Singularity container
singularity build qtl_norm_qc.img docker://kauralasoo/eqtlutils:latest

# Make leafcutter phenotype metadata file
singularity exec qtl_norm_qc.img Rscript makeLeafcutterMetadata.R\
 -c /gpfs/hpc/home/a72094/datasets/processed/GENCORD/leafcutter/leafcutter_perind_numers.counts.formatted.gz\
 -t /gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/Homo_sapiens.GRCh38.96_biomart_download.txt.gz\
 -i /gpfs/hpc/home/a72094/annotations/eQTLCatalogue/v0.1/leafcutter_annotations/gencode_v30_all_introns.bed.gz\
 -o leafcutter_metadata.txt.gz
 --eqtlutils /gpfs/hpc/home/a72094/projects/eQTLUtils/

 #Normalise leafcutter matrix
singularity exec qtl_norm_qc.img Rscript normaliseCountMatrix.R\
 -c /gpfs/hpc/home/a72094/datasets/processed/GENCORD/leafcutter/leafcutter_perind_numers.counts.formatted.gz\
 -s /gpfs/hpc/home/a72094/datasets/controlled_access/GENCORD2/metadata/GENCORD.tsv\
 -p leafcutter_metadata.txt.gz\
 -q leafcutter\
 --filter_qc TRUE
