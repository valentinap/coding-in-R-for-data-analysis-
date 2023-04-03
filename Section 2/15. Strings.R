# here’s a first string text

'Hello'

# we create an object featuring our string

str1 <- 'Hello'

str1

print(str1)

# we can verify the information related to our string

typeof(str1)

class(str1)

is.character(str1)

# its length

length(str1)

# the number of characters

nchar(str1)

# we create a second string

str2 <- 'world!'

paste(str1, str2)

paste0(str1, str2)

is.character(str1)

name <- "Vale"
language <- "R"
cat("Hello,", name, "how's going with", language, '?')

# as can be seen from this last command, for now we handle words with apostrophes by using double quotes to delimit the string


# convert a numeric object to string in various ways

# the toString() function converts the object into a single string

str3 <- toString(1:10)

# as.character() converts each element of the object into strings

str4 <- as.character(11:20)

# if we then save the result in two objects and we then verify their length we can see the difference between the two conversion functions

str3 <- toString(1:10)
str4 <- as.character(11:20)

length(str3)

length(str4)

# the basic package's strsplit() function splits a sentence into character vectors, as shown below, 
# on the basis of spaces, as clarified by the split parameter

strsplit(str3, split = ',')

str5 <- "today it’s hot but tomorrow it could rain "

str6 <- strsplit(str5, split = ' ')

class(str6)

length(str6)

# the str6 object is made up of characters but it is a list. We then have to convert it back to characters, this time getting all the separate words, with the unlist() function

str7 <- unlist(str6)

# we previously managed the apostrophe with the use of double quotes to avoid errors

“I can’t wait to go to the beach”

# on the other hand we can manage the quotes using the escape

“Today is hot but \”tomorrow\” it “could rain”

cat("Tabulation\ta\ta\n and a new line")


# the following functions: grep(), strsplit(), regexpr(), gregexpr() and sub() are developed to 
# support regular expressions. They allow us to extract elements that have common characteristics

# grep()

str8 <- c("Firenze", "Roma", "Dubai", 
                   “apples”, "peaches", “clams”, “mussels, 
                   "01/02/1971", 
                   “cat”, “dog”, “mouse”, 
                   "Genova", "Rimini", "Riccione", “Toad”)


grep(pattern = 'F', str8)

# the result will be the position of the element that features the pattern I'm looking for 

grep(pattern = 'c', str8)


# we look for the elements that feature r lowercase and E uppercase

grep(pattern = "r", str8, ignore.case=TRUE)

# we can also search for an entire string

grep(pattern = "Firenze", str8)

grep(pattern = "Roma", str8)

# or through regular expressions
# for instance all words starting with 'm'

grep(pattern = "^m", str8)

# by adding the parameter value = TRUE we view the element, not its position

grep(pattern = "^m", str8, value = TRUE)


# grepl()

# it differs in that it returns us a logical vector

grepl(pattern = "F", str8)

# gsub()

# the gsub() function allows you to replace one element with another

gsub(pattern = "a", "b", str8)

gsub(pattern = "Roma", "Milano", str8)

str8

# as always, in order to save the result of an operation we must remember to update the old object or save a new one

str9 <- gsub(pattern = 'Roma', 'Milano', str8)


# the following two functions return an output in a different format

# regexpr()

regexpr(pattern = "F", str7)

# gregexpr()

gregexpr(pattern = "F", str7)

# strsplit()

# the strsplit() function allows us to divide an element into several parts

str10 <- "abc.def"

strsplit(str10, split = '\\.')


str11 <- "test1;test2"

strsplit(str11, split = '\\;')

# match()

# match() compares two strings and tells us which elements match 

str10 <- c("A", "B", "C", "D")
str11 <- c("A", "b", "c", "d")

# the function tells me which elements in the two character vectors match

match(x = str10, table = str11)


# substr()

substr("abcdefg", 2, 6)


# gsub()

mail <- c("my mail is test@test.com", "my other test email ist test2@test.co.uk")

# through the combination of the functions for strings and the regular expressions we can for example extract emails from texts

sub("(.*\\s+|^)(\\S+@\\S+).*", "\\2", mail)

unlist(regmatches(mail, gregexpr("\\S+@\\S+", mail)))

num1 <- c("Alex visited 5 cities and 8 beaches this year", "Alex spent 10 days of his summer holidays visiting Italy")

# thanks to regular functions and expressions I can for example delete numbers from a text

gsub("\\d", "", num1)


gsub("[[:digit:]]", "", num1)

# or extract them

gsub("\\D", "", num1)

gsub("[[:punct:]]", "", str14)

ts <- "test    with    some    more    spaces. But also some . and ,,, "

ts

gsub("[[:punct:]]", "", ts)

gsub("[ \t]{2,}", " ", ts)


# as an alternative to the basic functions, we can also use the stringr package

install.packages('stringr')
library(stringr)


# it returns the number of characters

str_length(str)

# it returns the number of words

str_count(str, " ")

# it merges two strings

str_c(str1, str2)

str_c("a", "b", "c", sep = ',')

# converts to lowercase

str_to_lower(str)

# converts to uppercase

str_to_upper(str)

# extracts the first and all patterns respectively

str_extract(str, 'pattern')
str_estract_all(str, 'all patterns')

# verify the presence of a pattern

str_detect(str, 'pattern')

str_match(str, "pattern")

# it divides a string

str_split(str, " ")


