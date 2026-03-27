library(pipelineR)

message("Starting pipeline...")

batch_size <- as.integer(Sys.getnv("JENKINS_BATCH_SIZE"))

pipelineR::start_pipeline(batch_size)

message("If you see this, it didn't crash and burn...")
