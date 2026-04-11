
<!-- README.md is generated from README.Rmd. Please edit that file -->

# galtonheightshelpr

<!-- badges: start -->

[![R-CMD-check.yaml](https://github.com/UBC-DSCI-310-2025W2/galton-heights-helpr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/UBC-DSCI-310-2025W2/galton-heights-helpr/actions/workflows/R-CMD-check.yaml)

<!-- badges: end -->

The goal of galtonheightshelpr is to provide helpful functions for
analyzing the GaltonHeights Dataset. It provides functions for commonly
performed tasks such as cleaning the data, splitting the dataset into a
train/test split, and producing simple regression scatterplots.

galtonheightshelpr was built upon commonly used R metapackages, such as
[tidyverse](https://ggplot2.tidyverse.org/) and
[tidymodels](https://www.tidymodels.org/). As such, those packages have
equivalent functionalities as galtonheighthelpr and can be used in lieu
of this package.

While these existing packages are powerful, flexible tools that are
applicable for a variety of applications, galtonheightshelpr is tailored
specifically the GaltonHeights Dataset and its related analyses. This
package provides and pre-compiles functions needed to produce a multiple
linear regression, allowing users to implement their own analysis with
ease.

Galtonheightshelpr contains four functions:

1.  `rename_and_drop_na()`: Combines the functionality of
    `dplyr::rename` and `tidyr::dropna()`to perform basic data cleaning

2.  `split_data()` : Splits the dataset into train/test split.
    Equivalent functionality as
    `initial_split(),`training()`, and`testing()`from`rsample\` package.

3.  `plot_regression_scatterplot()` : Produces a regression plot with
    fitted linear regression line. Created using `ggplot2` package and
    inherited arguments

4, `evaluate_model()`: Takes a fitted model and tesing data and eturns
the testing metrics from `yardstick` package

## Installation

You can install the development version of galtonheightshelpr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-DSCI-310-2025W2/galton-heights-helpr")
```

## Usage

Below is an example workflow using the package functions

``` r
library(galtonheightshelpr)

# Load in data
raw_data <- readr::read_csv("path/to/data")

# Data Cleaning
cleaned_data <- rename_and_drop_na(raw_data)


# Data splitting
split <- split_data(cleaned_data, prop = 0.8, seed = 123)
train <- split$train
test <- split$test


# Fitting a model on testing split
metrics <- evaluate_model(fitted_model, test, truth_col = "target_feature")

# Scatterplot with regression line

regression_scatter <- plot_regression_scatterplot(cleaned_data,
                                          x_var = "predictor variable", 
                                          y_var = "outcome variable",
                                          x_labs = "X-Axis Label",
                                          y_labs = "Y-Axis Label", 
                                          title_labs = "Plot Title")

```

## Usage

This package is equipped with a test suite, developed using `testthat`.
To run all tests, use the following command:

``` r
devtools::test()
```

## Contributing

We welcome contributions and feedback for our project!

To contribute to the project, please refer to the
(CONTRIBUTING.md)\[<https://github.com/UBC-DSCI-310-2025W2/galton-heights-helpr/blob/readme/CONTRIBUTING.md>\]
for more details.

## Code of Conduct

This project abides by a (Code of
Conduct)\[<https://github.com/UBC-DSCI-310-2025W2/galton-heights-helpr/blob/readme/CODE_OF_CONDUCT.md>\].
Contributing to this project will mean you abide by these terms.
