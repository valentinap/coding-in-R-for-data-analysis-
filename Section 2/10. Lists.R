# we create a vector
vet1 <- 1:10

# a matrix
mat1 <- matrix(20:34, nrow=5)

# and finally a list
list1 <- list(vet1, mat1)

# print the list
list1

# we can create a list directly inside the function list()



list2 <- list(
        1:5,
        c(TRUE, FALSE, FALSE, TRUE),
        c("first", "second", "third"),
        sum,
        matrix(1:9, ncol=3, nrow=3)
)

# print the second list
list2

# in this way I can extract the first element from the list 


list2[[1]]

# in this way I first extract the element of the list, then I extract a precise element of the vector # featured inside the list

list2[[1]][2]

# we repeat for better understanding on the third vector, which consists of characters

list2[[3]][1]

# if we have to extract from a matrix instead we first extract the matrix from the list and then we 
# subset according to the rules of extraction from the matrices:

list2[[5]][1:2, ]

# we assign names to the objects in our list

names(list2) <- c("item1", "item2", "item3", "item4", "item5")

# we can access the elements from the element name itself

list2$item2

# we can also add objects to our list with the append() function:

list3 <- append(list2, c(3, 6, 7.5))

# we print the new list

print(list3)

# to append a new vector on the same list

list3 <- append(list3, list(1:7), after = 0)


# another way to add an item to our list

list3$new_item <- iris$Sepal.Length

# the unlist() function allows us to delist the elements of a list

unlist(list3$new_item)

# we create a list with two sublists of web addresses

list4 <- list(
        c("www.test1.com", "www.test2.com", "www.test3.com", "www.test4.com"),
        c("www.google.com", "www.facebook.com", "www.linkedin.com"))

# let's print it out

print(list4)

unlist(list4)

unlist(list4[[1]])
