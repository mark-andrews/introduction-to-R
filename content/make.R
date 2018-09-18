library(knitr)
library(rmarkdown)


purl('Rmarkdown/working-with-dataframes.Rmd', output='tmp-R-files/working_with_dataframes.R')
purl('Rmarkdown/visualization.Rmd', output='tmp-R-files/visualization.R')
purl('Rmarkdown/linear_models.Rmd', output='tmp-R-files/linear_models.R')
purl('Rmarkdown/simple-stats.Rmd', output='tmp-R-files/simple_stats.R')
purl('Rmarkdown/generalized-linear-models.Rmd', output='tmp-R-files/generalized-linear-models.R')

render('Rmarkdown/working-with-dataframes.Rmd', output_file='pdf/working_with_dataframes.pdf', output_dir='pdf')
render('Rmarkdown/visualization.Rmd', output_file='pdf/visualization.pdf', output_dir='pdf')
render('Rmarkdown/linear_models.Rmd', output_file='pdf/linear_models.pdf', output_dir='pdf')
render('Rmarkdown/simple-stats.Rmd', output_file='pdf/simple_stats.pdf', output_dir='pdf')
render('Rmarkdown/generalized-linear-models.Rmd', output_file='pdf/generalized-linear-models.pdf', output_dir='pdf')
