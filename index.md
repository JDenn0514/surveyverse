# surveyverse

The surveyverse is a collection of R packages for survey research,
sharing a common design philosophy, grammar, and data structures.
Install and load all core packages with a single call to
[`library(surveyverse)`](https://github.com/JDenn0514/surveyverse).

## Installation

``` r
# install.packages("pak")
pak::pak("JDenn0514/surveyverse")
```

## Packages

##### [surveycore](https://jdenn0514.github.io/surveycore/)

Core survey design objects built on S7 classes, metadata system, and
shared infrastructure for the surveyverse ecosystem.

[Learn more](https://jdenn0514.github.io/surveycore/)

##### [surveytidy](https://jdenn0514.github.io/surveytidy/)

A tidy interface to survey objects — dplyr and tidyr verbs (filter,
select, mutate, rename, arrange, group_by) that respect survey design.

[Learn more](https://jdenn0514.github.io/surveytidy/)

##### [surveywts](https://jdenn0514.github.io/surveywts/)

Advanced weighting, raking, and calibration methods for complex survey
data, with a tidy, pipeline-friendly API.

[Learn more](https://jdenn0514.github.io/surveywts/)

## Usage

``` r
library(surveyverse)
#> -- Attaching core surveyverse packages --------
#> v surveycore    0.3.5
#> v surveytidy    0.2.1
#> v surveywts     0.1.0
```

## Code of Conduct

Please note that the surveyverse project is released with a [Contributor
Code of
Conduct](https://jdenn0514.github.io/surveyverse/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
