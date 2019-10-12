# popstats

<!-- badges: start -->
[![Build Status](https://travis-ci.org/hamedbh/popstats.svg?branch=master)](https://travis-ci.org/hamedbh/popstats)
<!-- badges: end -->

The default `var()` and `sd()` R functions calculate the sample variance and standard deviation. But what if you want the population variance or standard deviation? Say hello to `{popstats}`!

## Installation

You can install the released version of popstats from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("popstats")
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

