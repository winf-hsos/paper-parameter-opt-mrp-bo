library(tidyverse)

experiments <- read_csv("data/experiments.csv")

algorithm_levels <- c("sobol", "gpei", "turbo", "cma-es", "saasbo")
algorithm_labels <- c("Sobol", "GPEI", "TurBO", "CMA-ES", "SAASBO")

experiments <- 
  experiments |> 
  mutate(bom_id = factor(bom_id),
         replication = as.integer(replication),
         budget = as_factor(budget),
         candidate_id = as.integer(candidate_id),
         num_trials = as.integer(num_trials),
         num_candidates = as.integer(num_candidates),
         algorithm = factor(algorithm, levels = algorithm_levels, labels = algorithm_labels)
  )

experiments |> 
  count(algorithm)
  
experiments |> 
  saveRDS("data/experiments.rds")
