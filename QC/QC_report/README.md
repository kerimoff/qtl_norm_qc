QC report script should be run with DockerHub `kerimoff/qc_report` container as following

```bash
singularity exec docker://kerimoff/qc_report Rscript generate_rnaseq_study_qc_report.sh
```

or if the folder binding is necessary

```bash
singularity exec -B /path/in/host/:/path/in/container/ docker://kerimoff/qc_report Rscript generate_rnaseq_study_qc_report.sh
```

for example
```bash
singularity exec -B /gpfs/:/gpfs/ docker://kerimoff/qc_report Rscript generate_rnaseq_study_qc_report.sh
```
