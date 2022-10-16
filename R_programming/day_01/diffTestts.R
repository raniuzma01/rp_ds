# we will learn 
# Multiple Comparison of Means
# Tukey test
# Least Significant Difference LSD test
# Duncan Multiple Range test
# How to save plot?


library(readxl)
x <- read_excel("iris.xlsx", sheet = "iris", 
                col_types = c("numeric", "numeric", "numeric", 
                              "numeric", "text"))
View(x)

boxplot(x$sepal_length ~ x$species)
boxplot((sepal_length ~ species, data = x))

# there are three means  so we will use multiple mean comparison test
# to compare 2 means we use T-test


# multiple comparison of means
#1- Tukey.HSD test
install.packages("agricolae")

library(agricolae)        
# to call a package
# help("agricolae-package")
# ?'agricolae-package'


model <- aov(sepal_length ~ species, data = x)
out <- HSD.test(model, "species", group=TRUE, console = TRUE, main = "Tukey test")
plot(out)



#2 Least significant test LSD

model <- aov(sepal_length ~ species, data = x)
out <- LSD.test(model, "species", group=TRUE, console = TRUE, main = "LSD test")
plot(out)

#Duncon test

model <- aov(sepal_length ~ species, data = x)
out <- duncan.test(model, "species", group=TRUE, console = TRUE, main = "Duncan test")
plot(out)


#grouping
library(readxl)
pdata <- read_excel("pdata.xlsx", col_types = c("numeric", 
                                                "numeric", "numeric", "numeric", "text", 
                                                "text"))
View(pdata)

boxplot(petal_width ~ species * test, data = pdata, las=2, xlab = "")
model1 <- aov(petal_width ~ species * test, data = pdata)
out1 <- HSD.test(model1, c("species", "test"), group=TRUE, console = TRUE, main = "Tukey test")
plot(out1, horiz = TRUE, las=2)  #las=1
plot(out1, las=2)
# CAN CHANGE hsD TEST WITH LSD AND DUNCAN


jpeg(file="Tukey test.tiff",
     width = 6, height= 4, units = "in", res = 300)
boxplot(petal_width ~ species * test, data = pdata, las=2, xlab = "")
dev.off()




jpeg(file="Tukey test.tiff",
     width = 6, height= 4, units = "in", res = 300)
plot(out1, horiz = TRUE, las=2)
dev.off()