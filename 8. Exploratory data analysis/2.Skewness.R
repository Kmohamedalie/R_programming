#****************************************************************************#
#                                  Skewness                                  #
#****************************************************************************#

library(tidyverse)
library(ggplot2)

real_estate <- as_tibble(mtcars)
View(mtcars)

skew_plot <- ggplot(real_estate, aes(x = mpg)) + 
             geom_histogram(binwidth = 1, color = "white", fill = "skyblue") +
             theme_light() + labs(title = "NO Skew")

plot(skew_plot)