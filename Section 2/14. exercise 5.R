# 1) create a df1 dataframe starting from the following vectors 

var1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
var2 <- c('Lucia', 'Claudio', 'Maurizio', 'Patricia', 'Matt', 'John', 'Leyla', 'Eleanor', 'Mary', 'Dominic')
var3 <- c('173', '169', '189', '167', '178', '174', '182', '170', '163','164')
var4 <- c('f', 'm', 'm', 'f', 'm', 'm', 'f', 'f', 'f', 'm')
var5 <- c(32, 35, 54, 57, 39, 42, 33, 16, 29, 27)

df1 <- data.frame(var1, var2, var3, var4, var5)

# 2) convert the var3 variable in numeric

str(df1)

df1$var3 <- as.integer(df1$var3)

# 3) rename the variables with names id, name, heigth, sex, age

colnames(df1) <- c('id', 'name', 'heigth', 'sex', 'age')

# 4) create a matrix with numbers from 1 to 100 on 10 columns and convert it to df2 dataframe

mat1 <- matrix(1:100, ncol = 10, byrow = T)
df2 <- data.frame(mat1)

# 5) add the fifth column of df2 to df1

df1$v5 <- df2[, 5]

cbind(df1, df2$X5)

# 6) among the R datasets there is one called state.x77: display the first cases using the head() function 

head(state.x77)

head(state.x77, 2)

# 7) verify the number of rows and columns

nrow(state.x77)
ncol(state.x77)

# 8) extract cases from 5 to 20 

state.x77[5:20,]

# 9) extract the variables from the fourth to the seventh

state.x77[, 4:7]

# 10) extract the rows 15, 22, 33

state.x77[c(15, 22, 33),]

# 11) extract the columns 1, 3 and 7

state.x77[, c(1, 3, 7)]

# 12) from the preloaded iris dataset, extract the cases in which the variable Species is equal to Versicolor

iris[iris$Species == 'versicolor',]

# 13) transpose the df1 dataframe using the t() function

t(df1)

# 14) create a new variable new_height that adds 2 to the heigth variable

df1$new_heigth <- df1$heigth + 2

# 15) reorder the dataset based on the new_heigth variable

ordf <- order(df1['new_heigth'])

df1[ordf,]

# 16) from the preloaded dataset mtcars using the subset() function, extract the cases in which
# the variable cyl is equal to 6

subset(mtcars, cyl == 6)