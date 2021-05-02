#' Function to extract my colors as hex codes
#'
#' @param ... Character names of my_colors
#'
#'
#'

my_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (my_colors)

  my_colors[cols]
}
