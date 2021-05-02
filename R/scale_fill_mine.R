
#' Fill scale constructor for wlu palette colors
#'
#' @param palette Character name of palette in create_palette_list
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#'
scale_fill_mine <- function(palette = "federal", discrete = TRUE, reverse = FALSE, ...) {
  pal <- interpolate(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("my_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
