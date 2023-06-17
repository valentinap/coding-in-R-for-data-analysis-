# 1) load the df7 dataset with the basic functions

# 2) download the df7 dataset as tibble with the name df7_tibble 

# 3) load the df8 dataset with the readr package

# 4) download the df8 dataset with the basic functions

# 5) load the second sheet of the df9 dataset with the readxl package and the most suitable function

install.packages('readxl')
library(readxl)

# 6) add a variable that adds up the variables var2 and var3


# 7) download the file obtained in excel format with the most suitable function of the writexl package


# 8) I got the test datasets by mixing random variables as in the code below

df <- data.frame(var1 = sample(letters[1:26], 100, replace = TRUE), 
                 var2 = rnorm(100),
                 var3 = runif(100, 1, 9.5),
                 var4 = sample(10:50, 100, replace=T),
                 var5 = sample(state.name, 100, replace = TRUE))


write.table(df, 'df.csv', sep = ',')


# try to generate a 10 cases df10 dataset by changing the variables accordingly

# 9) convert the following data to dataframe format

json1 <- '[
  {"Name" : "Laura", "Pref_food" : "pizza", "City" : "Rome", "IncomeKY" : 55}, 
  {"Name" : "Simon", "Pref_food" : "pasta", "City" : "Paris", "IncomeKY" : 60},
  {"Name" : "Kate", "Pref_food" : "steak", "City" : "Milan", "IncomeKY" : 35} 
]'
