## ----message=FALSE-------------------------------------------------------
library(pander)

## ------------------------------------------------------------------------
load('../data/affairs.Rda')

## ------------------------------------------------------------------------
head(Affairs)

## ------------------------------------------------------------------------
Affairs$cheater <- Affairs$affairs > 0

## ------------------------------------------------------------------------
M <- glm(cheater ~ gender, 
         data=Affairs, 
         family=binomial)

## ------------------------------------------------------------------------
hypothetical.data <- data.frame(gender=c('male', 'female'))

## ------------------------------------------------------------------------
predict(M, newdata=hypothetical.data)

## ------------------------------------------------------------------------
ilogit <- function(x){1/(1+exp(-x))}

logodds <- predict(M, newdata=hypothetical.data) # these are log odds
names(logodds) <- c('Male', 'Female')
ilogit(logodds)

## ------------------------------------------------------------------------
predictions <- predict(M, newdata=hypothetical.data, type='response') 
names(predictions) <- c('Male', 'Female')
predictions

## ------------------------------------------------------------------------
### Using all predictors
M <- glm(cheater ~ gender + age + yearsmarried
         + children + religiousness + education
         + occupation + rating, 
         data=Affairs, 
         family=binomial)

# This is the "null" model, i.e. no predictors
M.null <- glm(cheater ~ 1, 
              data=Affairs, 
              family=binomial)

## ------------------------------------------------------------------------
ll.test <- anova(M.null, M, test='Chisq')
pander(ll.test, missing='')

## ------------------------------------------------------------------------
M <- glm(affairs ~ gender + age + yearsmarried
         + children + religiousness + education
         + occupation + rating, 
         data=Affairs, 
         family=poisson)

M.null <- glm(affairs ~ 1, 
              data=Affairs, 
              family=poisson)

# Model fit comparison of null and full based on the "Deviance"
ll.test <- anova(M.null, M, test='Chisq')
pander(ll.test, missing='')

