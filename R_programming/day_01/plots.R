# strip chart, histrogram, scatterplot, qqnorm plot, Bar plot, Mosaic plot, Box plot
library(readxl)
my_data <- read_excel("iris.xlsx", col_types = c("numeric", 
                                              "numeric", "numeric", "numeric", "text"))
View(my_data)

#Strip Chart
stripchart(my_data$sepal_length)
#ctrl+shift+6 to zoom in the chart and ctrl+shift+2 to zoom out
