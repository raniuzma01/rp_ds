library(readxl)
data <- read_excel("iris.xlsx", sheet = "iris", 
                   col_types = c("numeric", "numeric", "numeric", 
                                 "numeric", "text"))
View(data)
str(data)
head(data)
tail(data)
plot(data)
boxplot(data$sepal_length, data$petal_length)


boxplot(data$sepal_width ~ data$species)
