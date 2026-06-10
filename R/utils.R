#' @importFrom gdtools txt_extents
str_extents <- function(x, fontname = "sans", fontsize = 11, bold = FALSE, italic = FALSE, fontfile = "") {
  gdtools::txt_extents(x, fontname = fontname, fontsize = fontsize, bold = bold, italic = italic, fontfile = fontfile)
}
