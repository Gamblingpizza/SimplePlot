#' Create a histogram of a single column of data
#'
#' This function takes in a single column of data and produces a histogram of its distribution
#'
#' @param data A vector of numeric data
#' @param xlab The label for the x-axis (default: "Values")
#' @param ylab The label for the y-axis (default: "Frequency")
#' @param main The title of the plot (default: "Histogram of Data")
#' @export
#' @examples
#' data <- rnorm(100)
#' histogram(data)
histogram <- function(data, xlab="Values", ylab="Frequency", main="Histogram of Data") {
  #creates a histogram with given data
  hist(data, xlab=xlab, ylab=ylab, main=main)
}



