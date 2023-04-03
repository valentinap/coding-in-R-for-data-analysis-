# 1) create a vector v1 containing the numbers 5, 7, 9
# create a vector v2 containing 15, 1, 17
# check if v1 is greater than v2

v1 <- c(5, 7, 9)
v2 <- c(15, 1, 17)

v1 > v2



# 2) create a loop with if and else that tells if a number is positive or negative and test it

x <- -2

if(x > 0) {
        print('your number is positive')
}else{
      print('your number is negativeo')  
}

# 3) create a function that multiplies two numbers and apply it to two numbers of your choice

mul1 <- function(x, y){
        x*y
}

mul1(7, 5)

# 4) create a function that multiplies a number by 5 and apply it to number 22

mul2 <- function(x) {
        x*5
}

mul2(22)


# 5) create a loop using for that prints the words of the following vector
# and counts the characters of each word

words <- c('Hi', 'love', 'coding', 'with', 'R')

for(w in words) {
        print(w)
        print(nchar(w))
}


# 6) create an object x equal to 1 with the help of while create a loop 
# that at each step add 1 to x and stop when the value of x reaches 10

x <- 1

while(x <= 10){
        print(x)
        x <- x +1
}


# 7) create a loops using else, if, else if which will advise me 
# whether to leave the house depending on the temperature 

temp <- 38

if( temp > 36 & temp < 40) {
        print('It's too hot to go out')
}else if(temp > 18 & temp < 28){
        print('Outside is good')
}else if(temp < 13) {
        print('It is too cold outside')
}else{
      print('Thermometer is broken')  
}


# 8) create a loop with if and else that tells me whether an object is even or odd

x <- 3

if(x%%2 == 0) {
        print('even number')
}else{
        print('odd number')
}


# 9) create a loop with if and else that tells me if an object x is a vector  

x <- matrix()

if(is.vector(x)) {
        print("is a vector")
}else{
     print("is not a vector")   
}


