#*************************************************************#
#                Scatter plot with ggplot2                     #
#*************************************************************#
library(tidyverse)
library(ggplot2)
library(gganimate)
theme_set(theme_bw())

# scatter plot: use to show the relationship between two or more variables

real_estate <- as.tibble(read.csv("real_estate.csv"))
print(real_estate)

real_estate <- ggplot(real_estate, aes(Price, Area..ft..)) +
  geom_point(aes(color = Type.of.property), shape = 21,
             fill = "white", size = 3, stroke = 2) +
  theme_light() +
  labs(x = "Area..ft..",
       y = "Price",
       title = "California real estate [Area..ft.. vs Price]") 
  # + stat_density2d()
  # + stat_smooth(se = FALSE) + scale_y_continuous()

print(real_estate)