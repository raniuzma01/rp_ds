# summary  statistic and descriptive statistics 
# kisi b data ka mean, median, maximum, ya range, 
#quartiles of range, standard deviation, variance
# ANALYSIS OF VARIANCE  (ANOVA)
# Tukey HSD test   (for multiple comparison)

library(readxl)
pdata <- read_excel("pdata.xlsx", col_types = c("numeric", 
                                                "numeric", "numeric", "numeric", "text", 
                                                "text"))
View(pdata)


mean(pdata$sepal_length)
mean(pdata$petal_length)

median(pdata$sepal_length)
median(pdata$petal_width)


min(pdata$sepal_length)
max(pdata$sepal_length)


range(pdata$sepal_length)


quantile(pdata$sepal_length, .25)    # first quartile
quantile(pdata$sepal_length, .75)    # third quartile
quantile(pdata$sepal_length, .5)     # median or second quartile



sd(pdata$sepal_length)
var(pdata$sepal_length)

lapply(pdata[, 1:4], mean)    # selection of specific columns
lapply(pdata[, 1:4], sd)


# to see whole things
summary(pdata)


# how to apply anova    it is analysis of variance  hmn y btata h k 2 chezn apas m differ kr rhi h k ni

aov(pdata$sepal_length ~ pdata$species)    # degree of freedom = n - 1


# how to know that anova is significant or not

a1<- aov(pdata$sepal_length ~ pdata$species)
summary(a1)                     # *** means k significant differ hn r P ki value 0.001 sy less h

# to know how much these values significantly differ form each other
# use tukey test

TukeyHSD(a1)


#group anova
a2 <- aov(pdata$sepal_width ~ pdata$species * pdata$test)
summary(a2)
TukeyHSD(a2)



