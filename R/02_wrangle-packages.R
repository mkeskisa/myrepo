## remember to restart R here!

## create a data frame by reading from data/installed-packages.csv
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path
library(tidyverse)
library(fbcutils)
library(here)

packages <- read_csv(here('data', 'installed-packages.csv'))
## filter out the base and recommended packages
na_packages <- packages %>%
  filter(priority %not_in% c('base', 'built')) %>%
  select(package, built)
## keep the variables Package and Built
## if you use dplyr, code like this will work:
## write this new, smaller data frame to data/add-on-packages.csv
na_packages %>%
  write_csv(here('data', 'add-on-packages.csv'))
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
na_packages %>%
  np(built) %>%
  write_csv(here('data', 'add-on-packages-freqtable.csv'))

## write this data frame to data/add-on-packages-freqtable.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

## YES overwrite the files that are there now
## they are old output from me (Jenny)
## they are just examples
