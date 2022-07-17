# we create a vector that contains a non-sortable qualitative variable

days <- c(‘mon’, ‘tue’, ‘wed’, ‘thu’)

fac1 <- factor(days)

# we can order them with the sort() function

sort(fac1)

# we create a second vector featuring a sortable qualitative variable

stud_levels <- c("bachelor", "master", "phd", "bachelor", "phd", "bachelor",
                 "master", "phd", "phd", "master")

# we convert to simple factor

fac2 <- factor(stud_levels)

# we carry out a second conversion using in addition the order parameters
# to indicate that the factor has an order and levels to put the factor levels in order

fac3 <- factor(stud_levels, order = TRUE, levels = c('bachelor', 'master', 'phd'))


fac3

fac3[1] > fac3[3]

table(fac2)

summary(fac2)                                              

