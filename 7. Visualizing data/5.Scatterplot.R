#*************************************************************#
#                Scatter plot with ggplot2                     #
#*************************************************************#
library(tidyverse)
library(ggplot2)
library(gganimate)
theme_set(theme_bw())

# scatter plot: use to show the relationship between two or more variables

hdi <- as.tibble(read.csv("hdi-cpi.csv"))
print(hdi)

sp_hdi <- ggplot(hdi, aes(CPI.2015, HDI.2015)) +
             geom_point(aes(color = Region), shape = 21,
                        fill = "white", size = 3, stroke = 2) +
             theme_light() +
             labs(x = "Corruption Perception Index, 2015",
                   y = "Human Development Index, 2015",
                   title = "Corruption and Human Development") +
            stat_density2d()
            #stat_smooth(se = FALSE)
print(sp_hdi)