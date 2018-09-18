## ------------------------------------------------------------------------
library(readr)
library(ggplot2)


## ------------------------------------------------------------------------
Df <- read_csv('../data/LexicalDecision.csv')

## ----fig.height=3--------------------------------------------------------
ggplot(Df, aes(x=log(frequency), y=latency)) + geom_point()

## ----fig.height=3--------------------------------------------------------
ggplot(Df, aes(x=log(frequency), y=latency)) + 
  geom_point() +
  stat_smooth(method='lm')

## ----fig.height=3--------------------------------------------------------
ggplot(Df, aes(x=log(frequency), y=latency)) + 
  geom_point(size=1, shape=1, colour='blue') +
  stat_smooth(method='lm') + 
  coord_cartesian(xlim = c(0, 5), ylim=c(250, 1000)) 

## ------------------------------------------------------------------------
# Load a new data set
load('../data/beautyeval.Rda')

# Make scatterplot, point colour by male/female
ggplot(beautydata, aes(x=beauty, y=eval, colour=sex)) + 
  geom_point(size=1) +
  scale_color_manual(values=c('blue', 'red')) +
  scale_y_continuous(name='Teaching evaluation score') +
  scale_x_continuous((name='Attractiveness rating'))

## ------------------------------------------------------------------------
# Scatterplot, with lines of best fit and errors
ggplot(beautydata, aes(x=beauty, y=eval, colour=sex)) + 
  stat_smooth(method='lm') + 
  geom_point(size=1) +
  scale_color_manual(values=c('blue', 'red')) +
  scale_y_continuous(name='Teaching evaluation score') +
  scale_x_continuous((name='Attractiveness rating')) 

## ----fig.height=10-------------------------------------------------------
# Scatterplot, with lines of best fit and errors
# one per tenure group
ggplot(beautydata, aes(x=beauty, y=eval, colour=sex)) + 
  stat_smooth(method='lm') + 
  geom_point(size=1) +
  scale_color_manual(values=c('blue', 'red')) +
  scale_y_continuous(name='Teaching evaluation score') +
  scale_x_continuous((name='Attractiveness rating')) +
  facet_grid(tenure ~ .)

## ------------------------------------------------------------------------
ggplot(beautydata,
       aes(x = sex, y = beauty, col = sex)) + 
  geom_boxplot(width=0.25) +
  theme_classic()

## ------------------------------------------------------------------------
ggplot(beautydata,
       aes(x = sex, y = beauty, col = sex)) + 
  geom_boxplot(width=0.25) +
  geom_jitter(width = 0.1, size=0.5, alpha=0.5) +
  theme_classic()

## ------------------------------------------------------------------------
ggplot(beautydata,
       aes(x = sex, y = beauty, col = sex)) + 
  geom_dotplot(binaxis = 'y', width=0.25, fill=NA, stackdir = 'center', dotsize = 0.5, binwidth=0.1) +
  theme_classic()


## ------------------------------------------------------------------------
ggplot(beautydata,
       aes(x = sex, y = beauty, col = sex)) + 
  geom_violin() +
  theme_classic()


