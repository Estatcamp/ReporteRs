#' @impor gdtools
str_extents <- function(x, fontname = "sans", fontsize = 11, bold = FALSE, italic = FALSE, fontfile = "") {
  # Dynamically bind to whatever function this version of gdtools exposes
  if (exists("txt_extents", envir = asNamespace("gdtools"))) {
    gdtools::txt_extents(x, fontname = fontname, fontsize = fontsize, bold = bold, italic = italic, fontfile = fontfile)
  } else if (exists("gfont_extents", envir = asNamespace("gdtools"))) {
    gdtools::gfont_extents(x, fontname = fontname, fontsize = fontsize, bold = bold, italic = italic, fontfile = fontfile)
  } else {
    stop("Compatible font metric function not found in the installed version of gdtools.")
  }
}
