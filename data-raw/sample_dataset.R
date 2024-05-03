## code to prepare `sample_dataset` dataset goes here

example_dataset(read_tsv("./inst/extdata/example_dataset.tsv"))

usethis::use_data(sample_dataset, overwrite = TRUE)
