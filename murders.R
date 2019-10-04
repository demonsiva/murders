getwd()
# "/Users/estellahe/Documents/Play/Brain/Python/R/Projects/5.production_tools/murders"

# downlad file from url to target directory
url <- "https://raw.githubusercontent.com/rafalab/dslabs/master/inst/extdata/murders.csv" 
dest_file <- "data/murders.csv" # use relative path
download.file(url, destfile = dest_file)

# 
library(tidyverse)
murders <- read_csv("data/murders.csv")
murders <-murders %>% mutate(region = factor(region), rate = total / population * 10^5) 
save(murders, file = "rdas/murders.rda")