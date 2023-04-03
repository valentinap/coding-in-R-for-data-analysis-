# functions

read.table(file, header = FALSE, sep = "", quote = "\"'",
           dec = ".", numerals = c("allow.loss", "warn.loss", "no.loss"),
           row.names, col.names, as.is = !stringsAsFactors,
           na.strings = "NA", colClasses = NA, nrows = -1,
           skip = 0, check.names = TRUE, fill = !blank.lines.skip,
           strip.white = FALSE, blank.lines.skip = TRUE,
           comment.char = "#",
           allowEscapes = FALSE, flush = FALSE,
           stringsAsFactors = default.stringsAsFactors(),
           fileEncoding = "", encoding = "unknown", text, skipNul = FALSE)


args(read.table)

help(read.table)

read.delim


# write my own function my_function <- function(parameter1, parameter2){        instruction}fun_sum <- function(x, y){        x + y}fun_sum(8, 10)fun_sum(6, 5)fun1 <- function(x){        if(x < 10) {                print("the number is less than 10")                        }else{print("the number is more than 10")}}fun1(5)fun1(20)


