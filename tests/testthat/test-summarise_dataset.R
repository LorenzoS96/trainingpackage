test_that("multiplication works", {
  tsv_file - system.file("extdata", "example_dataset.tsv", package = "trainingpackage")
  summmary_table <- summarise_dataset((tsv_file))
  expect_equal(dim(summarytable)[[2]], 4)
})
