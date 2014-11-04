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
#' @param n_char \code{integer} representing maximum number of character in single line
#' of the output.
#' @param extend a non-negative integer specifying the indentation of subsequent lines in 
#' paragraphs.
#' @param ... additional arguments sent to \code{\link[graphics]{legend}}.
#' @seealso 
#' undocumented stats:::print.htest function - printing test summary.
#' 
#' \code{\link[graphics]{legend}} - responsible for adding test summary to plots.
#' 
#' \code{\link[base]{strwrap}} - splits longer lines on whitespaces.
#' @examples
#' 
#' #Example 1: test for correlation between paired samples
#' x <- 1:20
#' y <- exp(x)
#' sample_cortest <- cor.test(x, y)
#' plot(x, y, type = "b")
#' plot(sample_cortest, "topleft")
#' 
#' #Example 2: Pearson's Chi-squared Test for Count Data
#' x <- matrix(c(12, 5, 7, 7), ncol = 2)
#' sample_chisqtest <- chisq.test(x, y)
#' barplot(x, beside = TRUE)
#' plot(sample_chisqtest, "topright")

plot.htest <- function(x, legend_pos = "topleft", digits = 4L, bty = "n", n_char = 45,
                       exdent = 4, ...) {
  #output
  out <- capture.output(print(x, digits = digits))
  n_chars <- sapply(out, nchar, USE.NAMES = FALSE)
  out <- strwrap(out, n_char, exdent = exdent)
  legend(x = legend_pos, legend = out, bty = bty, ...)
}