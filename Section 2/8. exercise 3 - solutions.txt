# 1) Create a mat1 matrix with numbers from 12 to 23, divided into 3 rows and 4 columns, and organized by row

mat1 <- matrix(12:23, nrow=3, ncol=4, byrow = TRUE)

# 2) Create a mat2 object by transposing the matrix mat1 with the t() function

mat2 <- t(mat1)

# 3) Find out the number of columns of mat2 with the ncol() function

ncol(mat2)

# 4) Now find out the number of rows of mat2 with the nrow() function

nrow(mat2)

# 5) Create a car1 vector. Inside, put the letters "a" to "n" included

car1 <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "l", "m", "n")

# 6) Organize the car1 object in a mat3 matrix with 4 rows and 3 columns

mat3 <- matrix(car1, nrow = 4, ncol = 3)

# 7) From mat3, select the element located in the third row and in the second column

mat3[3,2]

# 8) Now select the entire second column

mat3[,2]

# 9) Select the rows from the first to the third included

mat3[1:3,]

# 10) Back to mat1 and mat2 matrices. As you remember (print them in the console, if you wish), one has four rows, the other has three. We add the first two rows and the first three columns of the two matrices. You will have to use subsetting as we saw above, otherwise you will get an error

mat1[1:2, 1:3] + mat2[1:2, 1:3]

# 11) Back the mat3 matrix. Give the columns of the matrix the names col1, col2 and col3 using the colnames () function. Remember they are strings, so you need to use brackets! Also, give the names of the rows: row1, row2 etc.

colnames(mat3) <- c("col1", "col2", "col3")

rownames(mat3) <- c("row1", "row2", "row3", 'row4')

# 12) Calculate the total of the rows and columns of matrix mat1

rowSums(mat1)
colSums(mat1)

# 13) Calculate the average of the rows and columns of the matrix mat1

rowMeans(mat1)
colMeans(mat1)

# 14) Calculate the sum and average of the first row of the matrix mat2

sum(mat2[1,])
mean(mat2[1,])
