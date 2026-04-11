#' Create scatter plot graph
#'
#' Creates a scatterplot with a regression line, taking in two numeric variables for x-axis and y-axis,
#' with optional variables for formatting,
#' To be used with docopt
#'
#'
#' @param df A tidy dataframe
#' @param x_var String column name for x-axis
#' @param y_var String column name for y-axis
#' @param color_var [Optional] Column name to map a color scheme to data points,
#' @param alpha [Optional] Float from range 0,1 to control regression line transparency, default value is 0.5
#' @param line_se [Optional] Display standard error of regression line, default value is True
#' @param line_color [Optional] Color of regression line, default value is red
#' @param x_labs [Optional] X-axis label
#' @param y_labs [Optional] Y-axis label
#' @param title_labs [Optional] Plot title
#'
#' @returns A labelled scatterplot with a simple linear regression line, using a linear smoothing method with
#'
#'
#' @export
#'
#' @examples
#'
#' plot_regression_scatterplot <- function(df =  data.frame(x=c(10, 20, 30, 40),
#'                                                          y=c(-10, -50, -100, -150),
#'                                                          z=c("class1", "class2", "class3", "class4")),
#'                                                x_var = "x",
#'                                                y_var = "y",
#'                                                color_var = "z",
#'                                                line_se = TRUE,
#'                                                line_color = "blue",
#'                                                x_labs = "Label for X-Axis",
#'                                                y_labs = "Label for Y-Axis",
#'                                                title_labs = "Plot Title")
#'
#'
#'

plot_regression_scatterplot <- function(df,
                                        x_var,
                                        y_var,
                                        color_var = NULL,
                                        line_se = TRUE,
                                        line_color = "black",
                                        x_labs = "X Axis Label",
                                        y_labs = "Y Axis Label",
                                        title_labs = "Plot Title") {


  if (!(x_var %in% colnames(df)) & !(y_var %in% colnames(df))) {
    stop("Column does not exist. Please enter a valid column name")
  }

  if (nrow(df) == 0) {
    stop("Dataframe is empty. Please input valid data")
  }

  if (nrow(df) == 1) {
    stop("Not enough data. Please input at least two rows of data")
  }

  if (!is.numeric(df[[x_var]])) {
    stop("Incorrect data type. Please specify numerical data for the x and y-axis")
  }

  if (!is.numeric(df[[y_var]])) {
    stop("Incorrect data type. Please specify numerical data for the x and y-axis")
  }

  if (!is.logical(line_se)) {
    stop("Invalid argument. Please enter a boolean argument")
  }

  x_sym <- rlang::sym(x_var)
  y_sym <- rlang::sym(y_var)

  if (!is.null(color_var)) {

    color_sym <- rlang::sym(color_var)

    p <- ggplot2::ggplot(
      df,
      ggplot2::aes(
        x = !!x_sym,
        y = !!y_sym,
        color = !!color_sym))

} else {

    p <- ggplot2::ggplot(
      df,
      ggplot2::aes(
        x = !!x_sym,
        y = !!y_sym))}

  p <- p +
    ggplot2::geom_point(alpha = 0.5) +
    ggplot2::geom_smooth(method = "lm", se = line_se, color = line_color) +
    ggplot2::labs(
      x = x_labs,
      y = y_labs,
      title = title_labs
    )

  return(p)
}
