# 1) create the string s1 with content 'I love' and a string s2 with content 
# 'coding with R' and paste the two strings with a space between words
# carry out the operation with the basic functions and with stringr

s1 <- 'I love'
s2 <- 'coding with R'

# base

paste(s1, s2)

library(stringr)

str_c(s1, s2, sep = " ")

# 2) save the result in the s3 object

s3 <- paste(s1, s2)

# 3) how many words does the object have? How many characters?

length(s3)
nchar(s3)

str_count(s3, boundary('word'))

str_length(s3)

# 4) convert the s3 object into single words and overwrite it in an object with the same name

s3 <- unlist(strsplit(s3, split = ' '))

# 5) check the number of characters with the stringr functions

str_length(s3)

str_length(s3) %>% sum()

nchar(s3)

sum(nchar(s3))


# 6) create the following s4 vector

s4 <- "Yesterday I went to the market to buy some food, I was in Paris, the temperature was 
warm and it was sunny. In a shop window I saw a nice scarf but the shop was closed, so I took
the mail address to get some informations later. It was shop@nice_scarf.com . I also took the phone number, it
was 3293456213"

# 7) convert s4 to lowercase and uppercase without overwriting

tolower(s4)
toupper(s4)

str_to_lower(s4)
str_to_upper(s4)

# 8) check if the word 'scarf' is present

grep(pattern = 'scarf', s4)

s4 %>% str_detect('scarf')

str_detect(string = s4, pattern = 'scarf')

# 9) extract the email address

sub("(.*\\s+|^)(\\S+@\\S+).*", "\\2", s4)

str_extract(s4, "\\S*@\\S*")

# 10) extract the phone number

gsub("\\D", '' , s4)

str_extract(s4, "(\\d)+")

# 11) replace 'Paris' with a city of your choice

gsub(pattern = "Paris", "Rome", s4)

# 12) divide s4 into individual terms using the strsplit() function and the most suitable separator 
# and the most suitable separator

strsplit(s4, split = ' ')
