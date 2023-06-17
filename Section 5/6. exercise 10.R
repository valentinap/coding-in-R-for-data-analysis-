# 1) from the mpg dataset, available in the ggplot2 package,
# extract the ford cars from the manufacturer variable using the which() function


# 2) use the lapply() function to get it in list form 
# the mean of the displ, cyl, cty and hwy variables of the mpg dataset


# 3) use apply() to get, on the same variables, 
# the mean of the rows and columns


# 4) use the aggregate() function to get the mean of the  
# price variable according to the cut variable on the diamonds dataset


# 5) from the toimp folder upload the datasets to RStudio using the lapply() function


# 6) use sapply() to get the minimum, maximum value# and the mean of the numeric variables of the mtcars dataset


# 7) select the Sepal.Length and Petal.Length columns with the  select() function from dplyr


# 8) use dplyr to import all variables except Species


# 9) create a new septot variable that adds up the Sepal.Length and Sepal.Width columns 
# of iris with the mutate() function


# 10) select all “setosa” cases from the Species variable with the filter() function


# 11) sorts all iris cases based on the Petal.Length variable 
# with the arrange() function


# 12) after creating the following dataset, rearrange it longitudinally 
# and separate data in the var3 column

library(tidyr)

df2 <- data.frame(
        id = 1:3,
        name = c("Yuri", "Lucia", "Elena"),
        var1 = c(32, 28, 36),
        var2 = c(50, 75, 64),
        var3 = c('170,m', '165,f', '174,f'))


# 13) given the df3 and df4 datasets, combine them so that they include all the cases of both
# datasets without duplicates, using the merge() function

library(dplyr)

df3 <- data.frame(id = c(2,7,4,5,11,6, 8, 12),
                  name = c('Shadan', 'Simon', 'Elliot', 'Francis', 'Joseph', 'Jane', 'Katherine', 'Laura'), 
                  heights = c(167, 180, 165, 169, 178, 164, 165, 163), 
                  sex = c('f', 'm', 'f', 'm', 'm', 'f', 'f', 'f'))

df4 <- data.frame(id = c(12, 1,8,3,10, 9), 
                  name = c('Laura', 'Nathan', 'Katherine', 'Dominic', 'Mary', 'Matthew'), 
                  heights = c(163, 179, 165, 158, 168, 184), 
                  sex = c('f', 'm', 'f', 'm', 'f', 'm'), 
                  value = c(28, 29, 25, 27, 18, 30),
                  pref_food = c('steak', 'pizza', 'pasta', 'pizza', 'steak', 'pasta'))


# 14) merge df3 and df4 so that they contain only the cases common to the two datasets
# using the merge() function

# 15) merge df3 and df4 so that they only contain the cases of df3 and the additional variables
# of df4. Use the merge() function