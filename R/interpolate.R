#' Return function to interpolate a drsimonj color palette
#'
#' @param palette Character name of palette in my_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
interpolate <- function(palette = "wlu", reverse = FALSE, ...) {
  pal <- my_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}


