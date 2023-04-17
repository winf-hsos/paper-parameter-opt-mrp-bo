library(tidyverse)
library(scales)
library(ggsci)
library(cowplot)

experiments <- readRDS("data/experiments.rds")

# Consistent colors
algorithm_colors <- c(
  "Sobol" = pal_aaas()(4)[1],
  "GPEI" = pal_aaas()(4)[2],
  "TurBO" = pal_aaas()(4)[3],
  "CMA-ES" = pal_aaas()(4)[4]
)

theme_simbo <- function (base_size = 12, base_family = "Roboto Condensed") {
  half_line <- base_size/2
  theme_bw()
}

theme_set(theme_simbo())