#*************************************************************#
#              Introduction to Linear Regression              #
#*************************************************************#

# simple linear regression: y = b0 + b1x1 + e
# y  = dependent variable
# b0 = constant
# b1 = coefficient of x1
# e  = error


# difference between correlation and regression 
# correlation              vs       Regression
#----------------------------------------------------------
# Relationship             | one variable affects the other
# Movement together        | cause and effect
# p(x,y) = p(y,x)          | one way
# single point             | best fitting line


# first regression example
library(psych)
library(ggplot2)
library(gganimate)
library(tidyverse)
theme_set(theme_bw())

college <- as_tibble(read.csv("regression_example.csv"))
print(head(college)) # first 6 data set
print(summary(college)) # summary statistics
print(describe(college)) # summary statistics


# scatter plot: use to show the relationship between two or more variables
sp_college <- ggplot(college, aes(SAT, GPA)) +
  geom_point(shape = 21,fill = "white", size = 3, stroke = 2) +
  theme_light() +
  labs(x = "SAT scores",
       y = "GPA upon graduation",
       title = "SAT and GPA") + 
  geom_smooth(se = FALSE)
print(sp_college)


# the linear model
linmod <- lm(data=college, GPA ~ SAT)
print(summary(linmod))