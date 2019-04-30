FROM nfcore/base
LABEL authors="Nurlan Kerimov" \
      description="Docker image containing all requirements for featureCounts QC steps"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/feature_counts_qc_env/bin:$PATH