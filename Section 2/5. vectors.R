# creating vectors

# c()

numerical_vector <- c(1, 4, 6, 7, 9, 12, 15, 17, 21)

character_vector <- c('Londra', 'Parigi', 'Roma', 'Madrid', 'Atene')

logical_vector <- c(TRUE, FALSE, TRUE, FALSE, FALSE)

logical_vector_2 <- c(T, F, T, F, F)

assign('vector_name', c(2, 4, 7, 12, 15, 19))


# seq()

vet1 <- seq(from = 1, to = 20, by = 2)

1:20

seq(1, 20)


# operations on vectors

vet2 <- c(1, 3, 6, 8, 9, 10)

sum(vet2)

mean(vet2)

median(vet2)

vet2/2

vet2*3

length(vet2)


vet3 <- c(1, 2, 3)
vet4 <- c(4, 5, 6)

sum <- vet3 + vet4


multiplication <- vet3 * vet4

subtraction <- vet3 - vet4

division <- vet3/vet4

# operations between multiples

x <- c(1, 2, 3, 4)
y <- c(5, 6)

x + y

# operations between non multiples

z <- c(10, 9, 7)

h <- c(4, 1)

z + h

x <- c(1, 5, 72, 8, 15, 32, 2, 4, 17)

# sort a vector

sort(x)

sort(x, decreasing = F)

# subsetting 

x <- c('a', 'b', 'c', 'd')


x[1]

x[-3]

y <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'l', 'm', 'n', 'o')

y[1]

y[c(1, 13)]

y[3:7]

# replace an element

y[1] <- 'new_element'

y

# give labels to a vector element

subjects <- c(28, 27, 24, 22, 25)

names(subjects) <- c('marketing', 'statistics', 'analysis', 'logics', 'text mining')

class(subjects)

class(x)

mode(y)

typeof(y)

# convert a vector into another class

x <- 1:10

as.character(x)

is.character(x)

is.numeric(x)

y <- as.character(x)

# coerce a vector into another class

x <- c(3.5, "test") # character

y <- c(TRUE, 2) # numeric

z <- c("test", TRUE) # character



