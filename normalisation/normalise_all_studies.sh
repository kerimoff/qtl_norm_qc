#!/bin/bash

# HipSci
# singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/HipSci /gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/HipSci.tsv /gpfs/hpc/home/kerimov/featurecounts_qc/new_results_12Aug/Hipsci/

# Alasoo_2018
# singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/Alasoo_2018 /gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/Alasoo_2018.tsv /gpfs/hpc/home/kerimov/featurecounts_qc/new_results_12Aug/Alasoo_2018/

# GENCORD
# singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/GENCORD /gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/GENCORD.tsv /gpfs/hpc/home/kerimov/featurecounts_qc/new_results_12Aug/GENCORD/

# GEUVADIS
# singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/GEUVADIS /gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/GEUVADIS.tsv /gpfs/hpc/home/kerimov/featurecounts_qc/new_results_12Aug/GEUVADIS/

# Lepik_2017
# singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/Lepik_2017 /gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/Lepik_2017.tsv /gpfs/hpc/home/kerimov/featurecounts_qc/new_results_12Aug/Lepik_2017/

# Nedelec_2016
# singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/Nedelec_2016 /gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/Nedelec_2016.tsv /gpfs/hpc/home/kerimov/featurecounts_qc/new_results_12Aug/Nedelec_2016/

# Quach_2016
# singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/Quach_2016 /gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/Quach_2016.tsv /gpfs/hpc/home/kerimov/featurecounts_qc/new_results_12Aug/Quach_2016/

# Schmiedel_2018
# singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/Schmiedel_2018 /gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/Schmiedel_2018.tsv /gpfs/hpc/home/kerimov/featurecounts_qc/new_results_12Aug/Schmiedel_2018/

# Schwartzentruber_2018
# singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/Schwartzentruber_2018 /gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/Schwartzentruber_2018.tsv /gpfs/hpc/home/kerimov/featurecounts_qc/new_results_12Aug/Schwartzentruber_2018/

# TwinsUK
# singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/TwinsUK /gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/TwinsUK.tsv /gpfs/hpc/home/kerimov/featurecounts_qc/new_results_12Aug/TwinsUK/

# van_de_Bunt_2015
# singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/van_de_Bunt_2015 /gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/van_de_Bunt_2015.tsv /gpfs/hpc/home/kerimov/featurecounts_qc/new_results_12Aug/van_de_Bunt_2015/

# BLUEPRINT_PE
# singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/BLUEPRINT_PE /gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/BLUEPRINT_PE.tsv /gpfs/hpc/home/kerimov/featurecounts_qc/results_BLUEPRINT/BLUEPRINT_PE/

# BLUEPRINT_SE
# singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/BLUEPRINT_SE /gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/BLUEPRINT_SE.tsv /gpfs/hpc/home/kerimov/featurecounts_qc/results_BLUEPRINT/BLUEPRINT_SE/

# ROSMAP
singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/ROSMAP /gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/ROSMAP.tsv /gpfs/hpc/home/kerimov/featurecounts_qc/results/results_ROSMAP/

# BrainSeq
singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/BrainSeq /gpfs/hpc/home/kerimov/SampleArcheology/studies/cleaned/BrainSeq.tsv /gpfs/hpc/home/kerimov/featurecounts_qc/results/results_BrainSeq/

# Ye_2018
singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/Ye_2018 /gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/Ye_2018.tsv /gpfs/hpchome/a72094/datasets/processed/expression_matrices/Ye_2018/

# Fairfax_2018
singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/eqtlutils bash norm_the_study.sh /gpfs/hpc/home/a72094/datasets/processed/Fairfax_2018 /gpfs/hpc/home/a72094/datasets/controlled_access/SampleArcheology/studies/cleaned/Fairfax_2018.tsv /gpfs/hpchome/a72094/datasets/processed/expression_matrices/Fairfax_2018/

