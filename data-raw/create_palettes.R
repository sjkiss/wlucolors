#install.packages('usethis')
library(usethis)
my_colors <- c(
  `liberal`        = "darkred",
  `conservative`      = "darkblue",
  `ndp`       = "orange",
  `bq` = "lightblue",
  `green`     = "darkgreen",
  `laurier1`     = "darkorchid",
  `laurier2` = "gold")

my_palettes <- list(
  #These are the colors of the roc parties
  `roc`  = my_cols("liberal", "conservative", "ndp", "green"),
  #These are the colors of the full national Canadian parties, including BQ
  `federal`  = my_cols("liberal", "conservative", "bq", "ndp", "green"),
  #These are the colors of the Ontario Parties
  `ontario`  = my_cols("conservative", "liberal", "ndp", "green"),
  #These are the two colors that make up the spectrum of laurier's colors
  `wlu`   = my_cols("laurier1", "laurier2")
)

use_data(my_colors, my_palettes, internal=T)
