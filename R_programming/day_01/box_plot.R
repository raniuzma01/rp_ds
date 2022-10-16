# How to make Box plot?
# How to interpret Box plot?
# How to label Box plot?
# Coloring of Box plot
# Adding additional parameters?
# Dividing Box plot into different Groups
# Favourite color pickker
# Color picker tools?  1. Google online color picker 2. Microsoft power toys

library(readxl)
pdata <- read_excel("iris.xlsx", sheet = "iris", 
                    col_types = c("numeric", "numeric", "numeric", 
                                  "numeric", "text"), n_max = 10)
View(pdata)

# TO REMOVE ANY DATA

remove(my_data)

library(readxl)
my_data <- read_excel("iris.xlsx", sheet = "iris", 
                    col_types = c("numeric", "numeric", "numeric", 
                                  "numeric", "text"))
view(my_data)



boxplot(pdata$sepal_length ~ pdata$species)

boxplot(pdata$sepal_length ~ pdata$species)

boxplot(my_data$sepal_length ~ my_data$species)
  

# Labeling     set x-axis any y-axis of your choice
 
boxplot(sepal_length ~ species, data= my_data)

boxplot(sepal_length ~ species, data= my_data, main="Boxplot of Experiment")

boxplot(sepal_length ~ species, data= my_data, main="Boxplot of Experiment",
        xlab = "Species Type", ylab = "Sepal_length(cm)")



# coloring
boxplot(sepal_length ~ species, data= my_data, main="Boxplot of Experiment",
        xlab = "Species Type", ylab = "Sepal_length(cm)", col="Red")    #inside fill color

boxplot(sepal_length ~ species, data= my_data, main="Boxplot of Experiment",
        xlab = "Species Type", ylab = "Sepal_length(cm)", border= "yellow")


# coloring of your favorite through color picker

boxplot(sepal_length ~ species, data= my_data, main="Boxplot of Experiment",
        xlab = "Species Type", ylab = "Sepal_length(cm)", col= "#05b09f", border= "#5c1675")


# grouping of treatment

library(readxl)
pdata <- read_excel("pdata.xlsx", col_types = c("numeric", 
                                                "numeric", "numeric", "numeric", "text", 
                                                "text"))
View(pdata)

boxplot(pdata$sepal_width ~ pdata$species * pdata$test)

# simple data manipulation
# changing sequence of columns

pdata$species <- factor(pdata$species, levels = c("sepal_length", "petal_length",
                                                  "sepal_width", "petal_width", "test"), main = ) 
boxplot(pdata$sepal_width ~ pdata$species * pdata$test)


# boxplot tells us about dispersion of data

# color picker through microsoft power tool

