#' Population Variance
#'
#' @param x a numeric vector, matrix, or data frame.
#' @param na.rm a logical: should \code{NA} values be removed?
#'
#' @return The population variance of \code{x}
#' @examples
#' pop_var(1:10)
#' 8.25
#'
#' pop_var(c(1:10, NA))
#' NA
#'
#' pop_var(c(1:10, NA), na.rm = TRUE)
#' 8.25
#'
#' @export

pop_var <- function(x, na.rm = FALSE) {
    mean(x^2, na.rm = na.rm) - mean(x, na.rm = na.rm)^2
}

