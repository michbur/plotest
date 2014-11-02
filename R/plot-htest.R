#' Plots htest objects
#'
#' Plots htest objects.
#'
#' This is a generic function: methods can be defined for it directly
#' or via the \code{\link{Summary}} group generic. For this to work properly,
#' the arguments \code{...} should be unnamed, and dispatch is on the
#' first argument.
#' @examples
#' x <- rnorm(10)
#' y <- rnorm(10)
#' sample_test <- cor.test(x, y)
#' plot(x, y)
#' plot(sample_test, topleft)
#' 

plot.htest <- function(x, legend_pos = "topleft", 
                       digits = 4L, quote = TRUE, prefix = "", ...) {
  #output
  out <- capture.output(print(x, digits = digits, quote = quote, prefix = "", ...))
  legend(x = legend_pos, legend = out)
}