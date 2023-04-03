# we have three basic functions to create a matrix

# the matrix() function, which creates a matrix

matrix()

# the cbind() function, which creates a matrix by concatenating columns 


cbind() # column bind

# the rbind() function creates a matrix by concatenating rows 

rbind() # row bind

# we create a vector x featuring numbers from 1 to 20

x <- 1:20

# we convert vector x into a matrix

matrix(x)

# to organize the matrix, we can better use the parameters of the matrix () function for example 
# declaring that we want to organize the data on two rows using the nrow parameter

matrix(x, nrow = 2)

# to organize the content by row, we can set the byrow parameter

matrix(x, nrow = 2, byrow = TRUE)

# then, we organize the matrix on 4 rows instead of two

matrix(x, nrow = 4, byrow = T)

# we can create a matrix only with a number of rows or columns that are a multiple of the elements # from which we want to obtain a matrix

# if we execute the code below, we will actually get an error

matrix(x, nrow = 7, byrow = T)

# if we try to create a matrix that has 20 rows instead, as many elements of vector x as there are, # and two columns

matrix(x, nrow = 20, ncol = 2)

# in this case the recycling principle applies, i.e. the values are repeated to obtain the necessary # length to complete the requested operation 

# we now create a mat1 object spread over 5 columns

mat1 <- matrix(x, ncol = 5, byrow = T)

# we got a matrix with 4 rows and 5 columns

# at this point, is it possible to change the size of the matrix? We can do it as follows

dim(mat1) <- c(10,2)

t(mat1)

# the result will be again an organized matrix with 10 rows and 2 columns


# now we're going to create a matrix 

# we will use the parameters of the matrix() function

# the first parameter contains the data and is expressed by data =
we combine the content of the matrix with the combine c() function

# the second parameter specifies that we want to organize the content on four rows

# we have already met the third parameter, and it is byrow = which is meant to reorder the content by rows

# the fifth parameter, dimnames, allows us to enter the names of the rows and columns

mat2 <- matrix(data = c(4, 23, 15, 2, 7, 9, 11, 5, 21, 16, 53, 27, 33, 12, 24, 31, 17, 39, 46, 76, 81, 22, 10, 24), nrow = 4, byrow = TRUE,
               dimnames = list(c('r1', 'r2', 'r3', 'r4'),
                               c('col1', 'col2', 'col3', 'col4','col5','col6')))

# we write the name of the object and, in square brackets, the position of the element to be 
# extracted, according to the rule that sees the position in the rows first and then the position in # the columns

mat2[2, 3]

# should we want to extract an entire column, we have to proceed as follows, leaving an empty space 
# to the left of the comma and indicating in the position of the columns the one to extract - in this # case, the first

mat2[ , 1]

# for the extraction from the rows we have to think the same way, putting the number of the row to 
# extract first and leaving the space of the columns empty

mat2[2 , ]

# this way, we can extract from a predefined number of consecutive rows and columns

mat2[1:3, 4:6]

# if, on the other hand, we want to extract elements from non-consecutive rows and columns, we will 
# get help by using the combine function, always indicating the positions

mat2[c(1,4),]

mat2[, c(2, 6)]


# we can perform operations on the matrices. If, for instance, we were to add or multiply a number 
# for a matrix, the number will be added or multiplied for all the elements of the matrix


mat2 + 2

mat2 * 3

# now, let's create two matrices of identical size

mat3 <- matrix(1:9, nrow = 3)
mat4 <- matrix(10:18, nrow = 3)

# we can perform operations between matrices with the same size: each number of the matrix mat3 in  
# the example below will be multiplied by that in the same position of the matrix mat4


mat3 * mat4

mat5 <- matrix(1:4, nrow = 2)

# if we try to perform an operation between matrices of different sizes, then we will get an error

mat3 * mat5

# we can also create a matrix with the cbind() functions by joining vectors into columns, or rbind()    # by joining vectors into rows

# for example, we have three fictitious customers who have made purchases in my shop

cl1 <- c(75, 121)
cl2 <- c(24, 78)
cl3 <- c(43, 75)

# we create a matrix, starting from these three customers

mat_cl <- rbind(cl1, cl2, cl3)

# we can also join a fourth customer with the rbind() function

cl4 <- c(85, 94)

mat_cl <- rbind(mat_cl, cl4)

# at some point, the 4 customers come back to my shop and make a third purchase

acq3 <- c(92, 87, 65, 102)

# can I add the fourth purchase with the cbind() function?

mat_cl <- cbind(mat_cl, acq3)

# as we can see the rows and the fourth column all have names, but I want to put names to the other  # columns, too

colnames(mat_cl) <- c('acq1', 'acq2', 'acq3')

# now we can find out how much each customer spent by calculating the sum per row of the matrix 

rowSums(mat_cl)

# by summing the data of the columns, we can discover how much was spent on each purchasing session

colSums(mat_cl)

# or we could calculate the averages on rows and columns

rowMeans()

colMeans()







