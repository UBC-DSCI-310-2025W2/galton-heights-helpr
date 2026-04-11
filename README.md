
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
equivalent functionalities as galtonheighthelpr.

However, galtonheightshelpr is tailored specifically for the
GaltonHeights Dataset, allowing users to run a multiple linear
regression with ease.

\[to finish\]

## Installation

You can install the development version of galtonheightshelpr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-DSCI-310-2025W2/galton-heights-helpr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(galtonheightshelpr)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" alt="" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
