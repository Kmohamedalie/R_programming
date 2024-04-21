#****************************************************************************#
#                  Indexing and Slicing dataframe in R                       #
#****************************************************************************#

library(tidyverse)

my.wars <- as.data.frame(starwars)
my.wars <- my.wars[,-(11:13)]
glimpse(my.wars)


# sub-setting
my.wars[3, 9]
my.wars[3, "homeworld"]

my.wars[5, ]
head(my.wars[ , 1])