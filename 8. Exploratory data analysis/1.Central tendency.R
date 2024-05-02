#**************************************************************#
#                      Central tendency                        #
#**************************************************************#

library(tidyverse)
library(ggplot2)

mtcars <- as_tibble(mtcars)
View(mtcars)

# descriptive statistics

# measures of central tendency
print(paste0("min:  ", min(mtcars$mpg))) # min
print(paste0("max:  ", max(mtcars$mpg))) # max
#print(paste0("mode:  ", table(mtcars$mpg))) # mode
print(paste0("median:  ", median(mtcars$mpg))) # median
print(paste0("average:  ", mean(mtcars$mpg))) # mean

# mode
x <- table(mtcars$mpg)
print(names(x)[which(x==max(x))])

# summary function
print(summary(mtcars))

# apply functions
print(lapply(mtcars, mean))
print(sapply(mtcars, mean))