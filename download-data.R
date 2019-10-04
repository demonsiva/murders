# downlad file from url to target directory
url <- "https://raw.githubusercontent.com/rafalab/dslabs/master/inst/extdata/murders.csv" 
dest_file <- "data/murders.csv" # use relative path
download.file(url, destfile = dest_file)