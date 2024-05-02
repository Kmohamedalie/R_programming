#****************************************************************************#
#                               Variability                                  #
#****************************************************************************#

library(tidyverse)
library(ggplot2)

real_estate <- as_tibble(mtcars)
View(mtcars)

print(paste0("standard deviation : ", round(sd(mtcars$mpg),2)))
print(paste0("var : ", round(var(mtcars$mpg),2)))