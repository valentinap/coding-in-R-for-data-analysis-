# 1) First of all, create a numeric vector you will call vn featuring the numbers 2, 5, 9, 14. Remember to use the c() function

vn <- c(2, 5, 9, 14)

# 2) Now create a vector of characters you will call vc featuring the cities of Naples, London and Paris. Remember to use c () function and put strings in quotation marks

vc <- c("Naples”, “London”, “Paris”)

# 3) Now let's create a logical vector vl featuring two FALSE and 3 TRUE

vl <- c(FALSE, FALSE, TRUE, TRUE, TRUE)

# 4) Re print the number vector vn

print(vn)

# 5) Calculate the average of vn using the mean() function

mean(vn)

# 6) Create another numeric vector vn2 featuring the numbers 4, 7, 11, 21

vn2 <- c(4, 7, 11, 21)

# 7) Add the two numeric vectors created and then create a tot_vn vector that contains both the two vectors but without adding them

vn + vn2

tot_vn <- c(vn, vn2)

# 8) Sort vector vn2  again with sort() function

sort(vn2)

# 9) Select the second element from vector vc

vc[2]

# 10) What if you wanted to select the first and third element?

vc[c(1, 3)]

# Now we introduce a new function: the seq() function can be used to create sequences of numbers. We create with R  
# an object seq1 composed of the numbers from one to twenty with this code: seq1 <- seq(1, 20)

# 11) From the seq1 object, extract the elements from the fifth to the ninth

seq1[5:9]

# 12) Starting from our object seq1 replace the second element with the string "new object"

seq1[2] = "new object"

# 13) print to verify if the operation is correct

print(seq1)

# 14) Resume the numerical vector vn. Check its nature with the is.vector() function

is.vector(vn)

# 15) Now let's change the nature of the vector vn with the as.character() function. Save the result in the vnc object and # print the object to verify that each element is enclosed in quotation marks

vnc <- as.character(vn)
print(vnc)
