## ----name_pkgs ---------------------------------------------------------------
from_cran <- c("tidyverse", "rmarkdown", "bookdown", "blogdown",
               "fivethirtyeight", "babynames")
from_gh <- c("apreshill/bakeoff")


## ----install_pkgs ------------------------------------------------------------
install.packages("remotes", dependencies = TRUE)
install.packages(from_cran, dependencies = TRUE)
remotes::install_github(from_gh, dependencies = TRUE)


## ----install_hugo ------------------------------------------------------------
blogdown::install_hugo()

## ----check_hugo --------------------------------------------------------------
blogdown::hugo_version() # to check your version
blogdown::update_hugo() # to force an update
