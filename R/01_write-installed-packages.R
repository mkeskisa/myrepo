## deja vu from earlier!

## create a data frame of your installed packages
## hint: installed.packages() is the function you need
library(tidyverse)
library(fbcutils)
library(here)

packages <- installed.packages() %>% as.tibble() %>% rename_all(tolower)
## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built
selected_variables <- c('package', 'libpath', 'version', 'priority', 'built')
packages %>%
  select(selected_variables) %>%
  write_csv(here('data', 'installed-packages.csv'))


## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

## YES overwrite the file that is there now (or delete it first)
## that's a old result from me (Jenny)
## it an example of what yours should look like and where it should go
