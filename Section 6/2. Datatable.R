library(data.table)

# data.table[i, j, by]

# we create a data table object

dt1 <- data.table(name = c('Laura', 'Simon', 'Katherine', 'Francis', 'Joseph', 'Rosie'), 
                  heights = c(163, 180, 165, 169, 178, 164), 
                  sex = c('f', 'm', 'f', 'm', 'm', 'f'), value = rnorm(6))

# let's convert it

df1 <- data.frame(dt1)

# we want to know the class of both objects

class(df1)
class(dt1)

# we can always convert an object to a data table with the function of the same name

iris_dt <- data.table(iris)
class(iris_dt)

# we generate a very large random dataset

mat1 <- matrix(sample(10, 100000000, replace = T), ncol=10)

dim(mat1)

write.csv(mat1, "mat1.csv", row.names = F)

# import it with the basic functions and the data.table fread function

system.time(mat_base <- read.csv("mat1.csv"))
system.time(mat_fread <- fread("mat1.csv"))

# using tidyverse

library(tidyverse)

system.time(mat_tidy <- read_csv("mat1.csv"))

# differences between dataframe and data table in data extraction

df1[2:5, 1:3]

df1[1]

dt1[1]

dt1[2:5, 1:3]

# column extraction

dt1[, 1]

dt1[, name]

dt1[, .(name)]

dt1[, list(name)]

# calculations on columns

dt1[, mean(heights)]

dt1[, sum(sex == 'f')]

dt1[2:5, mean(value)]

dt1[!1:3, sum(value)]

dt1[, by = sex, .N]

dt1[order(heights)]

setkey(dt1, name)

dt1

dt1['Laura']

# subsetting

dt1[dt1$sex == 'f' & dt1$heigths > 170]





