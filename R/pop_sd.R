#' Population Standard Deviation
#'
#' @param x a numeric vector, matrix, or data frame.
#' @param na.rm a logical: should \code{NA} values be removed?
#'
#' @return The population standard deviation of \code{x}
#' @examples
#' pop_sd(1:10)
#' 2.872281
#'
#' pop_sd(c(1:10, NA))
#' NA
#'
#' pop_sd(c(1:10, NA), na.rm = TRUE)
#' 2.872281
#'
#' @export

pop_sd <- function(x, na.rm = FALSE) {
    sqrt(mean(x^2, na.rm = na.rm) - mean(x, na.rm = na.rm)^2)
}
