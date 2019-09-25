FROM bioconductor/release_core2
LABEL authors="Nurlan Kerimov" \
      description="Docker image containing all requirements for the eQTLUtils R package and pipeline"

RUN R -e "BiocManager::install(c('BiocCheck','SummarizedExperiment','lumi', 'limma', 'dplyr','cqn','ggplot2','htmlwidgets', 'tidyr','assertthat','devtools','GenomicRanges','readr', 'GDSArray', 'data.table', 'plotly', 'knitr', 'gridExtra', 'grid'))"
RUN R -e "devtools::install_github('kauralasoo/eQTLUtils')"

