#
# Sys.getenv("GITHUB_PAT")
#
# install.packages()
# remotes::install_github("CiaranHagen/pipelineR")

renv::restore()

library(pipelineR)

message("Starting pipeline...")

batch_size <- as.integer(Sys.getenv("JENKINS_BATCH_SIZE"))

pipelineR::start_pipeline(batch_size)

message("If you see this, it didn't crash and burn...")
