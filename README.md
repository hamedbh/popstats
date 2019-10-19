# popstats

<!-- badges: start -->
[![Build Status](https://travis-ci.org/hamedbh/popstats.svg?branch=master)](https://travis-ci.org/hamedbh/popstats)
[![codecov](https://codecov.io/gh/hamedbh/popstats/branch/master/graph/badge.svg)](https://codecov.io/gh/hamedbh/popstats)
<!-- badges: end -->

The default `var()` and `sd()` R functions calculate the sample variance and standard deviation. But what if you want the population variance or standard deviation? Say hello to `{popstats}`!

## Installation

You can install the released version of popstats from [GitHub](https://github.com/hamedbh/popstats) with:

``` r
# install {remotes} package if not available
# install.packages("remotes")
remotes::install_github(repo = "hamedbh/popstats")
```

## Example

``` r
library(popstats)
pop_var(1:10)
#> 8.25

pop_var(c(1:10, NA))
#> NA

pop_var(c(1:10, NA), na.rm = TRUE)
#> 8.25
```

