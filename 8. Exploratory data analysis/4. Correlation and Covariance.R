#****************************************************************************#
#                         Covariance & Correlation                           #
#****************************************************************************#

library(tidyverse)
library(ggplot2)

real_estate <- as_tibble(mtcars)
View(mtcars)

# single value covariance and correlatio value
print(paste0("Covariance : ", round(cov(mtcars$mpg,mtcars$hp),2)))
print(paste0("Correlation : ", round(cor(mtcars$mpg,mtcars$hp),2)))


# cor.test for more statistical test
print(cor.test(mtcars$mpg,mtcars$hp))


# plot the relationship between the points
sp_mtcars <- ggplot(real_estate, aes(mpg, hp)) +
  geom_point(aes(color = cyl), shape = 21,
             fill = "white", size = 3, stroke = 2) +
  theme_light() +
  labs(x = "mileage per gallon",
       y = "horse power",
       title = "horse power vs mileage/gallon") +
  stat_smooth(se = FALSE)   #stat_density2d()
print(sp_mtcars)

# plot a heat map 
print(heatmap(as.matrix(cor(mtcars))))

