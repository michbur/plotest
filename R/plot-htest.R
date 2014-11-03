#' Plots htest objects
#'
#' Adds htest objects to existing plots.
#'
#' @param x an object of class \code{htest}.
#' @param legend_pos a position of the text on the plot. Either matrix or a single keyword.
#' See Details section of \code{\link[graphics]{legend}}.
#' @param digits number of digits.
#' @param bty the type of box to be drawn around the plotted test. The allowed values are "o" 
#' (border around plotted test information) and "n" (no border; the default).
#' @param ... additional arguments sent to \code{\link[graphics]{legend}}. 
#' @examples
#' x <- 1:20
#' y <- exp(x)
#' sample_test <- cor.test(x, y)
#' plot(x, y)
#' plot(sample_test, "topleft")
#' 

plot.htest <- function(x, legend_pos = "topleft", 
                       digits = 4L, bty = "n", ...) {
  #output
  out <- capture.output(print(x, digits = digits))
  legend(x = legend_pos, legend = out, bty = bty, ...)
}