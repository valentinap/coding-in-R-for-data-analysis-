# if

x <- 5

if ( x < 0) {
        print("your number is negative")
}


# if + else

y <- 1

if(y > 5){        print("y is bigger than 5")}else{        print("y is smaller than 5")}


# while

while(1 + 1 == 2)
        print('okay')

z <- 1

while(z < 5) {
        print('add another element')
        z <- z + 1
        if(z == 5)
                print('stop')
}

# break

x <- 1

while(x <= 10) {
        print(x*2)
        if ((x*2) > 20) {
                break
        }
        x <- x +1
}

# for

vector <- c(14, 23, 35, 41, 59, 67, 74, 82)

for(i in vector) {
        print(i)
}

for(v in 1:length(vector)){
        print(vector[v])
}


# for nei dataframe

x <- rnorm(10)
y <- rnorm(10)
z <- rnorm(10)
h <- rnorm(10)

df <- as.data.frame(cbind(x, y, z, h))

for(i in 1:length(df)) {
        print(df[[i]])
}

for(i in seq_along(df)) {
        print(df[[i]])
}


