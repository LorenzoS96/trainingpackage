#' Summarises a DataSet
#'
#' @import tidyverse
#' @param tsv_fileA A string with the path to a TSV file with data we would like to import
#'
#' @return A tibble with 4 variables, summarising average, min and max of each variable
#' @export
#'
#' @examples
#' \dontrun {
#' summarise_dataset("/my/path/to/dataset.tsv")
#' }
summarise_dataset <- function(tsv_file) {
  data <- read_tsv(tsv_file)
  summary_table <- tibble()
  for (var in names(data)) {
    if (is.numeric(data[[var]])) {
      summary_table <- bind_rows(
        summary_table,
        bind_cols(
          variable = var,
          average = mean(data %>% pull(var)),
          minimum = min(data %>% pull(var)),
          maximum = min(data %>% pull(var))
        )
      )
    }
  }
  return(summary_table)
}
