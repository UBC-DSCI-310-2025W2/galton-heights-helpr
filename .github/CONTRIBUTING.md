# Contributing to galtonheightshelpr

We welcome all contributions to this project!
This outlines how to propose a change to galtonheightshelpr.

## Core Team Members

If you are a core contributor with access to the main repository:

1. Pull the latest changes from `main` before creating a new branch (`git pull origin main`) to avoid merge conflicts.
2. Create a new branch from `main` for your feature or bug fix.
3. Make your changes and commit them with a descriptive commit message.
4. Push your branch and open a pull request (PR) against `main`.
5. Request a review from at least one other core team member.
6. PRs will be reviewed within 7 days. Once approved, the author merges the PR.
7. Delete the branch after merging.

## Arms-Length Contributors

If you are an external contributor:

If you want to make a big change, it's a good idea to first file an issue [here](https://github.com/UBC-DSCI-310-2025W2/galton-heights-helpr/issues) and make sure someone from the team agrees that it’s needed. 
If you’ve found a bug, please file an issue that illustrates the bug with a minimal 
[reprex](https://www.tidyverse.org/help/#reprex) (this will also help you write a unit test, if needed).
See our guide on [how to create a great issue](https://code-review.tidyverse.org/issues/) for more advice.

### Pull request process

1. Fork the package and clone onto your computer. If you haven't done this before, we recommend using `usethis::create_from_github("UBC-DSCI-310-2025W2/galton-heights-helpr", fork = TRUE)`.
2. Install all development dependencies with `devtools::install_dev_deps()`, and then make sure the package passes R CMD check by running `devtools::check()`. If R CMD check doesn't pass cleanly, it's a good idea to ask for help before continuing. 
3. Create a Git branch for your pull request (PR). We recommend using `usethis::pr_init("brief-description-of-change")`.
4. Make your changes, commit to git, and then create a PR by running `usethis::pr_push()`, and following the prompts in your browser. The title of your PR should briefly describe the change. The body of your PR should contain `Fixes #issue-number`.
5. PRs will be reviewed within 7 days.

### Code style

*   New code should follow the tidyverse [style guide](https://style.tidyverse.org). 
    You can use [Air](https://posit-dev.github.io/air/) to apply this style, but please don't restyle code that has nothing to do with your PR.  

*  We use [roxygen2](https://cran.r-project.org/package=roxygen2), with [Markdown syntax](https://cran.r-project.org/web/packages/roxygen2/vignettes/rd-formatting.html), for documentation.  

*  We use [testthat](https://cran.r-project.org/package=testthat) for unit tests. 
   Contributions with test cases included are easier to accept.  

## Code of Conduct

Please note that the galtonheightshelpr project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this
project you agree to abide by its terms.
