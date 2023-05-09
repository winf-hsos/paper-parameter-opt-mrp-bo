library(tidyverse)
library(scales)
library(ggsci)
library(cowplot)

experiments <- readRDS("data/experiments.rds")

# Consistent colors
algorithm_colors <- c(
  "Sobol" = pal_aaas()(5)[1],
  "GPEI" = pal_aaas()(5)[2],
  "TurBO" = pal_aaas()(5)[3],
  "CMA-ES" = pal_aaas()(5)[4],
  "SAASBO" = pal_aaas()(8)[8]
)

theme_simbo <- function (base_size = 12, base_family = "Roboto Condensed") {
  half_line <- base_size/2
  theme_bw()
}

theme_set(theme_simbo())
