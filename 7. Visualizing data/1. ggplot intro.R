#*************************************************************#
#                    Grammar of graphics                      #
#*************************************************************#

library(tidyverse)
library(ggplot2)

# hdi corruption index data set
hdi <- as_tibble(read.csv("hdi-cpi.csv"))
#view(hdi)

# ggplot layers
sc <- ggplot(hdi)
#print(sc)
# aesthetics
sc <- ggplot(hdi, aes(CPI.2015, HDI.2015))
#print(sc)

# create a scatter plot 
print(sc + geom_point())

# facets: break plot into discrete plot
print(sc + geom_point() + facet_grid(Region~.)) + stat_smooth()

# facets: break plot into discrete plot and add a smooth layer
print(sc + geom_point(aes(color = Region), size = 3) + facet_grid(Region~.) + stat_smooth())

# countries with low corruption index
print(sc + geom_point(aes(color = Region), size = 3) + facet_grid(Region~.) + stat_smooth()+ coord_cartesian(xlim = c(0.75, 1)))


# countries with high corruption index
print(sc + geom_point(aes(color = Region), size = 3) + facet_grid(Region~.) + stat_smooth()+ coord_cartesian(xlim = c(0.90, 1)))

# adding themes
# install.packages(ggthemes)
print(sc + geom_point(aes(color = Region), size = 3) + stat_smooth()+ theme_minimal())
