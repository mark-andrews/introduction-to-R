# Introduction to R workshop

(Code, slides etc., will be added to this GitHub site within the next few days)

On Wednesday Sept 19th, there will be a one day introduction to R workshop in the Department of Psychology, Nottingham Trent University. 

It will be held in Room 424, Chaucer Building, which is the building right next to the Nottingham Trent University tram stop.

The schedule will be as follows:

- 09:30-09:50 What is R, and why should we care?
- 09:50-10:10 Installation and setup 
- 10:10-10:30 Guided tour of RStudio 
- 10:30-11:00 Basic R commands and workflow 
- 11:00-11:15 Break
- 11:15-11:30 Working with data (reading-in, viewing, summarizing data)
- 11:30-11:45 Basic plotting and visualization
- 11:45-12:30 Basic statistical analyses (linear regression, anova, t-tests, correlations)
- 12:30-13:30 Break
- 13:30-14:30 More working with data (the tidyverse way, i.e. using https://dplyr.tidyverse.org/ and https://tidyr.tidyverse.org/) 
- 14:30-15:30 More data visualization (learning to love ggplot)
- 15:30-16:30 More statistical analyses (including logistic regression, multilevel models)


Mark Andrews (mark.andrews@ntu.ac.uk)
Senior Lecturer, Department of Psychology

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
install.packages("car")
```


## Getting to the Chaucer building

For those who are not staff or students at NTU, the Chaucer building is located
on Goldsmith Street; the main entrance being adjacent to the Nottingham Trent
University tram stop.  The easiest way to get to Chaucer is via tram from
Nottingham railway station (in which case you can travel direct from Nottingham
Station towards Hucknall/Phoenix Park) and will arrive literally outside
Chaucer after four stops. If travelling by car it is best to travel to the
Forest Park and Ride. Parking is free and you can take the tram for two stops
towards the station. This tram also stops at the Nottingham Trent University
tram stop (but on the other side of the tracks).  Both journeys take about 15
minutes if walking. If travelling by tram purchase a ticket from a machine
before getting on the tram (the ticket machines are easy to use and take cash
or credit/debit cards).


