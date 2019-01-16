# Introduction to R workshop

The main content of this repository is the set of RMarkdown documents found in
`content/RMarkdown`. You can download and run these yourself in RStudio, making
changes and extensions as you wish, and create pdf/Word documents from them, if
you wish.

If you'd just like the pdfs rendered from these RMarkdown documents, they are:

- [Simple statistical models/tests](https://github.com/lawsofthought/introduction-to-R/blob/ntu-octnov-2018/content/pdf/simple_stats.pdf)
- [Reading, summarizing, visualizing data](https://github.com/lawsofthought/introduction-to-R/blob/ntu-octnov-2018/content/pdf/reading_summarizing_visualizing.pdf)
- [Introduction to visualization](https://github.com/lawsofthought/introduction-to-R/blob/ntu-octnov-2018/content/pdf/visualization.pdf)
- [Introduction to data wrangling with dplyr](https://github.com/lawsofthought/introduction-to-R/blob/ntu-octnov-2018/content/pdf/working_with_dataframes.pdf)
- [Linear models](https://github.com/lawsofthought/introduction-to-R/blob/ntu-octnov-2018/content/pdf/linear_models.pdf)
- [Generalized linear models](https://github.com/lawsofthought/introduction-to-R/blob/ntu-octnov-2018/content/pdf/generalized-linear-models.pdf)
- [Multilevel models](https://github.com/lawsofthought/introduction-to-R/blob/ntu-octnov-2018/content/pdf/multilevel-models.pdf)


## Installing the necessary software

The required software for these workshops are all free and open source
and will run identically on Windows, Mac OS X, and Linux platforms.

There are four main pieces of software to install:

-   [R](https://www.r-project.org/): An environment for statistical
    computing.
-   [Rstudio](https://www.rstudio.com/): An integrated development
    environment for using R.
-   [tidyverse](https://www.tidyverse.org/): A bundle of R packages to
    use R the modern way.
-   Miscellaneous R packages: Other vital, or just handy, R packages.

### Installing R

Go to the [R](https://www.r-project.org/) website and follow the links
for downloading. On Windows, this should lead you to

-   <https://cran.r-project.org/bin/windows/base/>.

Downloading this and following the usual Windows installation process,
you\'ll then have a full working version of R.

On Macs, the installation procedure is essentially identical. The latest
Mac installer should be available at

-   <https://cran.r-project.org/bin/macosx/>.

Download this and follow the usual Mac installation process to get a
full working version of R for Macs.

### Installing Rstudio

Using Rstudio is not strictly necessary. You can do all you need to do
with R without using Rstudio. However, many people have found that using
R is more convenient and pleasant when working through Rstudio. To
install it, go to the [Rstudio](https://www.rstudio.com/) website,
specifically to

-   <https://www.rstudio.com/products/rstudio/download/>

which will list all the available installers. Note that you just want
the Rstudio *desktop* program. The Rstudio *server* is something else
(basically it is for providing remote access to Rstudio hosted on Linux
servers).

Again, you\'ll just follow the usual installation process for Windows or
Macs to install Rstudio using these installers.

### Installing the tidyverse packages

The so-called [tidyverse](https://www.tidyverse.org/) is a collection of
interrelated R packages that implement essentially a new standard
library for R. In other words, the
[tidyverse](https://www.tidyverse.org/) gives us a bundle tools for
doing commonplace data manipulation and visualization and programming.
It represents the modern way to use R, and in my opinion, it\'s the best
way to use R. All the [tidyverse](https://www.tidyverse.org/) packages
can be installed by typing the following command in R:

``` {.sourceCode .R}
install.packages("tidyverse")
```

The main packages that are contained within the
[tidyverse](https://www.tidyverse.org/) bundle are listed
[here](https://www.tidyverse.org/packages/).


### Installing Miscellaneous R packages

There are a bunch of other R packages that we either will, or just may,
use. Here are there installation commands:

``` {.sourceCode .R}
install.packages("rmarkdown")
install.packages("knitr")
install.packages("lme4")
install.packages("pscl")
install.packages("psych")
install.packages("MASS")
install.packages("car")
install.packages("nnet")
```


