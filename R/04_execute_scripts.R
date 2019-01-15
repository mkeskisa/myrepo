library(here)
library(tidyverse)

list.files(here('R'), full.names = T) %>%
  as.tibble() %>%
  filter(!str_detect(value, 'exe')) %>%
  map(callr::rscript)

