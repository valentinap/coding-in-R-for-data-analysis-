# 1) calculate mean and median on the price variable of the diamonds dataset# create a histogram and look at the distribution 
 
library(ggplot2)

mean(diamonds$price)

median(diamonds$price)

hist(diamonds$price, breaks = 50, col = topo.colors(50))

# 2) Does the curve of the depth variable of the same dataset have the same trend?

hist(diamonds$depth, breaks = 50, col = heat.colors(50))

# 3) Create a correlation matrix of the numeric variables of the first 100 cases of the diamonds dataset

str(diamonds)

dia2 <- diamonds[c(-2, -3, -4)]

pairs(dia2[1:100,])

dia2_cor <- cor(dia2)

library(corrplot)

corrplot(dia2_cor)

# 4) Create a correlation matrix of the dataset trees already present on R resources, # using the corrplot package, checking the documentation of the corrplot() function methods # and exploring the different methods 

pairs(trees)

trees_cor <- cor(trees)

corrplot(trees_cor, method = "pie")


# 5) Perform a basic exploratory analysis on the mpg dataset, # already present on the resources of R

dim(mpg)

str(mpg)

sum(is.na(mpg))

sum(duplicated(mpg))

nrow(mpg)

ncol(mpg)

names(mpg)

class(mpg)

head(mpg)

tail(mpg)

mpg_num <- mpg[-c(1, 2, 6, 7, 10, 11)]

pairs(mpg_num)


# 6) Calculate the mean of the variables mark1 and mark2 of the df1.csv dataset located in the resource folder

df1 <- read.csv("df1.csv")

mean(df1$mark1, na.rm = TRUE)
mean(df1$mark2, na.rm = TRUE)

outliers_var1 <- boxplot(df1$mark1, plot = FALSE)$out

df1 <- df1[-which(df1$mark1 %in% outliers_var1),]

boxplot(df1$mark1)$out

mean(df1$mark1, na.rm = TRUE)

outliers_var2 <- boxplot(df1$mark2, plot = FALSE)$out

df1 <- df1[-which(df1$mark2 %in% outliers_var2),]

mean(df1$mark2, na.rm = TRUE)

# 7) Load the df2.csv dataset, count the missing data and create a chart to display it

df2 <- read.csv("df2.csv")

table(complete.cases(df2))

nrow(df2)

prop.table(table(complete.cases(df2)))

library(VIM)

matrixplot(df2)


# 8) Given the following dataset, impute the mean for the # variable var3 and the median for the variables var1 and var2 # instead of the missing valuesvar1 <- c(12, NA, 45, 57, 24, 48, NA)var2 <- c(NA, 37, 24, 61, NA, 19, NA)var3 <- c(71, NA, 45, 52, 70, 18, 34)df3 <- as.data.frame(cbind(var1, var2, var3))


df3$var1[is.na(df3$var1)] <- median(df3$var1, na.rm = TRUE)

median(df3$var2, na.rm = TRUE)

df3$var2[is.na(df3$var2)] <- 30.5

df3$var3[is.na(df3$var3)] <- mean(df3$var3, na.rm = TRUE)
        
df3$var3 <- round(df3$var3)  


# 9) load the dataset df4, calculate the outliers of the priceink variable and delete them

df4 <- read.csv("df4.csv", sep = ";")

str(df4)

boxplot(df4$prezzoink)$out

outliers <- boxplot(df4$prezzoink, plot = FALSE)$out

new_df <- df4[-which(df4$prezzoink %in% outliers),]

boxplot(new_df$prezzoink)$out


# 10) Upload df5 dataset and delete any duplicates in it

library(openxlsx)

df5 <- read.xlsx("/Users/valentinaporcu/Desktop/df5.xlsx")duplicated(df5)df5 <- df5[!duplicated(df5),]
