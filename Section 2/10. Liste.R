# creiamo un vettore
vet1 <- 1:10

# creiamo una matrice
mat1 <- matrix(20:34, nrow=5)

# creiamo una lista
list1 <- list(vet1, mat1)

# stampiamo la lista
list1

list2 <- list(
        1:5,
        c(TRUE, FALSE, FALSE, TRUE),
        c("primo", "secondo", "terzo"),
        sum,
        matrix(1:9, ncol=3, nrow=3)
)

# stampiamo adesso la lista
list2

# estraiamo dei sottoelementi applicando le regole di subsetting differenti a seconda
# che si tratti di un vettore, di una matrice, di un array


list2[[1]]

list2[[1]][2]

list2[[5]][1:2, ]


