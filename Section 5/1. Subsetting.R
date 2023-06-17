# let's create a vector

x <- c(28, 37, 142, 7, 1, 3, 714, 15, 11, 98, 847, 4, 25, 37)

# we need all the values of x greater than 100

x > 100

# the answer is under form of logical vector

# to get them in number

x[x > 100]


# does the vector contain certain elements or not?

x%in%c(58,147,22,69,49,13)

# e.g. in this way, from the iris dataset, we only extract the data in the third column

iris[, 3]

# the comma at the beginning means that we are not considering the rows, but only the third column

iris[5:7,]

# subset of cases with certain conditions

subset(iris, Species=="setosa")

iris[iris$Sepal.Length > 5 & iris$Sepal.Width < 3.9 ,]

# or random extraction

iris[sample(1:nrow(iris), 50, replace=FALSE),]

# dplyr functions allow us to extract random subsets of a tibble

library(dplyr)

sample_n(iris, 10)

sample_frac(iris, .15)

