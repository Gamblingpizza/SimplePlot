#' Perform a t-test on two vectors
#'
#' This function takes two vectors of numerical values as input and performs a two-sample t-test.
#'
#' @param x a vector of numerical values
#' @param y a vector of numerical values
#' @return a list containing the t-statistic, degrees of freedom, and p-value for the t-test
#' @export
#' @examples
#' x <- c(1, 2, 3)
#' y <- c(4, 5, 6)
#' t_test(x, y)
#' $t
#' [1] -3.464102
#'
#' $df
#' [1] 4
#'
#' $p.value
#' [1] 0.0194923
t_test <- function(x, y) {
  result <- t.test(x, y)
  list(
    #Gets the t value
    t = result$statistic,
    #Get the degrees of freedom
    df = result$parameter,
    #Calculate the p-value
    p.value = result$p.value
  )
}
