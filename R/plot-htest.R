#' Plots htest objects
#'
#' Plots htest objects.
#'
#' @param x an object of class \code{htest}.
#' @param legend_pos a position of the text on the plot. Either matrix or a single keyword.
#' See Details section of \code{\link[graphics]{legend}}.
#' @param digits number of digits.
#' @param ... additional arguments sent to \code{\link[graphics]{legend}}. 
#' @examples
#' x <- rnorm(10)
#' y <- rnorm(10)
#' sample_test <- cor.test(x, y)
#' plot(x, y)
#' plot(sample_test, "topleft")
#' 

plot.htest <- function(x, legend_pos = "topleft", 
                       digits = 4L, ...) {
  #output
  out <- capture.output(print(x, digits = digits))
  browser()
  legend(x = legend_pos, legend = out, ...)
}