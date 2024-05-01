#*************************************************************#
#           Box and whisker plot with ggplot2                 #
#*************************************************************#
library(tidyverse)
library(ggthemes)
library(wesanderson)
library(scales)

emp <- read.csv("employeeData.csv", stringsAsFactors = F, header = TRUE)
emp <- as_tibble(emp)
emp$gender <- as.factor(emp$gender)
emp$title <- factor(emp$title, levels = c("Senior Engineer", "Engineer", "Assistant Engineer", "Senior Staff", "Technique Leader", "Staff"), ordered = TRUE)

#Select employees with 12 month salary higher than 45000
emp <- filter(emp, salary > 45000)


my.box <- ggplot(emp, aes(x = title, y = salary)) + 
  geom_boxplot(outlier.color = "orangered1", outlier.shape = 3) + # show outliers
  geom_jitter(width=0.2, aes(color=gender)) + # add some distribution point
  labs(title = "Salary distribution", subtitle = "based on position and gender") + 
  theme_economist_white() + 
  coord_flip() +
  scale_y_continuous() + 
  scale_color_manual(values=wes_palette(name = "Darjeeling1", n = 2)) +
  #position the legend and align the text elements
  theme(legend.position = "right", axis.text.x = element_text(angle = 90, hjust = 1))
print(my.box)