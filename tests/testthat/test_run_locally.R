library(longbowtools)
library(testthat)
context("run and knit")

sample_input_file <- system.file("extdata", "sample_input.json", package="longbowtools")
rmd_filename <- system.file("examples", "example_template.Rmd", package="longbowtools")
temp_sample_json <- tempfile()
## fix file.exists for urls

params <- params_from_rmd(rmd_filename, temp_sample_json)
result <- run_internal(rmd_filename, temp_sample_json)
result2 <- run_locally(rmd_filename, temp_sample_json, open_result = FALSE)
