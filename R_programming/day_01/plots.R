# strip chart, histrogram, scatterplot, qqnorm plot, Bar plot, Mosaic plot, Box plot
library(readxl)
my_data <- read_excel("iris.xlsx", col_types = c("numeric", 
                                              "numeric", "numeric", "numeric", "text"))
View(my_data)

#Strip Chart
stripchart(my_data$sepal_length)
#ctrl+shift+6 to zoom in the chart and ctrl+shift+2 to zoom out

stripchart(my_data$sepal_width ~ my_data$petal_width)



# HISTOGRAM

hist(my_data$petal_length)  # it tells us about in which direction data lies more
hist(my_data$petal_width)   # we can check no of observation 



# PLOT

plot(my_data$sepal_length, my_data$sepal_width)


# qqnorm plot

qqnorm(my_data$petal_width)  # tells us about quantity of samples vs theoretical quantites


# Bar plot

barplot(my_data$sepal_length)

# mosaic plot
mosaicplot(~ my_data$sepal_length+my_data$petal_length) 
#its distribution tells us about in which place how much data lies


# Box plot
# for same type of variables

boxplot(my_data$sepal_length, my_data$sepal_width)

#for different type of variables
boxplot(my_data$petal_width ~ my_data$species)
