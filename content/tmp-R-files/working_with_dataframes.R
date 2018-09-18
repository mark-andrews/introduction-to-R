## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, include=TRUE, message = FALSE, warning = FALSE)

## ------------------------------------------------------------------------
library(dplyr)
library(readr)
library(tidyr)
options(tibble.width = Inf) 

## ------------------------------------------------------------------------
(Df <- read_csv('../data/LexicalDecision.csv'))

## ------------------------------------------------------------------------
glimpse(Df)

## ------------------------------------------------------------------------
(Df <- rename(Df,
              word = item,
              reaction_time = latency))

## ------------------------------------------------------------------------
select(Df, subject, word, accuracy, reaction_time)

## ------------------------------------------------------------------------
select(Df, -valence) # select all variables except `valence`

## ------------------------------------------------------------------------
select(Df, -valence, -frequency)

## ------------------------------------------------------------------------
select(Df, subject:length)

## ------------------------------------------------------------------------
select(Df, frequency, everything())

## ------------------------------------------------------------------------
slice(Df, 10:20)

## ------------------------------------------------------------------------
slice(Df, c(10, 20, 30, 40:45)) # 

## ------------------------------------------------------------------------
filter(Df, reaction_time < 2000)

## ------------------------------------------------------------------------
filter(Df, reaction_time > 200 & reaction_time < 2000)

## ------------------------------------------------------------------------
filter(Df,
       accuracy == 1,
       reaction_time > 250 & reaction_time < 750,
       length %in% seq(2, 5))


## ------------------------------------------------------------------------
arrange(Df, reaction_time)

## ------------------------------------------------------------------------
arrange(Df, length, reaction_time)

## ------------------------------------------------------------------------
arrange(Df, desc(reaction_time))

## ------------------------------------------------------------------------
mutate(Df, log_frequency = log(frequency))

## ------------------------------------------------------------------------
mutate(Df, frequency = log(frequency))

## ------------------------------------------------------------------------
transmute(Df,
          fast_rt = if_else(reaction_time < 500, 'fast', 'not.fast'),
          short_word = if_else(length <= 3, 'short', 'not.short'),
          frequency = log(frequency))

## ------------------------------------------------------------------------
summarise(Df, 
          mean = mean(reaction_time), 
          median = median(reaction_time), 
          stdev = sd(reaction_time), 
          n = n() # This gives counts
)

## ------------------------------------------------------------------------
Df.tmp <- group_by(Df, accuracy) # Create a tmp Df, where the data are grouped
summarize(Df.tmp,
          mean = mean(reaction_time), 
          median = median(reaction_time), 
          stdev = sd(reaction_time), 
          n = n()
)

## ------------------------------------------------------------------------
group_by(Df, accuracy) %>%
  summarize(mean = mean(reaction_time),
            median = median(reaction_time),
            stdev = sd(reaction_time),
            n = n()
  )

## ------------------------------------------------------------------------
Df %>% 
  filter(reaction_time > 250 & reaction_time < 1250,
         accuracy == 1) %>%
  group_by(subject) %>%
  summarise(mean_rt = mean(reaction_time)) %>%
  arrange(mean_rt)

## ------------------------------------------------------------------------
(Df.wide <- read_csv('../data/widedata.csv'))

## ------------------------------------------------------------------------
(Df.long <- gather(Df.wide, conditionA, conditionB, conditionC, key='condition', value='recall'))

## ------------------------------------------------------------------------
spread(Df.long, key=condition, value=recall)

## ------------------------------------------------------------------------
lexicon_A <- read_csv('../data/lexiconA.csv')
lexicon_B <- read_csv('../data/lexiconB.csv')
lexicon_C <- read_csv('../data/lexiconC.csv')
behav_data <- read_csv('../data/data.csv')

## ------------------------------------------------------------------------
bind_rows(lexicon_A, lexicon_C) # 

## ------------------------------------------------------------------------
bind_cols(lexicon_A, behav_data)

## ------------------------------------------------------------------------
inner_join(lexicon_A, lexicon_B, by='word')

## ------------------------------------------------------------------------
right_join(lexicon_A, lexicon_B, by='word')

