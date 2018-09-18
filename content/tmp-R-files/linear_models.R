## ----message=FALSE-------------------------------------------------------
library(MASS)
library(car)
library(psych)
library(dplyr)
library(ggplot2)
library(readr)
library(lme4)
library(pander) # for making nice tables

Df <- mutate(sat.act, 
             gender = factor(gender))

## ------------------------------------------------------------------------
M <- lm(ACT ~ education, data=Df)
pander(summary(M))

## ------------------------------------------------------------------------
ggplot(Df, 
       aes(x= education, y=ACT)) +
  geom_point() + 
  stat_smooth(method='lm')

## ------------------------------------------------------------------------
confint(M)

## ------------------------------------------------------------------------
hypothetical.data <- data.frame(education = c(1, 2, 5, 10, 15))
predict(M, newdata=hypothetical.data)

## ------------------------------------------------------------------------
M <- lm(ACT ~ education + age + gender, data=Df)
pander(summary(M))

## ------------------------------------------------------------------------
vif(M)

## ------------------------------------------------------------------------
ggplot(anorexia,
       aes(x = Prewt, y = Postwt, col=Treat)) +
  geom_point() +
  stat_smooth(method='lm', se=F) +
  theme_classic()

## ------------------------------------------------------------------------
M <- lm(Postwt ~ Prewt + Treat, data=anorexia)
pander(summary(M))

## ------------------------------------------------------------------------
M_interaction <- lm(Postwt ~ Prewt * Treat, data=anorexia)
pander(summary(M_interaction))

## ------------------------------------------------------------------------
model_comparison <- anova(M, M_interaction)
pander(model_comparison, missing='')

## ------------------------------------------------------------------------
data(PlantGrowth)
M <- aov(weight ~ group, data=PlantGrowth)
pander(M)

## ------------------------------------------------------------------------
TukeyHSD(M)

## ------------------------------------------------------------------------
M <- lm(weight ~ group, data=PlantGrowth)
anova(M)

## ------------------------------------------------------------------------
data("ToothGrowth")

ggplot(ToothGrowth,
       aes(x = factor(dose), y = len, col = supp)) +
  geom_boxplot() +
  theme_classic()

M <- aov(len ~ supp*dose, data=ToothGrowth)


## ------------------------------------------------------------------------
Df <- read_table('../data/recall_data.txt')

M <- aov(Recall ~ Valence + Error(Subject/Valence), data=Df)
pander(M)

## ------------------------------------------------------------------------

with(Df, 
     pairwise.t.test(x=Recall, g=Valence), 
     p.adjust.methods='bonferroni', 
     paired=T)

## ------------------------------------------------------------------------
Df <- read_table('../data/recall_data2.txt')
M <- aov(Recall ~ Valence*Task + Error(Subject/(Task*Valence)), data=Df)
pander(M)

## ------------------------------------------------------------------------
M <- lmer(Recall ~ Valence*Task + (1|Subject),
          data=Df)

