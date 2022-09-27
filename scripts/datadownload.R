dir.create("data/")
dir.create("scripts/")

dir.create("data/url")

## download from a url
# downloaded on 2022-09-16

data.url <- "https://open.canada.ca/data/dataset/9458e765-9cf1-4091-aa02-285df5e65bb3/resource/dcca6b68-1c6e-4fd8-aa31-63bda1b6750d/download/grasslands_np_grasslands_greater_sage-grouse_abundance_2007-2020_data.csv"
metadata.url <- "https://open.canada.ca/data/en/dataset/9458e765-9cf1-4091-aa02-285df5e65bb3.xml"

data.dest.file <- "/Users/katlinmccallum/Desktop/LDP/LDP_McCallum/data/url/PC_GSG_abundance.csv"
metadata.dest.file <- "/Users/katlinmccallum/Desktop/LDP/LDP_McCallum/data/url/PC_GSG_abundance_metadata.xml"

download.file(url = data.url, destfile = data.dest.file)
download.file(url = metadata.url, destfile = metadata.dest.file)

GSG.abundance <- read.csv("data/url/PC_GSG_abundance.csv")
