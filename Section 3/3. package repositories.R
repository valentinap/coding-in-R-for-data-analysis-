# this is the standard procedure for installing packages that are published on CRAN

install.packages('name_of_the_library')
library(name_of_the_library)

# other repositories

install_github() #  from GitHub

install_bioc() # from Bioconductor

install_bitbucket() # from Bitbucket

install_git() # from git

install_local() # if the package was downloaded locally

install_url() # from a web URL

install_version() # to install a specific version of a package always from CRAN


# after loading the devtools library we can install one package from another repository

install.packages('devtools')
library(devtools)

# and then install according to each package's own instructions

install_github('twitter/AnomalyDetection')
