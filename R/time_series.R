#' Time series plot
#'
#' Creates a time series plot for a given vector or data frame
#'
#' @param x A vector or data frame containing the time series data
#' @param y (optional) A vector or data frame containing additional time series data to plot on the same axis
#' @param xlab The x-axis label
#' @param ylab The y-axis label
#' @param main The main plot title
#' @param type The type of plot to create (e.g. "l" for a line plot, "p" for a point plot)
#' @param col The color(s) to use for the plot(s)
#'
#' @examples
#' time_series(ldeaths)
#' time_series(ldeaths, type = "p", col = "red")
#'
#' @export
time_series <- function(x, y = NULL, xlab = "Time", ylab = "Value", main = "Time Series Plot", type = "l", col = "blue") {
  #Convert x and y to data frames if they are vectors
  if (is.vector(x)) {
    x <- data.frame(x = x)
  }
  if (!is.null(y) && is.vector(y)) {
    y <- data.frame(y = y)
  }
  #Combine x and y into a single data frame
  if (!is.null(y)) {
    data <- cbind(x, y)
  } else {
    data <- x
  }
  #Create the plot
  plot(data, type = type, col = col, xlab = xlab, ylab = ylab, main = main)
}
