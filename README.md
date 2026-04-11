
<!-- README.md is generated from README.Rmd. Please edit that file -->

# galtonheightshelpr

<!-- badges: start -->

Tests Status:
[![R-CMD-check.yaml](https://github.com/UBC-DSCI-310-2025W2/galton-heights-helpr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/UBC-DSCI-310-2025W2/galton-heights-helpr/actions/workflows/R-CMD-check.yaml)

<!-- badges: end -->

## Overview

The goal of galtonheightshelpr is to provide helpful functions for
analyzing the Galton Height Dataset. It provides functions for commonly
performed tasks such as cleaning the data, splitting the dataset into a
train/test split, and producing simple regression scatterplots.

This package was created for the Galton Height Linear Regression
Analysis project by DSCI 310 Group 16. Our project can be found
[here](https://github.com/UBC-DSCI-310-2025W2/dsci-310-group-16).

## A Quick Word

galtonheightshelpr was built upon commonly used R metapackages, such as
[tidyverse](https://ggplot2.tidyverse.org/) for data processing and
manipulation and [tidymodels](https://www.tidymodels.org/) for modelling
and statistical analysis. As such, those packages have equivalent
functionalities as galtonheightshelpr and can be used in lieu of this
package. For general data cleaning tasks or statistical modelling, we
would recommend using these general metapackages or curated
domain-specific tools.

While these existing packages are powerful, flexible tools that are
applicable for a variety of applications, galtonheightshelpr is tailored
specifically for the Galton Height Dataset and its related analyses.
This package provides and pre-compiles functions needed to produce a
multiple linear regression, allowing users to implement their own
analysis with ease.

## Package Overview

galtonheightshelpr contains four functions:

1.  `rename_and_drop_na()`: Combines the functionality of
    `dplyr::rename` and `tidyr::dropna()`to perform basic data cleaning

2.  `split_data()` : Splits the dataset into train/test split.
    Equivalent functionality as `initial_split()`, `training()`, and
    `testing()` from `rsample` package.

3.  `plot_regression_scatterplot()` : Produces a regression plot with a
    fitted linear regression line. Created using `ggplot2` package and
    inherited arguments

4.  `evaluate_model()`: Takes a fitted model and tesing data and returns
    the testing metrics from `yardstick` package

## Installation

You can install the development version of galtonheightshelpr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-DSCI-310-2025W2/galton-heights-helpr")
```

## Usage

Below is an example workflow using the package functions. The goal is to
return a tidy dataframe containing the testing results for a
classification model built using multiple linear regression.

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

## Package Testing

This package is equipped with a test suite, developed using `testthat`.
To run all tests, use the following command:

``` r
devtools::test()
```

## Attribution

This package was built using the following tools and packages:

- devtools (2.5.0)
- remotes (2.5.0)
- vdiffr (1.0.9)
- usethis (3.2.1)
- tidyverse (2.0.0)
- tidymodels (1.4.1)
- rmarkdown (2.30)

## Contributing

We welcome contributions and feedback for our project!

To contribute to the project, please refer to the
(CONTRIBUTING.md)\[<https://github.com/UBC-DSCI-310-2025W2/galton-heights-helpr/blob/readme/CONTRIBUTING.md>\]
for more details.

## Code of Conduct

This project abides by a (Code of
Conduct)\[<https://github.com/UBC-DSCI-310-2025W2/galton-heights-helpr/blob/readme/CODE_OF_CONDUCT.md>\].
Contributing to this project will imply acceptance and acknowledgement
of these terms.

## License

This package is equipped with a MIT license. Full details can be found
at the
[License.md](https://github.com/UBC-DSCI-310-2025W2/galton-heights-helpr/blob/readme/LICENSE.md).
