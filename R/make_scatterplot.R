#' Creates a random scatterplot
#'
#' @import tidyverse
#' @param tsv_file A string indicating path to a TSV dataset
#'
#' @return A plot object with a scatterplot from randomly chosen variables
#' @export
#'
#' @examples
#' \dontrun {
#' make_scatterplot("/my/path/to/data.tsv")
#' }
make_scatterplot <- function(tsv_file) {
  dataset <- read_tsv(tsv_file)
  sample_vars <- sample(
    names(data %>% select(where(is.numeric))),
    2
  )

  plot <- dataset %>%
    ggplot(aes(x = .data[[sample_vars[[1]]]], y = .data[[sample_vars[[2]]]])) +
    geom_point()

  return(plot)
}

"sample_dataset"
