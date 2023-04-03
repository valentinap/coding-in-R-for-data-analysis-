# how to create a dataframe / 1

df1 <- data.frame(id = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                  name = c('Laura', 'Simon', 'Kate', 'Francis', 'Joseph', 'Rosie', 'Matt', 'Eleanor', 'Angie', 'Hamed'),
heights = c('168', '180', '165', '169', '178', '164', '182', '170', '163','164'),
                 sex = c('f', 'm', 'f', 'm', 'm', 'f', 'm', 'f', 'f', 'm'),
age = c(32, 35, 54, 57, 39, 42, 33, 16, 29, 27))


# how to create a dataframe / 2

v1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
v2 <- c('pizza', 'pasta', 'steak', 'sushi', 'pizza', 'pizza', 'sushi', 'pasta', 'sushi', 'steak')
v3 <- c('Rome', 'Milan', 'Paris', 'Bruxelles', 'Rome', 'Rome', 'Milan', 'Palermo', 'Bruxelles', 'Paris')
v4 <- c(55, 60, 35, 72, 38, 54, 80, 42, 25, 48)
v5 <- c(T, F, F, T, T, F, F, T, F, F)

df2 <- data.frame(v1, v2, v3, v4, v5)

# check the class of the two dataframes

class(df1)
class(df2)

# what other actions can we perform on our dataframes?

# we can for example add a variable to our dataframe via the logical operator $ 

df1$married <- c(T, F, F, T, T, F, F, T, F, F)

# in this case we have added a logical operator: T stands for TRUE, and F for FALSE

# let's check that the variable has been added correctly

# to do so, we use the head() function, which shows us the first occurrences of the dataframe

head(df1)

# I can also decide how many occurrences to print, via the second parameter of the head() function

head(df1, 3)


# to remove a variable from a dataframe, on the other hand, we proceed as follows

df$married <- NULL

# we can also add a variable via the cbind() function

df1 <- cbind(df1, v5)

# the operator '$' can be used to extract a variable from the dataset, for example: 

age <- df1$age

# to extract variables we can also use alternative notations

age2 <- df1[['age']]

# this notation, like the one above df$var, extracts the variable as a vector, while the one below extracts it as a dataframe

age3 <- df1['age']

# let's check the data structure with the class function for the three objects

class(age)
class(age2)
class(age3)

# we can extract cases and variables with the same logic we used for matrices:

# we only extract cases

df1[1:5, ]

# or variables

df1[, 2:6]

# or both

df1[6:10, 1:3]

# for non-consequential cases and variables

df1[c(1, 5, 7, 10), ]

df1[, c(1, 3)]

# or we can exclude certain cases or variables from extraction by means of reverse extraction

df1[-2, ]

df1[-c(2,7),]

df1[, -c(1,3)]

# we can also extract one or more variables by name:

# in the case of single variables

# in the form of a single vector

df1[, ‘name’]

# as dataframe

df1[‘heights’]

# querying the dataframe on a single case

df1[ 3, ‘sex’]

# on several cases

df1[1:3, 'sex']

# on several cases and variables

df1[1:8, c('sex', 'v5')]


# we can also isolate groups of cases with certain conditions

# in the form of a logical vector

df1$sex == 'm'

# or in the form of the cases corresponding to certain conditions

df1[df1$sex == 'm' ,]

subset(df1, sex == 'm')


# again, we can sort a dataframe according to one of its variables:

ordf <- order(df1['age'])

# alternatively 

ordf <- order(df1$age)

df1[ordf,]

ordf2 <- order(-df1['id'])

df[ordf2,]


# change variable names

colnames(df1)[6] <- 'married'

colnames(df2) <- c('id', 'pref_food', 'city', 'income_k_y', 'married')


# let's check the data structure

# the summary function returns information on the basic statistics of the variables

summary(df1)

# the str() function gives me extra information on the structure of the dataframe

str(df1)



# the variable height is currently in the form of a string, we need to convert it to a numeric value

df1$heights <- as.integer(df1$heights)


# we can now merge the two dataframes on the basis of a common key, which is the 'id' variable

merge(df1, df2, by = 'id')

# let's check all the dataset on R with the following function

data()

























