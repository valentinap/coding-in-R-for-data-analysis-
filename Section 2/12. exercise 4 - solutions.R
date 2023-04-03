# 1) create an arr1 array featuring 30 elements and divided into 3 rows, 2 columns and 5 elements

arr1 <- array(1:30, c(3, 2, 5))

# 2) select the fourth element from arr1

arr1[,,4]

# 3) select the rows 1 and 3 from arr1

arr1[c(1,3), ,]

# 4) create an arr2 array with the numbers 1 to 24 on 4 columns, 3 rows, and two other dimensions, one of 2 and one of 3 elements

arr2 <- array(1:24, c(3, 4, 2, 3))

# 5) create a vector v1 featuring the numbers 5,7, 11, 19

v1 <- c(5, 7, 11, 19)

# 6) create a matrix mat1 composed by numbers from 1 to 9 on three rows

mat1 <- matrix(1:9, nrow =3, byrow= 3)

# 7) create a list l1 including the arr1 array, the vector v1 and the matrix mat1, and adding the Orange dataset which is already pre-installed on R

l1 <- list(arr1, v1, mat1, Orange)

# 8) extract the second element, v1

l1[[2]]

# 9) extract the first element, arr1

l1[[1]]

# 10) from the first element extracted from the list extract the rows 1 and 3

l1[[1]][c(1,3),,]

# 11) create a factor f1 including the types of blood groups and print it to check the levels

f1 <- factor(c('0+', 'A+', 'B+', 'AB+', '0-', 'A-', 'B-', 'AB-'))

# 12) create a vector owl1 that records the following data: Acceptable, Poor, Acceptable, Disappointing, Troll, Disappointing, Poor, Beyond All Expectations, Acceptable, Exceptional, Exceptional, Troll

owl1 <- c('Acceptable', ‘Poor’, 'Acceptable', ‘Disappointing’, 'Troll', ‘Disappointing’, ‘Poor’, ‘Beyond All Expectations’, 'Acceptable', 'Exceptional', 'Exceptional', 'Troll')

# 13) add Exceptional, Beyond Any Expectations, Acceptable, Poor, Disappointing and Troll levels to the vector and order them from the highest to the lowest level. Save everything in the owl2 factor

owl2 <- factor(owl1, order = TRUE , levels = c('Troll', ‘Disappointing’, ‘Poor’, 'Acceptable','Beyond Any Expectations', 'Exceptional'))

# 14) create a table to get an overview of the owl2 factor

table(owl2)