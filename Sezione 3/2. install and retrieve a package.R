# install a package

install.packages("package_name")

# install other packages that we need linked to the main one 

install.packages("package_name", dependencies = TRUE)

# install more than one package 

install.packages(c("package1", "package2", "package3"))

# recall a package

library(curl)

require(tm)

# view the installed packages

View(installed.packages())

# view the packages available on CRAN

View(available.packages())

# update the packages installed

update.packages(ask = FALSE)

# remove a package

remove.packages("package_name")



